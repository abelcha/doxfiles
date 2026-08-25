#!/usr/bin/env bun
import { existsSync, lstatSync, readlinkSync, realpathSync } from "fs";
import { readdir } from "fs/promises";
import type { Stats } from "node:fs";
import path, { join } from "path";
import { parseArgs } from "util";
import { dlopen, FFIType, ptr } from "bun:ffi";

const ANSI_RESET = "\x1b[0m";
const DISPLAY_COLORS = process.stdout.isTTY;
const APFS_UTIL =
    "/System/Library/Filesystems/apfs.fs/Contents/Resources/apfs.util";

// getattrlist is the only thing node:fs can't give us (ATTR_VOL_SPACEUSED).
// Physical file size comes from Stats.blocks, which is already st_blocks.
const libc = dlopen("libSystem.B.dylib", {
    getattrlist: {
        args: [FFIType.ptr, FFIType.ptr, FFIType.ptr, FFIType.usize, FFIType.u32],
        returns: FFIType.i32,
    },
    getxattr: {
        args: [FFIType.ptr, FFIType.ptr, FFIType.ptr, FFIType.usize, FFIType.u32, FFIType.i32],
        returns: FFIType.isize,
    },
    strerror: { args: [FFIType.i32], returns: FFIType.cstring },
    __error: { args: [], returns: FFIType.ptr },
});

const encoder = new TextEncoder();

// Files small enough that their AFSC-compressed payload fits inline in the inode
// record have st_blocks == 0, so blocks*512 reports nothing. The com.apple.decmpfs
// xattr is where the bytes actually live. XATTR_SHOWCOMPRESSION (0x20) is required
// or the xattr is hidden on compressed files.
const XATTR_SHOWCOMPRESSION = 0x20;
const DECMPFS_NAME = encoder.encode("com.apple.decmpfs\0");
const RSRC_NAME = encoder.encode("com.apple.ResourceFork\0");

function getXattrSize(filePath: string, name: Uint8Array): number {
    const size = Number(
        libc.symbols.getxattr(
            ptr(encoder.encode(filePath + "\0")),
            ptr(name),
            null,
            0,
            0,
            XATTR_SHOWCOMPRESSION
        )
    );
    return size > 0 ? size : 0;
}

const getDecmpfsSize = (filePath: string) => getXattrSize(filePath, DECMPFS_NAME);

/**
 * Actual compressed byte count for an AFSC file, or 0 if it isn't compressed.
 * Small payloads live inline in the decmpfs xattr; larger ones spill into the
 * resource fork with only a header left in decmpfs. Deliberately not block-
 * rounded — a 566-byte payload in a 4096-byte block is a 27% ratio, not 198%.
 */
function getCompressedBytes(filePath: string): number {
    const decmpfs = getDecmpfsSize(filePath);
    if (decmpfs === 0) return 0;
    return decmpfs + getXattrSize(filePath, RSRC_NAME);
}

function getErrno(): number {
    return new Int32Array(Bun.toArrayBuffer(libc.symbols.__error(), 0, 4))[0];
}

function getVolumeSize(volumePath: string): number {
    const pathPtr = encoder.encode(volumePath + "\0");
    const attrList = new Uint32Array([
        5, // bitmapcount + reserved
        0, // commonattr
        0x00800000, // volattr: ATTR_VOL_SPACEUSED
        0, // dirattr
        0, // fileattr
        0, // forkattr
    ]);
    const out = new Uint8Array(32);

    if (
        libc.symbols.getattrlist(ptr(pathPtr), ptr(attrList), ptr(out), out.length, 0) !== 0
    ) {
        const errno = getErrno();
        console.error(
            `getattrlist failed: ${libc.symbols.strerror(errno)} (errno: ${errno})`
        );
        return -1;
    }

    const view = new DataView(out.buffer);
    const length = view.getUint32(0, true);
    // off_t is 8-byte aligned, so there are 4 bytes of padding after the length.
    if (length >= 16) return Number(view.getBigUint64(8, true));
    if (length >= 12) return Number(view.getBigUint64(4, true));
    return 0;
}

// apfs.util -S reads APFS's maintained directory statistics, so it is O(1)
// regardless of tree size, and counts cloned blocks once (unlike du).
// It only accepts one path per invocation, hence the spawn cap.
const MAX_SPAWNS = 12;
let activeSpawns = 0;
const spawnQueue: (() => void)[] = [];

async function withSpawnSlot<T>(fn: () => Promise<T>): Promise<T> {
    if (activeSpawns >= MAX_SPAWNS) {
        await new Promise<void>((resolve) => spawnQueue.push(resolve));
    }
    activeSpawns++;
    try {
        return await fn();
    } finally {
        activeSpawns--;
        spawnQueue.shift()?.();
    }
}

async function getApfsDirSize(dirPath: string, verbose?: VerboseCtx): Promise<number> {
    return withSpawnSlot(async () => {
        try {
            const out = await Bun.$`${APFS_UTIL} -S ${dirPath}`.quiet().text();
            const size = Number(out.match(/physical size: (\d+)/)?.[1] ?? -1);
            if (verbose && size === -1) {
                verbose.note(dirPath, `apfs.util output unparsed: ${out.trim().slice(0, 120)}`);
            }
            return size;
        } catch (err: any) {
            verbose?.note(dirPath, `apfs.util failed: ${err?.message ?? err}`);
            return -1;
        }
    });
}

interface VerboseCtx {
    notes: Map<string, string[]>;
    note(path: string, msg: string): void;
}

function makeVerboseCtx(): VerboseCtx {
    const notes = new Map<string, string[]>();
    return {
        notes,
        note(p, msg) {
            const arr = notes.get(p) ?? [];
            arr.push(msg);
            notes.set(p, arr);
        },
    };
}

const FG = {
    black: 30,
    red: 31,
    green: 32,
    yellow: 33,
    blue: 34,
    magenta: 35,
    cyan: 36,
    white: 37,
    default: 39,
    grey: 90,
} as const;

const BG = { yellow: 43 } as const;

interface StyleSpec {
    fg?: number;
    bg?: number;
    bold?: boolean;
    underline?: boolean;
    dim?: boolean;
}

function makeStyle(spec?: StyleSpec): string {
    if (!spec) return "";
    const codes: number[] = [];
    if (spec.bold) codes.push(1);
    if (spec.dim) codes.push(2);
    if (spec.underline) codes.push(4);
    if (spec.fg !== undefined) codes.push(spec.fg);
    if (spec.bg !== undefined) codes.push(spec.bg);
    return codes.length ? `\x1b[${codes.join(";")}m` : "";
}

const themeStyles = {
    fileTypes: {
        image: makeStyle({ fg: FG.magenta }),
        video: makeStyle({ fg: FG.magenta, bold: true }),
        music: makeStyle({ fg: FG.cyan }),
        lossless: makeStyle({ fg: FG.cyan, bold: true }),
        crypto: makeStyle({ fg: FG.green, bold: true }),
        document: makeStyle({ fg: FG.green }),
        compressed: makeStyle({ fg: FG.red }),
        temp: makeStyle({ fg: FG.white }),
        compiled: makeStyle({ fg: FG.yellow }),
        build: makeStyle({ fg: FG.yellow, bold: true, underline: true }),
        source: makeStyle({ fg: FG.yellow, bold: true }),
    },
    normal: makeStyle(),
    directory: makeStyle({ fg: FG.blue, bold: true }),
    symlink: makeStyle({ fg: FG.cyan }),
    pipe: makeStyle({ fg: FG.yellow }),
    blockDevice: makeStyle({ fg: FG.yellow, bold: true }),
    charDevice: makeStyle({ fg: FG.yellow, bold: true }),
    socket: makeStyle({ fg: FG.red, bold: true }),
    special: makeStyle({ fg: FG.yellow }),
    executable: makeStyle({ fg: FG.green, bold: true }),
    mountPoint: makeStyle({ fg: FG.cyan, bold: true, underline: true }),
    controlChar: makeStyle({ fg: FG.red }),
    brokenSymlink: makeStyle({ fg: FG.red, underline: true }),
    symlinkPath: makeStyle({ fg: FG.cyan }),
    linkArrow: makeStyle({ fg: FG.grey }),
    linkArrowBroken: makeStyle({ fg: FG.red }),
    basepath: makeStyle({ fg: FG.cyan }),
    dim: makeStyle({ fg: FG.grey, dim: true }),
    sizeGB: makeStyle({ fg: FG.red }),
    sizeMB: makeStyle({ fg: FG.yellow }),
    sizeKB: makeStyle({ fg: FG.green, bold: true }),
    sizeBytes: makeStyle({ fg: FG.green }),
};

type FileType =
    | "image"
    | "video"
    | "music"
    | "lossless"
    | "crypto"
    | "document"
    | "compressed"
    | "temp"
    | "compiled"
    | "build"
    | "source";

function mapValues(type: FileType, keys: readonly string[]) {
    const result: Record<string, FileType> = {};
    for (const key of keys) result[key] = type;
    return result;
}

const FILENAME_TYPES: Record<string, FileType> = {
    ...mapValues(
        "build",
        "Brewfile,bsconfig.json,BUILD,BUILD.bazel,build.gradle,build.sbt,build.xml,Cargo.toml,CMakeLists.txt,composer.json,configure,Containerfile,Dockerfile,Earthfile,flake.nix,Gemfile,GNUmakefile,Gruntfile.coffee,Gruntfile.js,jsconfig.json,Justfile,justfile,Makefile,makefile,meson.build,mix.exs,package.json,Pipfile,PKGBUILD,Podfile,pom.xml,Procfile,pyproject.toml,Rakefile,RoboFile.php,SConstruct,tsconfig.json,Vagrantfile,webpack.config.cjs,webpack.config.js,WORKSPACE".split(
            ","
        )
    ),
    ...mapValues(
        "crypto",
        "id_dsa,id_ecdsa,id_ecdsa_sk,id_ed25519,id_ed25519_sk,id_rsa".split(",")
    ),
};

const EXTENSION_TYPES: Record<string, FileType> = {
    ...mapValues("build", "ninja".split(",")),
    ...mapValues(
        "image",
        "arw,avif,bmp,cbr,cbz,cr2,dvi,eps,fodg,gif,heic,heif,ico,j2c,j2k,jfi,jfif,jif,jp2,jpe,jpeg,jpf,jpg,jpx,jxl,kra,krz,nef,odg,orf,pbm,pgm,png,pnm,ppm,ps,psd,pxm,raw,qoi,svg,tif,tiff,webp,xcf,xpm".split(
            ","
        )
    ),
    ...mapValues(
        "video",
        "avi,flv,h264,heics,m2ts,m2v,m4v,mkv,mov,mp4,mpeg,mpg,ogm,ogv,video,vob,webm,wmv".split(
            ","
        )
    ),
    ...mapValues("music", "aac,m4a,mka,mp2,mp3,ogg,opus,wma".split(",")),
    ...mapValues("lossless", "aif,aifc,aiff,alac,ape,flac,pcm,wav,wv".split(",")),
    ...mapValues(
        "crypto",
        "age,asc,cer,crt,csr,gpg,kbx,md5,p12,pem,pfx,pgp,pub,sha1,sha224,sha256,sha384,sha512,sig,signature".split(
            ","
        )
    ),
    ...mapValues(
        "document",
        "djvu,doc,docx,eml,fodp,fods,fodt,fotd,gdoc,key,keynote,numbers,odp,ods,odt,pages,pdf,ppt,pptx,rtf,xls,xlsm,xlsx".split(
            ","
        )
    ),
    ...mapValues(
        "compressed",
        "7z,ar,arj,br,bz,bz2,bz3,cpio,deb,dmg,gz,iso,lz,lz4,lzh,lzma,lzo,phar,qcow,qcow2,rar,rpm,tar,taz,tbz,tbz2,tc,tgz,tlz,txz,tz,xz,vdi,vhd,vhdx,vmdk,z,zip,zst".split(
            ","
        )
    ),
    ...mapValues(
        "temp",
        "bak,bk,bkp,crdownload,download,fcbak,fcstd1,fdmdownload,part,swn,swo,swp,tmp".split(
            ","
        )
    ),
    ...mapValues(
        "compiled",
        "a,bundle,class,cma,cmi,cmo,cmx,dll,dylib,elc,elf,ko,lib,o,obj,pyc,pyd,pyo,so,zwc".split(
            ","
        )
    ),
    ...mapValues(
        "source",
        "applescript,as,asa,awk,c,c++,c++m,cabal,cc,ccm,clj,cp,cpp,cppm,cr,cs,css,csx,cu,cxx,cxxm,cypher,d,dart,di,dpr,el,elm,erl,ex,exs,f,f90,fcmacro,fcscript,fnl,for,fs,fsh,fsi,fsx,gd,go,gradle,groovy,gvy,h,h++,hh,hpp,hc,hs,htc,hxx,inc,inl,ino,ipynb,ixx,java,jl,js,jsx,kt,kts,kusto,less,lhs,lisp,ltx,lua,m,malloy,matlab,ml,mli,mn,nb,p,pas,php,pl,pm,pod,pp,prql,ps1,psd1,psm1,purs,py,r,rb,rs,rq,sass,scala,scm,scad,scss,sld,sql,ss,swift,tcl,tex,ts,v,vb,vsh,zig".split(
            ","
        )
    ),
};

const TEMP_FILENAME_PREFIX = "#";

function getFilenameExtension(name: string) {
    const dotIndex = name.lastIndexOf(".");
    if (dotIndex <= 0 || dotIndex === name.length - 1) return undefined;
    return name.slice(dotIndex + 1).toLowerCase();
}

function getFileType(filename: string): FileType | undefined {
    if (filename.toLowerCase().startsWith("readme")) return "build";

    const specific = FILENAME_TYPES[filename];
    if (specific) return specific;

    const ext = getFilenameExtension(filename);
    if (ext && EXTENSION_TYPES[ext]) return EXTENSION_TYPES[ext];

    if (
        filename.endsWith("~") ||
        (filename.startsWith(TEMP_FILENAME_PREFIX) &&
            filename.endsWith(TEMP_FILENAME_PREFIX))
    ) {
        return "temp";
    }

    return undefined;
}

function paint(style: string, text: string): string {
    if (!style || !DISPLAY_COLORS) return text;
    return `${style}${text}${ANSI_RESET}`;
}

function isExecutable(stat: Stats) {
    return stat.isFile() && (stat.mode & 0o111) !== 0;
}

function styleForStat(filename: string, stat: Stats | null, isMount: boolean): string {
    if (!stat) return themeStyles.symlink;
    if (stat.isDirectory()) {
        return isMount ? themeStyles.mountPoint : themeStyles.directory;
    }
    if (isExecutable(stat)) return themeStyles.executable;
    if (stat.isSymbolicLink()) return themeStyles.symlink;
    if (stat.isFIFO()) return themeStyles.pipe;
    if (stat.isBlockDevice()) return themeStyles.blockDevice;
    if (stat.isCharacterDevice()) return themeStyles.charDevice;
    if (stat.isSocket()) return themeStyles.socket;
    if (!stat.isFile()) return themeStyles.special;

    const fileType = getFileType(filename);
    return fileType ? themeStyles.fileTypes[fileType] : themeStyles.normal;
}

function escapeControlChar(charCode: number): string {
    switch (charCode) {
        case 0x07: return "\\a";
        case 0x08: return "\\b";
        case 0x09: return "\\t";
        case 0x0a: return "\\n";
        case 0x0b: return "\\v";
        case 0x0c: return "\\f";
        case 0x0d: return "\\r";
        case 0x1b: return "\\e";
        default: return `\\x${charCode.toString(16).padStart(2, "0")}`;
    }
}

function escapeFilename(name: string, textStyle: string, controlStyle: string): string {
    const segments: string[] = [];
    let currentPlain = "";

    const flushPlain = () => {
        if (currentPlain.length > 0) {
            segments.push(paint(textStyle, currentPlain));
            currentPlain = "";
        }
    };

    for (const char of name) {
        const codePoint = char.codePointAt(0);
        if (codePoint === undefined) continue;
        if (codePoint >= 0x20 && codePoint !== 0x7f) {
            currentPlain += char;
        } else {
            flushPlain();
            segments.push(paint(controlStyle, escapeControlChar(codePoint)));
        }
    }

    flushPlain();
    return segments.join("");
}

function classifySuffix(stat: Stats | null): string | undefined {
    if (!stat) return "";
    if (isExecutable(stat)) return "*";
    if (stat.isDirectory()) return "/";
    if (stat.isFIFO()) return "|";
    if (stat.isSymbolicLink()) return "@";
    if (stat.isSocket()) return "=";
    return undefined;
}

function formatDate(date: Date): string {
    if (date.getFullYear() > 3000) return "     -      ";

    const day = date.getDate().toString().padStart(2, " ");
    const month = date.toLocaleDateString("en-US", { month: "short" });

    if (date.getFullYear() === new Date().getFullYear()) {
        const hours = date.getHours().toString().padStart(2, "0");
        const minutes = date.getMinutes().toString().padStart(2, "0");
        return `${day} ${month} ${hours}:${minutes}`;
    }
    return `${day} ${month}  ${date.getFullYear()}`;
}

function formatSize(size: number, padWidth = 4): string {
    const pad = (str: string, style: string) =>
        paint(style, " ".repeat(Math.max(0, padWidth - str.length)) + str);

    if (size === 0) return pad("-", themeStyles.dim);
    if (size < 0) return pad("ERR", makeStyle({ fg: FG.red, bold: true }));

    const units = ["", "k", "M", "G", "T"];
    let unitIndex = 0;
    let sizeFloat = size;
    while (sizeFloat >= 1024 && unitIndex < units.length - 1) {
        sizeFloat /= 1024;
        unitIndex++;
    }

    const style =
        size >= 1024 ** 3 ? themeStyles.sizeGB
            : size >= 1024 ** 2 ? themeStyles.sizeMB
                : size >= 1024 ? themeStyles.sizeKB
                    : themeStyles.sizeBytes;

    const sizeStr =
        unitIndex === 0
            ? size.toString()
            : sizeFloat >= 10
                ? Math.round(sizeFloat) + units[unitIndex]
                : sizeFloat.toFixed(1) + units[unitIndex];

    return pad(sizeStr, style);
}

export function formatFilename(
    filename: string,
    fullPath: string,
    stat: Stats | null,
    isMount: boolean
): string {
    const isSymlink = stat === null;
    const bits: string[] = [];

    const primaryStyle = styleForStat(filename, stat, isMount);
    const escapedName = escapeFilename(filename, primaryStyle, themeStyles.controlChar);

    if (filename.includes(" ") || filename.includes("'")) {
        const quoteChar = filename.includes("'") ? '"' : "'";
        const quote = paint(primaryStyle, quoteChar);
        bits.push(`${quote}${escapedName}${quote}`);
    } else {
        bits.push(escapedName);
    }

    const suffix = classifySuffix(stat);
    if (suffix) bits.push(suffix);

    if (isSymlink) {
        const linkTarget = readlinkSync(fullPath);
        const exists = existsSync(linkTarget);
        bits.push(" ");
        bits.push(paint(exists ? themeStyles.linkArrow : themeStyles.linkArrowBroken, "->"));
        bits.push(" ");
        bits.push(
            escapeFilename(
                linkTarget,
                exists ? themeStyles.symlinkPath : themeStyles.brokenSymlink,
                themeStyles.controlChar
            )
        );
    }

    return bits.join("");
}

/**
 * Physical (on-disk) bytes for any entry.
 *   files        Stats.blocks * 512
 *   directories  apfs.util -S      (O(1), clone-aware)
 *   mount points getattrlist ATTR_VOL_SPACEUSED
 *   symlinks     resolved, then sized as above
 */
async function getSize(
    fullPath: string,
    stat: Stats,
    parentDev: number,
    verbose?: VerboseCtx
): Promise<number> {
    if (stat.isSymbolicLink()) {
        if (!existsSync(fullPath)) {
            verbose?.note(fullPath, "symlink target missing");
            return -1;
        }
        const target = realpathSync(fullPath);
        verbose?.note(fullPath, `symlink → ${target}`);
        const targetStat = lstatSync(target);
        const targetParentDev = targetStat.isDirectory()
            ? lstatSync(path.dirname(target)).dev
            : parentDev;
        return getSize(target, targetStat, targetParentDev, verbose);
    }

    if (stat.isDirectory()) {
        if (stat.dev !== parentDev) {
            const size = getVolumeSize(fullPath);
            verbose?.note(fullPath, `mount point → ATTR_VOL_SPACEUSED=${size}`);
            return size;
        }
        const size = await getApfsDirSize(fullPath, verbose);
        verbose?.note(fullPath, `dir → apfs.util -S=${size}`);
        return size;
    }

    const physical = stat.blocks * 512;
    if (physical === 0 && stat.size > 0) {
        const inline = getDecmpfsSize(fullPath);
        verbose?.note(fullPath, `file → 0 blocks, decmpfs xattr=${inline}`);
        return inline;
    }

    verbose?.note(fullPath, `file → blocks(${stat.blocks})*512=${physical}`);
    return physical;
}

interface Row {
    name: string;
    fullPath: string;
    stat: Stats | null;
    isMount: boolean;
    size: number;
    /** compressed/logical as a fraction; 0 when uncompressed or not applicable */
    ratio: number;
    ts: number;
    duration: number;
    prefix: string;
}

function formatRatio(ratio: number, padWidth = 5): string {
    if (ratio <= 0) return " ".repeat(padWidth);

    const pct = Math.round(ratio * 100);
    const style =
        pct <= 40 ? themeStyles.sizeKB       // green: big win
            : pct <= 70 ? themeStyles.sizeMB // yellow: decent
                : themeStyles.dim;           // barely worth it
    const str = `${pct}%`;
    return paint(style, " ".repeat(Math.max(0, padWidth - str.length)) + str);
}

async function* streamResults<T>(tasks: Promise<T>[]): AsyncGenerator<T> {
    const pool = new Set<Promise<readonly [Promise<any>, T]>>();
    for (const task of tasks) {
        const wrapper = task.then((value) => [wrapper, value] as const);
        pool.add(wrapper);
    }
    while (pool.size > 0) {
        const [winner, value] = await Promise.race(pool);
        pool.delete(winner);
        yield value;
    }
}

async function* processEntries(
    targetDir: string,
    dirs: string[],
    flags: any,
    verbose?: VerboseCtx
): AsyncGenerator<Row> {
    if (!existsSync(targetDir)) {
        console.error(`"${targetDir}": No such file or directory`);
        return;
    }

    const targetStat = lstatSync(targetDir);
    const targetIsDir = targetStat.isSymbolicLink()
        ? lstatSync(realpathSync(targetDir)).isDirectory()
        : targetStat.isDirectory();

    // Listing a directory's contents, vs. naming a file (or -d) directly.
    const listContents = targetIsDir && !flags.dir;

    let parentPath = listContents ? targetDir : path.dirname(targetDir);
    try {
        parentPath = realpathSync(parentPath);
    } catch { }

    const parentDev = lstatSync(parentPath).dev;

    const all = await readdir(parentPath, { withFileTypes: true });
    const entries = listContents
        ? all.filter((e) => flags.all || !e.name.startsWith("."))
        : all.filter((e) => e.name === path.basename(targetDir));

    // Hoisted: identical for every row in this listing.
    const prefix = listContents
        ? dirs.length > 1 && flags.sort
            ? paint(themeStyles.basepath, targetDir.replace(/\/?$/, "/"))
            : ""
        : paint(themeStyles.basepath, path.dirname(targetDir) + "/");

    if (dirs.length > 1 && listContents && !flags.sort) console.log(targetDir + ":");

    const tasks = entries.map(async (entry): Promise<Row> => {
        const fullPath = join(parentPath, entry.name);
        const stat = lstatSync(fullPath);
        const isMount = stat.isDirectory() && stat.dev !== parentDev;

        const start = performance.now();
        const size = await getSize(fullPath, stat, parentDev, verbose);
        const duration = performance.now() - start;

        // Two extra getxattr calls, so only when the column is actually shown.
        let ratio = 0;
        if (flags.ratio && stat.isFile() && stat.size > 0) {
            const compressed = getCompressedBytes(fullPath);
            if (compressed > 0) ratio = compressed / stat.size;
            verbose?.note(fullPath, `compressed=${compressed} logical=${stat.size}`);
        }

        return {
            name: entry.name,
            fullPath,
            // A symlink displays as a link; getSize already followed it for the size.
            stat: stat.isSymbolicLink() ? null : stat,
            isMount,
            size,
            ratio,
            ts: stat.mtimeMs,
            duration,
            prefix,
        };
    });

    yield* streamResults(tasks);
}

if (import.meta.main) {
    const { values: flags, positionals } = parseArgs({
        strict: false,
        args: Bun.argv.slice(2),
        options: {
            all: { short: "a", type: "boolean", default: false },
            reverse: { short: "r", type: "boolean", default: false },
            sort: { short: "s", type: "string" },
            one: { short: "1", type: "boolean" },
            dir: { short: "d", type: "boolean" },
            ratio: { short: "c", type: "boolean", default: false },
            timing: { type: "boolean", default: false },
            verbose: { short: "v", type: "boolean", default: false },
            help: { short: "h", type: "boolean", default: false },
        },
        allowPositionals: true,
    });

    if (flags.help) {
        const b = makeStyle({ bold: true });
        const dim = themeStyles.dim;
        const head = makeStyle({ fg: FG.yellow, bold: true });
        const opt = makeStyle({ fg: FG.green });
        console.log(
            [
                `${paint(head, "ll")} — colourful directory listing with APFS-aware sizing`,
                ``,
                `${paint(b, "USAGE")}`,
                `  ll [options] [path...]`,
                ``,
                `${paint(b, "OPTIONS")}`,
                `  ${paint(opt, "-a, --all")}          include dotfiles`,
                `  ${paint(opt, "-r, --reverse")}      reverse sort order`,
                `  ${paint(opt, "-s, --sort <key>")}   sort by name|size|time|date|ratio (prefix '-' to reverse)`,
                `  ${paint(opt, "-1, --one")}          one entry per line, name only`,
                `  ${paint(opt, "-d, --dir")}          list the directory itself, not its contents`,
                `  ${paint(opt, "-c, --ratio")}        show AFSC compression ratio (compressed/logical)`,
                `  ${paint(opt, "    --timing")}       show per-entry measurement duration`,
                `  ${paint(opt, "-v, --verbose")}      print sizing internals`,
                `  ${paint(opt, "-h, --help")}         show this message`,
                ``,
                `${paint(b, "SIZING")}  ${paint(dim, "physical (on-disk) bytes throughout")}`,
                `  ${paint(dim, "files")}          Stats.blocks * 512`,
                `  ${paint(dim, "directories")}    apfs.util -S    (O(1), counts clones once)`,
                `  ${paint(dim, "mount points")}   getattrlist ATTR_VOL_SPACEUSED`,
                `  ${paint(dim, "symlinks")}       resolved, then sized as above`,
                ``,
                `${paint(b, "EXAMPLES")}`,
                `  ll -s size -r ~/Downloads`,
                `  ll -1 -a .`,
            ].join("\n")
        );
        process.exit(0);
    }

    const dirs = positionals.length === 0 ? ["."] : (positionals as string[]);
    const verbose = flags.verbose ? makeVerboseCtx() : undefined;

    let sortKey = flags.sort === true ? "name" : (flags.sort as string | undefined);
    if (sortKey?.startsWith("-")) {
        sortKey = sortKey.slice(1);
        flags.reverse = !flags.reverse;
    }
    if (sortKey === "ratio") flags.ratio = true;

    const emit = (row: Row) => {
        const name = formatFilename(row.name, row.fullPath, row.stat, row.isMount);

        if (flags.one) {
            console.log(name);
        } else {
            const timing = flags.timing
                ? paint(
                    themeStyles.dim,
                    ` (${row.duration < 100 ? row.duration.toFixed(1) : Math.round(row.duration)}ms)`
                )
                : "";
            console.log(
                "",
                formatSize(row.size),
                ...(flags.ratio ? [formatRatio(row.ratio)] : []),
                formatDate(new Date(row.ts)),
                timing,
                "–",
                row.prefix + name
            );
        }

        if (verbose) {
            console.log(paint(themeStyles.dim, `    path:     ${row.fullPath}`));
            console.log(
                paint(
                    themeStyles.dim,
                    `    raw size: ${row.size < 0 ? "ERR" : `${row.size} bytes`}   duration: ${row.duration.toFixed(2)}ms   mtime: ${new Date(row.ts).toISOString()}`
                )
            );
            for (const note of verbose.notes.get(row.fullPath) ?? []) {
                console.log(paint(themeStyles.dim, `    • ${note}`));
            }
        }
    };

    if (sortKey) {
        const rows: Row[] = [];
        for (const targetDir of dirs) {
            for await (const row of processEntries(targetDir, dirs, flags, verbose)) {
                rows.push(row);
            }
        }

        rows.sort((b, a) =>
            sortKey === "size" ? b.size - a.size
                : sortKey === "time" || sortKey === "date" ? b.ts - a.ts
                    // ascending like size, but uncompressed (0) sinks to the bottom
                    : sortKey === "ratio" ? (b.ratio || Infinity) - (a.ratio || Infinity)
                        : a.name.localeCompare(b.name)
        );
        if (flags.reverse) rows.reverse();

        rows.forEach(emit);
    } else {
        for (const targetDir of dirs) {
            for await (const row of processEntries(targetDir, dirs, flags, verbose)) {
                emit(row);
            }
        }
    }

    process.exit();
}
