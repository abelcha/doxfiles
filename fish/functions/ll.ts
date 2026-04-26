#!/usr/bin/env bun
import { Database } from "bun:sqlite";
import {
    Dirent,
    existsSync, lstatSync, readlinkSync,
    realpathSync
} from "fs";
import { readdir } from "fs/promises";
import type { Stats } from "node:fs";
import path, { join } from "path";
import { parseArgs } from "util";

const ANSI_RESET = "\x1b[0m";

type StatPredicate = () => boolean;
// console.time("db");
const db = new Database("/tmp/teza-cache.sqlite");
db.run("PRAGMA journal_mode = WAL;");
db.run("PRAGMA synchronous = NORMAL;");
db.run("CREATE TABLE IF NOT EXISTS cache (key TEXT PRIMARY KEY, size INTEGER)");

const getCacheStmt = db.prepare("SELECT size FROM cache WHERE key = ?");
const setCacheStmt = db.prepare(
    "INSERT OR REPLACE INTO cache (key, size) VALUES (?, ?)"
);
// console.timeEnd("db");
const DISPLAY_COLORS = process.stdout.isTTY;
const MIN_ENTRIES_CACHE = 100;

import { dlopen, FFIType, ptr } from "bun:ffi";
const ST_SIZE_OFFSET = 96;
const ST_BLOCKS_OFFSET = 104;

const libc = dlopen("libSystem.B.dylib", {
    lstat: {
        args: [FFIType.ptr, FFIType.ptr],
        returns: FFIType.i32,
    },
    getattrlist: {
        args: [FFIType.ptr, FFIType.ptr, FFIType.ptr, FFIType.usize, FFIType.u32],
        returns: FFIType.i32,
    },
    statfs: {
        args: [FFIType.ptr, FFIType.ptr],
        returns: FFIType.i32,
    },
    strerror: {
        args: [FFIType.i32],
        returns: FFIType.cstring,
    },
    __error: {
        args: [],
        returns: FFIType.ptr,
    },
});
const encoder = new TextEncoder()

function getPhysicalFileSize(fullPath: string) {
    const pathBuf = encoder.encode(fullPath + "\0");
    const localStatBuf = new Uint8Array(144);
    const res = libc.symbols.lstat(pathBuf, localStatBuf);
    if (res === 0) {
        return Number(new BigUint64Array(localStatBuf.buffer, ST_BLOCKS_OFFSET, 1)[0]) * 512
    }
    return -1;
}

function getErrno(): number {
    const errnoPtr = libc.symbols.__error();
    return new Int32Array(Bun.toArrayBuffer(errnoPtr, 0, 4))[0];
}

function getVolumeSizePureBun(path: string): bigint {
    //console.log("mounted volume", path);
    const encoder = new TextEncoder();
    const pathPtr = encoder.encode(path + "\0");

    const attrList = new Uint32Array([
        5, // bitmapcount (5) + reserved (0)
        0, // commonattr
        0x00800000, // volattr (ATTR_VOL_SPACEUSED)
        0, // dirattr
        0, // fileattr
        0, // forkattr
    ]);

    // Output buffer: size needs to be large enough for potential padding
    const outputBuf = new Uint8Array(32);

    const res = libc.symbols.getattrlist(
        ptr(pathPtr),
        ptr(attrList),
        ptr(outputBuf),
        outputBuf.length,
        0
    );

    if (res === 0) {
        const view = new DataView(outputBuf.buffer);
        const length = view.getUint32(0, true);
        // On 64-bit systems, attributes that are 8-byte aligned (like off_t)
        // will have 4 bytes of padding after the 4-byte length field.
        // Length: bytes 0-3
        // Padding: bytes 4-7
        // Data: bytes 8-15
        if (length >= 16) {
            return view.getBigUint64(8, true);
        } else if (length >= 12) {
            // Just in case it's not padded
            return view.getBigUint64(4, true);
        }
        return 0n;
    }

    const errno = getErrno();
    console.error(
        `getattrlist failed: ${libc.symbols.strerror(errno)} (errno: ${errno})`
    );
    return -1n;
}
function isMountedVolume(
    filename: string,
    stat?: ReturnType<typeof lstatSync>
) {
    stat = stat || lstatSync(filename);
    return lstatSync(path.dirname(filename)).dev !== stat.dev;
}
type StatLike = Stats;
// export interface StatLike {
//     mode: number;
//     isDirectory: StatPredicate;
//     isFile: StatPredicate;
//     isSymbolicLink?: StatPredicate;
//     isSocket?: StatPredicate;
//     isFIFO?: StatPredicate;
//     isPipe?: StatPredicate;
//     isBlockDevice?: StatPredicate;
//     isCharacterDevice?: StatPredicate;
//     isMountPoint?: StatPredicate;
// }

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

const BG = {
    yellow: 43,
} as const;

interface StyleSpec {
    fg?: number;
    bg?: number;
    bold?: boolean;
    underline?: boolean;
    dim?: boolean;
}

// Helper for apfs.util -S
async function getApfsFastSize(dirPath: string, verbose?: VerboseCtx): Promise<number> {
    const t0 = performance.now();
    try {
        const proc = Bun.$`/System/Library/Filesystems/apfs.fs/Contents/Resources/apfs.util -S ${dirPath}`.quiet();
        const out = await proc.text();
        const match = out.match(/physical size: (\d+)/);
        const size = match?.[1] ? parseInt(match[1], 10) : -1;
        if (verbose) {
            verbose.note(dirPath, `apfs.util -S → ${size} bytes in ${(performance.now() - t0).toFixed(1)}ms`);
            if (!match) verbose.note(dirPath, `apfs.util output unparsed: ${out.trim().slice(0, 120)}`);
        }
        return size;
    } catch (err: any) {
        if (verbose) verbose.note(dirPath, `apfs.util failed: ${err?.message ?? err}`);
        return -1;
    }
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

function makeStyle(spec?: StyleSpec): string {
    if (!spec) {
        return "";
    }

    const codes: number[] = [];

    if (spec.bold) {
        codes.push(1);
    }
    if (spec.dim) {
        codes.push(2);
    }
    if (spec.underline) {
        codes.push(4);
    }
    if (spec.fg !== undefined) {
        codes.push(spec.fg);
    }
    if (spec.bg !== undefined) {
        codes.push(spec.bg);
    }

    if (codes.length === 0) {
        return "";
    }

    return `\x1b[${codes.join(";")}m`;
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
    multiLinkFile: makeStyle({ fg: FG.red, bg: BG.yellow }),
    controlChar: makeStyle({ fg: FG.red }),
    brokenSymlink: makeStyle({ fg: FG.red, underline: true }),
    brokenFilename: makeStyle({ fg: FG.red }),
    brokenControlChar: makeStyle({ fg: FG.red }),
    symlinkPath: makeStyle({ fg: FG.cyan }),
    linkArrow: makeStyle({ fg: FG.grey }),
    linkArrowBroken: makeStyle({ fg: FG.red }),
    basepath: makeStyle({ fg: FG.cyan }),
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

function mapValues(
    type: FileType,
    keys: readonly string[]
): Record<string, FileType> {
    const result: Record<string, FileType> = {};
    for (const key of keys) {
        result[key] = type;
    }
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
function getFilenameExtension(name: string): string | undefined {
    const dotIndex = name.lastIndexOf(".");

    if (dotIndex <= 0 || dotIndex === name.length - 1) {
        return undefined;
    }

    return name.slice(dotIndex + 1).toLowerCase();
}

function getFileType(filename: string): FileType | undefined {
    const lower = filename.toLowerCase();

    if (lower.startsWith("readme")) {
        return "build";
    }

    const specific = FILENAME_TYPES[filename];
    if (specific) {
        return specific;
    }

    const ext = getFilenameExtension(filename);
    if (ext) {
        const extType = EXTENSION_TYPES[ext];
        if (extType) {
            return extType;
        }
    }

    if (
        filename.endsWith("~") ||
        (filename.startsWith(TEMP_FILENAME_PREFIX) &&
            filename.endsWith(TEMP_FILENAME_PREFIX))
    ) {
        return "temp";
    }

    return undefined;
}

function colourFile(filename: string): string {
    const fileType = getFileType(filename);
    if (!fileType) {
        return themeStyles.normal;
    }
    return themeStyles.fileTypes[fileType] ?? themeStyles.normal;
}

function paint(style: string, text: string): string {
    if (!style || !DISPLAY_COLORS) {
        return text;
    }
    return `${style}${text}${ANSI_RESET}`;
}

function isExecutable(stat: StatLike): boolean {
    if (!stat.isFile()) {
        return false;
    }
    return (stat.mode & 0o111) !== 0;
}

function styleForStat(filename: string, stat: StatLike | null): string {
    if (!stat) {
        return themeStyles.symlink;
    }

    // if (isMountedVolume(filename, stat)) {
    //     return themeStyles.mountPoint;
    // }

    if (stat.isDirectory()) {
        if (isMountedVolume(filename, stat)) {
            return themeStyles.mountPoint;
        }
        return themeStyles.directory;
    }

    if (isExecutable(stat)) {
        return themeStyles.executable;
    }

    if (stat.isSymbolicLink?.()) {
        return themeStyles.symlink;
    }

    if (stat.isFIFO?.() || stat.isPipe?.()) {
        return themeStyles.pipe;
    }

    if (stat.isBlockDevice?.()) {
        return themeStyles.blockDevice;
    }

    if (stat.isCharacterDevice?.()) {
        return themeStyles.charDevice;
    }

    if (stat.isSocket?.()) {
        return themeStyles.socket;
    }

    if (!stat.isFile()) {
        return themeStyles.special;
    }

    return colourFile(filename);
}

function escapeControlChar(charCode: number): string {
    switch (charCode) {
        case 0x07:
            return "\\a";
        case 0x08:
            return "\\b";
        case 0x09:
            return "\\t";
        case 0x0a:
            return "\\n";
        case 0x0b:
            return "\\v";
        case 0x0c:
            return "\\f";
        case 0x0d:
            return "\\r";
        case 0x1b:
            return "\\e";
        default:
            return `\\x${charCode.toString(16).padStart(2, "0")}`;
    }
}

function escapeFilename(
    name: string,
    textStyle: string,
    controlStyle: string
): string {
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
        if (codePoint === undefined) {
            continue;
        }

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

function classifySuffix(stat: StatLike | null): string | undefined {
    if (!stat) {
        return "";
    }
    if (isExecutable(stat)) {
        return "*";
    }
    if (stat.isDirectory()) {
        return "/";
    }
    if (stat.isFIFO?.() || stat?.isPipe?.()) {
        return "|";
    }
    if (stat.isSymbolicLink?.()) {
        return "@";
    }
    if (stat.isSocket?.()) {
        return "=";
    }
    return undefined;
}

function formatDate(date: Date): string {
    if (date.getFullYear() > 3000) {
        return "     -      ";
    }
    const now = new Date();
    const currentYear = now.getFullYear();
    const day = date.getDate().toString().padStart(2, " ");
    const month = date.toLocaleDateString("en-US", { month: "short" });

    if (date.getFullYear() === currentYear) {
        // This year: day month HH:MM
        const hours = date.getHours().toString().padStart(2, "0");
        const minutes = date.getMinutes().toString().padStart(2, "0");
        return `${day} ${month} ${hours}:${minutes}`;
    } else {
        // Older: day month  year (two spaces before year)
        const year = date.getFullYear();
        return `${day} ${month}  ${year}`;
    }
}
function formatSize(size: number, padWidth: number = 4): string {
    if (size === 0) {
        const dashStr = "-";
        const padding = " ".repeat(Math.max(0, padWidth - 1));
        return paint(makeStyle({ fg: FG.grey }), `${padding}${dashStr}`);
    }
    if (size === -1) {
        // Error sentinel
        const str = "ERR";
        const padding = " ".repeat(Math.max(0, padWidth - str.length));
        return paint(makeStyle({ fg: FG.red, bold: true }), `${padding}${str}`);
    }
    if (size === -2) {
        // Timeout sentinel
        const str = "T/O";
        const padding = " ".repeat(Math.max(0, padWidth - str.length));
        return paint(makeStyle({ fg: FG.yellow, bold: true }), `${padding}${str}`);
    }

    const units = ["", "k", "M", "G", "T"];
    let unitIndex = 0;
    let sizeFloat = size;

    while (sizeFloat >= 1024 && unitIndex < units.length - 1) {
        sizeFloat /= 1024;
        unitIndex++;
    }

    let sizeStr: string;
    let colorCode: string;

    // Determine color based on size thresholds
    if (size >= 1024 * 1024 * 1024) {
        // > 1GB
        colorCode = themeStyles.sizeGB;
    } else if (size >= 1024 * 1024) {
        // > 1MB
        colorCode = themeStyles.sizeMB;
    } else if (size >= 1024) {
        colorCode = themeStyles.sizeKB;
    } else {
        colorCode = themeStyles.sizeBytes;
    }

    if (unitIndex === 0) {
        // For bytes
        sizeStr = size.toString();
    } else {
        // For larger sizes
        if (sizeFloat >= 10) {
            sizeStr = Math.round(sizeFloat).toString() + units[unitIndex];
        } else {
            sizeStr = sizeFloat.toFixed(1) + units[unitIndex];
        }
    }

    // Calculate padding for the visible part (without ANSI codes)
    const visibleLength = sizeStr.length;
    const padding = " ".repeat(Math.max(0, padWidth - visibleLength));
    return paint(colorCode, `${padding}${sizeStr}`);
}

export function formatFilename(entry: Dirent): string {
    const filename = entry.name;
    const isSymlink = entry.isSymbolicLink?.();
    const stat = isSymlink ? null : lstatSync(join(entry.parentPath, filename));

    const bits: string[] = [];

    const primaryStyle = styleForStat(filename, stat);
    const escapedName = escapeFilename(
        filename,
        primaryStyle,
        themeStyles.controlChar
    );

    // Handle quoting for names with spaces
    const needsQuotes = filename.includes(" ") || filename.includes("'");

    if (needsQuotes) {
        const quoteChar = filename.includes("'") ? '"' : "'";
        const opening = paint(primaryStyle, quoteChar);
        const closing = paint(primaryStyle, quoteChar);
        bits.push(`${opening}${escapedName}${closing}`);
    } else {
        bits.push(escapedName);
    }

    // Always classify files

    const suffix = classifySuffix(stat);
    if (suffix) {
        bits.push(suffix);
    }

    // Handle symlink targets
    if (isSymlink) {
        bits.push(" ");
        const linkTarget = readlinkSync(join(entry.parentPath, filename));
        const exists = existsSync(linkTarget);

        bits.push(
            paint(exists ? themeStyles.linkArrow : themeStyles.linkArrowBroken, "->")
        );
        bits.push(" ");

        const targetStyle = exists
            ? themeStyles.symlinkPath
            : themeStyles.brokenSymlink;
        const escapedTarget = escapeFilename(
            linkTarget,
            targetStyle,
            themeStyles.controlChar
        );
        bits.push(escapedTarget);
    }

    return bits.join("");
}

interface EntryData {
    entry: Dirent;
    fullPath: string;
    size: number;
    ts: number;
    duration: number;
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
    deadline: number,
    verbose?: VerboseCtx
): AsyncGenerator<EntryData> {
    if (!existsSync(targetDir)) {
        console.error(`"${targetDir}": No such file or directory`);
        return;
    }

    const s = lstatSync(targetDir);

    const isDir = (() => {
        if (s.isSymbolicLink()) {
            const realTargetDir = existsSync(targetDir) && realpathSync(targetDir);
            return (
                realTargetDir &&
                existsSync(realTargetDir) &&
                lstatSync(realTargetDir)?.isDirectory()
            );
        }
        return s.isDirectory();
    })();
    if (dirs.length > 1 && isDir && !flags.dir) {
        console.log(targetDir + ":");
    }

    // We need to handle the case where targetDir is a file!
    // Original logic:
    // if (isDir && !flags.dir) -> readdirSync(targetDir)
    // else -> readdirSync(dirname(targetDir)).filter(name == basename)

    let entries: Dirent[];

    // Need async readdir for consistency if possible, but readdirSync is fast enough for the top level usually.
    // However, to keep it async:
    if (isDir && !flags.dir) {
        entries = await readdir(targetDir, { withFileTypes: true });
    } else {
        // If it's a file, we read the parent dir and filter
        const parent = path.dirname(targetDir);
        const base = path.basename(targetDir);
        const all = await readdir(parent, { withFileTypes: true });
        entries = all.filter((e) => e.name === base);
    }

    const cacheEnabled = !process.env.TOTALSIZE && !flags.nocache;

    async function getSize(entry: any): Promise<number> {
        const fullPath = entry.fullPath || entry.parentPath + "/" + entry.name;
        if (entry.isFile()) {
            const fsize = Bun.file(fullPath).size;
            if (fsize > 10_000_000) {
                const phys = getPhysicalFileSize(fullPath);
                if (verbose) verbose.note(fullPath, `file >10MB: logical=${fsize}, physical(lstat st_blocks*512)=${phys}`);
                return phys;
            }
            if (verbose) verbose.note(fullPath, `file: Bun.file().size=${fsize}`);
            return fsize;
        }
        if (entry.isSymbolicLink()) {
            const p = existsSync(fullPath) && realpathSync(fullPath);
            if (!p) {
                if (verbose) verbose.note(fullPath, `symlink target missing`);
                return -1;
            }
            if (verbose) verbose.note(fullPath, `symlink → ${p}`);
            const stat = lstatSync(p);
            return getSize(Object.assign(stat, { fullPath: p }));
        }
        if (entry.isDirectory()) {
            if (isMountedVolume(fullPath)) {
                const vs = Number(getVolumeSizePureBun(fullPath));
                if (verbose) verbose.note(fullPath, `dir is mounted volume → getattrlist ATTR_VOL_SPACEUSED=${vs}`);
                return vs;
            }
            if (verbose) verbose.note(fullPath, `dir → apfs.util -S (APFS physical size of tree)`);
            return await getApfsFastSize(fullPath, verbose);
        }
        if (verbose) verbose.note(fullPath, `unknown entry type, returning -1`);
        return -1;
    }

    const tasks = entries
        .filter((entry) => flags.all || !entry.name.startsWith("."))
        .map(async (entry) => {
            // Caution: logic for fullPath depends on where entry came from.
            // If entry came from readdir(targetDir), parentPath is targetDir.
            // If entry came from readdir(parent), parentPath is parent.
            // entry.parentPath is available in Node 20+, Bun supports it?
            // Original code used `join(realpathSync(entry.parentPath), entry.name)`.
            // Let's assume entry.parentPath is compliant or re-derive it.
            // Actually, to be safe, if we read from `targetDir`, then parent is `targetDir`.
            // If we read from `dirname(targetDir)`, parent is `dirname(targetDir)`.

            let parentPath: string;
            if (isDir && !flags.dir) {
                parentPath = targetDir;
            } else {
                parentPath = path.dirname(targetDir);
            }

            // Ensure realpath
            try {
                parentPath = realpathSync(parentPath);
            } catch (e) {
                // ignore if fails?
            }

            const fullPath = join(parentPath, entry.name);
            if (Date.now() > deadline) {
                return { entry, fullPath, size: -2, ts: Date.now(), duration: 0 };
            }
            const bf = Bun.file(fullPath);
            //   console.log('->', , fullPath, entry.name)

            const start = performance.now();
            // Pin entry.fullPath so getSize keys verbose notes by the same absolute path we display.
            const size = await getSize(Object.assign(entry, { fullPath }));
            const duration = performance.now() - start;

            const ts =
                new Date(bf.lastModified).getFullYear() > 3000
                    ? lstatSync(fullPath).mtimeMs
                    : bf.lastModified;

            return { entry, fullPath, size, ts, duration };
        });
    if (flags.sort === true) {
        flags.sort = 'name'    
    }
    if (flags.sort) {
        
        const results = await Promise.all(tasks);

        if (flags.sort.startsWith("-")) {
            flags.sort = flags.sort.slice(1);
            flags.reverse = !flags.reverse;
        }
        results.sort((b, a) => {
            if (flags.sort === "size") {
                return b.size - a.size;
            }
            if (flags.sort === "time" || flags.sort === "date") {
                return b.ts - a.ts;
            }
            return a.entry.name.localeCompare(b.entry.name);
        });
        if (flags.reverse) {
            results.reverse();
        }

        for (const item of results) {
            yield item;
        }
    } else {
        for await (const item of streamResults(tasks)) {
            yield item;
        }
    }
}

if (import.meta.main) {
    const { values: flags, positionals } = parseArgs({
        strict: false,
        args: Bun.argv.slice(2),
        options: {
            all: {
                short: "a",
                type: "boolean",
                default: false,
            },
            reverse: {
                short: "r",
                type: "boolean",
                default: false,
            },
            sort: {
                short: "s",
                type: "string",
            },
            one: {
                short: "1",
                type: "boolean",
            },
            dir: {
                short: "d",
                type: "boolean",
            },
            nocache: {
                type: "boolean",
            },
            timeout: {
                type: "string", // parsed as int really
            },
            timing: {
                type: "boolean",
                default: false,
            },
            verbose: {
                short: "v",
                type: "boolean",
                default: false,
            },
            help: {
                short: "h",
                type: "boolean",
                default: false,
            },
        },
        allowPositionals: true,
    }); // end parseArgs

    if (flags.help) {
        const b = makeStyle({ bold: true });
        const dim = makeStyle({ fg: FG.grey, dim: true });
        const head = makeStyle({ fg: FG.yellow, bold: true });
        const opt = makeStyle({ fg: FG.green });
        const lines = [
            `${paint(head, "ll")} — colourful directory listing with APFS-aware sizing`,
            ``,
            `${paint(b, "USAGE")}`,
            `  ll [options] [path...]`,
            ``,
            `${paint(b, "OPTIONS")}`,
            `  ${paint(opt, "-a, --all")}          include dotfiles`,
            `  ${paint(opt, "-r, --reverse")}      reverse sort order`,
            `  ${paint(opt, "-s, --sort <key>")}   sort by name|size|time|date (prefix '-' to reverse)`,
            `  ${paint(opt, "-1, --one")}          one entry per line, name only`,
            `  ${paint(opt, "-d, --dir")}          list the directory itself, not its contents`,
            `  ${paint(opt, "    --nocache")}      bypass the sqlite size cache`,
            `  ${paint(opt, "    --timeout <ms>")} deadline for sizing (default 1000)`,
            `  ${paint(opt, "    --timing")}       show per-entry measurement duration`,
            `  ${paint(opt, "-v, --verbose")}      print sizing internals (method, raw bytes, notes)`,
            `  ${paint(opt, "-h, --help")}         show this message`,
            ``,
            `${paint(b, "SIZING STRATEGY")}`,
            `  ${paint(dim, "files < 10MB")}   Bun.file().size           (logical size)`,
            `  ${paint(dim, "files ≥ 10MB")}   lstat st_blocks * 512     (physical / on-disk)`,
            `  ${paint(dim, "directories")}    apfs.util -S              (APFS physical tree size)`,
            `  ${paint(dim, "mounted vols")}   getattrlist ATTR_VOL_SPACEUSED`,
            `  ${paint(dim, "symlinks")}       resolved, then sized as above`,
            ``,
            `${paint(b, "EXAMPLES")}`,
            `  ll -s size -r ~/Downloads`,
            `  ll --verbose --timeout 5000 /Volumes`,
            `  ll -1 -a .`,
        ];
        console.log(lines.join("\n"));
        process.exit(0);
    }

    const dirs = positionals.length === 0 ? ["."] : (positionals as string[]);
    const deadline = Date.now() + Number(flags.timeout || 1000);
    const verbose = flags.verbose ? makeVerboseCtx() : undefined;

    if (verbose) {
        const dim = makeStyle({ fg: FG.grey, dim: true });
        console.log(paint(dim, `[verbose] flags=${JSON.stringify(flags)}`));
        console.log(paint(dim, `[verbose] dirs=${JSON.stringify(dirs)} deadline=+${Number(flags.timeout || 1000)}ms`));
        console.log(paint(dim, `[verbose] TTY=${DISPLAY_COLORS} TOTALSIZE=${process.env.TOTALSIZE ?? ""} platform=${process.platform}`));
        console.log(paint(dim, `[verbose] sizing: files<10MB → Bun.file().size; files≥10MB → lstat st_blocks*512; dirs → apfs.util -S; mounted volumes → getattrlist ATTR_VOL_SPACEUSED`));
    }

    let spawnedWarming = false;
    for (const targetDir of dirs) {
        for await (const { entry, fullPath, size, ts, duration } of processEntries(
            targetDir,
            dirs,
            flags,
            deadline,
            verbose
        )) {
            if (!flags.all && entry.name.startsWith(".") && !positionnals[0]?.startsWith('.')) {
                continue;
            }

            if (size === -2 && !spawnedWarming) {
                spawnedWarming = true;
                // Background cache warming: spawn the same command once with a huge timeout
                Bun.spawn(
                    [
                        Bun.argv[0],
                        Bun.argv[1],
                        ...Bun.argv.slice(2),
                        "--timeout",
                        "999999999",
                    ],
                    {
                        stdio: ["ignore", "ignore", "ignore"],
                        detached: true,
                    }
                ).unref();
            }

            const formatted = formatFilename(entry);

            const emitVerbose = () => {
                if (!verbose) return;
                const dim = makeStyle({ fg: FG.grey, dim: true });
                const notes = verbose.notes.get(fullPath) ?? [];
                const rawSize =
                    size === -1 ? "ERR" : size === -2 ? "TIMEOUT" : `${size} bytes`;
                console.log(paint(dim, `    path:     ${fullPath}`));
                console.log(paint(dim, `    raw size: ${rawSize}   duration: ${duration.toFixed(2)}ms   mtime: ${new Date(ts).toISOString()}`));
                for (const n of notes) {
                    console.log(paint(dim, `    • ${n}`));
                }
            };

            if (flags.one) {
                console.log(formatted);
                emitVerbose();
                continue;
            }
            const datef = formatDate(new Date(ts));

            // Re-derive prefix logic
            const s = lstatSync(targetDir as string);
            const targetIsDir = (() => {
                if (s.isSymbolicLink()) {
                    const realTargetDir =
                        existsSync(targetDir as string) &&
                        realpathSync(targetDir as string);
                    return (
                        realTargetDir &&
                        existsSync(realTargetDir) &&
                        lstatSync(realTargetDir)?.isDirectory()
                    );
                }
                return s.isDirectory();
            })();

            // "pre" is only non-empty if we are listing the CONTENT of a directory (not just the dir itself via -d)
            // AND we want to show the full path context?
            // Original code: `isDir` (of target) ? '' : paint(...)
            // If target is a file, we prepend directory.
            const pre =
                targetIsDir && !flags.dir
                    ? ""
                    : paint(
                        themeStyles.basepath,
                        path.dirname(targetDir as string) + "/"
                    );

            const timingStr = flags.timing
                ? paint(
                    makeStyle({ fg: FG.grey, dim: true }),
                    ` (${duration < 100 ? duration.toFixed(1) : Math.round(duration)
                    }ms)`
                )
                : "";

            console.log("", formatSize(size), datef, timingStr, "–", pre + formatted);
            emitVerbose();
        }
    }
}

// console.log('after')
process.exit()
