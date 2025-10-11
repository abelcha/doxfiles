#!/usr/bin/env bun
import type { BunFile } from 'bun';
import { Dirent, existsSync, fstatSync, lstatSync, readdirSync, readlinkSync, realpathSync, statSync } from 'fs';
import { lstat } from 'fs/promises';
import { readdir } from 'fs/promises';
import path, { join, sep as PATH_SEPARATOR } from 'path';
import { parseArgs } from 'util';

const ANSI_RESET = '\x1b[0m';

type StatPredicate = () => boolean;

const cacheFile = Bun.file('/tmp/teza-cache.json');
const cache = await cacheFile.exists() ? await cacheFile.json() : {}
// console.log({ cache })

const DISPLAY_COLORS = process.stdout.isTTY;

export interface StatLike {
    mode: number;
    isDirectory: StatPredicate;
    isFile: StatPredicate;
    isSymbolicLink?: StatPredicate;
    isSocket?: StatPredicate;
    isFIFO?: StatPredicate;
    isPipe?: StatPredicate;
    isBlockDevice?: StatPredicate;
    isCharacterDevice?: StatPredicate;
    isMountPoint?: StatPredicate;
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

function makeStyle(spec?: StyleSpec): string {
    if (!spec) {
        return '';
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
        return '';
    }

    return `\x1b[${codes.join(';')}m`;
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
    mountPoint: makeStyle({ fg: FG.blue, bold: true, underline: true }),
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

type FileType = 'image' | 'video' | 'music' | 'lossless' | 'crypto' | 'document' | 'compressed' | 'temp' | 'compiled' | 'build' | 'source';

function mapValues(type: FileType, keys: readonly string[]): Record<string, FileType> {
    const result: Record<string, FileType> = {};
    for (const key of keys) {
        result[key] = type;
    }
    return result;
}

const FILENAME_TYPES: Record<string, FileType> = {
    ...mapValues('build', [
        'Brewfile', 'bsconfig.json', 'BUILD', 'BUILD.bazel', 'build.gradle', 'build.sbt', 'build.xml', 'Cargo.toml', 'CMakeLists.txt', 'composer.json', 'configure', 'Containerfile', 'Dockerfile', 'Earthfile', 'flake.nix', 'Gemfile', 'GNUmakefile', 'Gruntfile.coffee', 'Gruntfile.js', 'jsconfig.json', 'Justfile', 'justfile', 'Makefile', 'makefile', 'meson.build', 'mix.exs', 'package.json', 'Pipfile', 'PKGBUILD', 'Podfile', 'pom.xml', 'Procfile', 'pyproject.toml', 'Rakefile', 'RoboFile.php', 'SConstruct', 'tsconfig.json', 'Vagrantfile', 'webpack.config.cjs', 'webpack.config.js', 'WORKSPACE',
    ]),
    ...mapValues('crypto', [
        'id_dsa', 'id_ecdsa', 'id_ecdsa_sk', 'id_ed25519', 'id_ed25519_sk', 'id_rsa',
    ]),
};

const EXTENSION_TYPES: Record<string, FileType> = {
    ...mapValues('build', ['ninja']),
    ...mapValues('image', [
        'arw', 'avif', 'bmp', 'cbr', 'cbz', 'cr2', 'dvi', 'eps', 'fodg', 'gif', 'heic', 'heif', 'ico', 'j2c', 'j2k', 'jfi', 'jfif', 'jif', 'jp2', 'jpe', 'jpeg', 'jpf', 'jpg', 'jpx', 'jxl', 'kra', 'krz', 'nef', 'odg', 'orf', 'pbm', 'pgm', 'png', 'pnm', 'ppm', 'ps', 'psd', 'pxm', 'raw', 'qoi', 'svg', 'tif', 'tiff', 'webp', 'xcf', 'xpm',
    ]),
    ...mapValues('video', [
        'avi', 'flv', 'h264', 'heics', 'm2ts', 'm2v', 'm4v', 'mkv', 'mov', 'mp4', 'mpeg', 'mpg', 'ogm', 'ogv', 'video', 'vob', 'webm', 'wmv',
    ]),
    ...mapValues('music', ['aac', 'm4a', 'mka', 'mp2', 'mp3', 'ogg', 'opus', 'wma']),
    ...mapValues('lossless', ['aif', 'aifc', 'aiff', 'alac', 'ape', 'flac', 'pcm', 'wav', 'wv']),
    ...mapValues('crypto', [
        'age', 'asc', 'cer', 'crt', 'csr', 'gpg', 'kbx', 'md5', 'p12', 'pem', 'pfx', 'pgp', 'pub', 'sha1', 'sha224', 'sha256', 'sha384', 'sha512', 'sig', 'signature',
    ]),
    ...mapValues('document', [
        'djvu', 'doc', 'docx', 'eml', 'fodp', 'fods', 'fodt', 'fotd', 'gdoc', 'key', 'keynote', 'numbers', 'odp', 'ods', 'odt', 'pages', 'pdf', 'ppt', 'pptx', 'rtf', 'xls', 'xlsm', 'xlsx',
    ]),
    ...mapValues('compressed', [
        '7z', 'ar', 'arj', 'br', 'bz', 'bz2', 'bz3', 'cpio', 'deb', 'dmg', 'gz', 'iso', 'lz', 'lz4', 'lzh', 'lzma', 'lzo', 'phar', 'qcow', 'qcow2', 'rar', 'rpm', 'tar', 'taz', 'tbz', 'tbz2', 'tc', 'tgz', 'tlz', 'txz', 'tz', 'xz', 'vdi', 'vhd', 'vhdx', 'vmdk', 'z', 'zip', 'zst',
    ]),
    ...mapValues('temp', [
        'bak', 'bk', 'bkp', 'crdownload', 'download', 'fcbak', 'fcstd1', 'fdmdownload', 'part', 'swn', 'swo', 'swp', 'tmp',
    ]),
    ...mapValues('compiled', [
        'a', 'bundle', 'class', 'cma', 'cmi', 'cmo', 'cmx', 'dll', 'dylib', 'elc', 'elf', 'ko', 'lib', 'o', 'obj', 'pyc', 'pyd', 'pyo', 'so', 'zwc',
    ]),
    ...mapValues('source', [
        'applescript', 'as', 'asa', 'awk', 'c', 'c++', 'c++m', 'cabal', 'cc', 'ccm', 'clj', 'cp', 'cpp', 'cppm', 'cr', 'cs', 'css', 'csx', 'cu', 'cxx', 'cxxm', 'cypher', 'd', 'dart', 'di', 'dpr', 'el', 'elm', 'erl', 'ex', 'exs', 'f', 'f90', 'fcmacro', 'fcscript', 'fnl', 'for', 'fs', 'fsh', 'fsi', 'fsx', 'gd', 'go', 'gradle', 'groovy', 'gvy', 'h', 'h++', 'hh', 'hpp', 'hc', 'hs', 'htc', 'hxx', 'inc', 'inl', 'ino', 'ipynb', 'ixx', 'java', 'jl', 'js', 'jsx', 'kt', 'kts', 'kusto', 'less', 'lhs', 'lisp', 'ltx', 'lua', 'm', 'malloy', 'matlab', 'ml', 'mli', 'mn', 'nb', 'p', 'pas', 'php', 'pl', 'pm', 'pod', 'pp', 'prql', 'ps1', 'psd1', 'psm1', 'purs', 'py', 'r', 'rb', 'rs', 'rq', 'sass', 'scala', 'scm', 'scad', 'scss', 'sld', 'sql', 'ss', 'swift', 'tcl', 'tex', 'ts', 'v', 'vb', 'vsh', 'zig',
    ]),
};

const TEMP_FILENAME_PREFIX = '#';
function getFilenameExtension(name: string): string | undefined {
    const dotIndex = name.lastIndexOf('.');

    if (dotIndex <= 0 || dotIndex === name.length - 1) {
        return undefined;
    }

    return name.slice(dotIndex + 1).toLowerCase();
}

function getFileType(filename: string): FileType | undefined {
    const lower = filename.toLowerCase();

    if (lower.startsWith('readme')) {
        return 'build';
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
        filename.endsWith('~') ||
        (filename.startsWith(TEMP_FILENAME_PREFIX) && filename.endsWith(TEMP_FILENAME_PREFIX))
    ) {
        return 'temp';
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
    if (stat.isMountPoint?.()) {
        return themeStyles.mountPoint;
    }

    if (stat.isDirectory()) {
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
            return '\\a';
        case 0x08:
            return '\\b';
        case 0x09:
            return '\\t';
        case 0x0a:
            return '\\n';
        case 0x0b:
            return '\\v';
        case 0x0c:
            return '\\f';
        case 0x0d:
            return '\\r';
        case 0x1b:
            return '\\e';
        default:
            return `\\x${charCode.toString(16).padStart(2, '0')}`;
    }
}

function escapeFilename(
    name: string,
    textStyle: string,
    controlStyle: string,
): string {
    const segments: string[] = [];
    let currentPlain = '';

    const flushPlain = () => {
        if (currentPlain.length > 0) {
            segments.push(paint(textStyle, currentPlain));
            currentPlain = '';
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
    return segments.join('');
}

function classifySuffix(stat: StatLike | null): string | undefined {
    if (!stat) {
        return ''
    }
    if (isExecutable(stat)) {
        return '*';
    }
    if (stat.isDirectory()) {
        return '/';
    }
    if (stat.isFIFO?.() || stat.isPipe?.()) {
        return '|';
    }
    if (stat.isSymbolicLink?.()) {
        return '@';
    }
    if (stat.isSocket?.()) {
        return '=';
    }
    return undefined;
}


function formatDate(date: Date): string {
    if (date.getFullYear() > 3000) {
        return '     -      '
    }
    const now = new Date();
    const currentYear = now.getFullYear();
    const day = date.getDate().toString().padStart(2, ' ');
    const month = date.toLocaleDateString('en-US', { month: 'short' });

    if (date.getFullYear() === currentYear) {
        // This year: day month HH:MM
        const hours = date.getHours().toString().padStart(2, '0');
        const minutes = date.getMinutes().toString().padStart(2, '0');
        return `${day} ${month} ${hours}:${minutes}`;
    } else {
        // Older: day month  year (two spaces before year)
        const year = date.getFullYear();
        return `${day} ${month}  ${year}`;
    }
}
function formatSize(size: number, padWidth: number = 4): string {
    if (size === 0) {
        const dashStr = '-';
        const padding = ' '.repeat(Math.max(0, padWidth - 1));
        return paint(makeStyle({ fg: FG.grey }), `${padding}${dashStr}`);
    }

    const units = ['', 'k', 'M', 'G', 'T'];
    let unitIndex = 0;
    let sizeFloat = size;

    while (sizeFloat >= 1024 && unitIndex < units.length - 1) {
        sizeFloat /= 1024;
        unitIndex++;
    }

    let sizeStr: string;
    let colorCode: string;

    // Determine color based on size thresholds
    if (size >= 1024 * 1024 * 1024) { // > 1GB
        colorCode = themeStyles.sizeGB;
    } else if (size >= 1024 * 1024) { // > 1MB
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
    const padding = ' '.repeat(Math.max(0, padWidth - visibleLength));
    return paint(colorCode, `${padding}${sizeStr}`);
}

export function formatFilename(
    entry: Dirent
): string {
    const filename = entry.name;
    const isSymlink = entry.isSymbolicLink?.();
    const stat = isSymlink ? null : statSync(join(entry.parentPath, filename));
    const bits: string[] = [];

    const primaryStyle = styleForStat(filename, stat);
    const escapedName = escapeFilename(filename, primaryStyle, themeStyles.controlChar);

    // Handle quoting for names with spaces
    const needsQuotes = filename.includes(' ') || filename.includes("'");

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
        bits.push(' ');
        const linkTarget = readlinkSync(join(entry.parentPath, filename));
        const exists = existsSync(linkTarget);

        bits.push(paint(exists ? themeStyles.linkArrow : themeStyles.linkArrowBroken, '->'));
        bits.push(' ');

        const targetStyle = exists ? themeStyles.symlinkPath : themeStyles.brokenSymlink
        const escapedTarget = escapeFilename(linkTarget, targetStyle, themeStyles.controlChar);
        bits.push(escapedTarget);
    }

    return bits.join('');
}


// Calculate recursive directory size
function getDirectorySize(dirPath: string, cacheEnabled = true): number {
    try {

        let totalSize = 0;

        const entries = readdirSync(dirPath, { withFileTypes: true });
        if (cacheEnabled && (entries.length > 100 || dirPath.split('/').length >= 9 || dirPath.match(/(node_modules|(target\/(release|debug)\/(deps|build|incremental|.fingerprint))|.build|.git|.venv)$/))) {
            const hashK = [dirPath, Bun.file(dirPath).lastModified, Bun.hash(entries.map(e => e.name).join(','))].join('|');
            if (!cache[hashK]) {
                cache[hashK] = getDirectorySize(dirPath, false);
            }
            return cache[hashK]
        }


        for (const entry of entries) {
            const fullPath = join(dirPath, entry.name);
            // console.log(fullPath.split('/').length, fullPath)
            if (entry.isDirectory()) {
                totalSize += getDirectorySize(fullPath, cacheEnabled);
            } else if (entry.isFile()) {
                const file = Bun.file(fullPath)
                // const hashK = fullPath + '|'+ file.lastModified
                // if ((hashK in cache)) {
                //     cache[hashK] = file.size;
                // }

                totalSize += file.size
            }
        }

        return totalSize;
    }
    catch (err) {
        return -1
    }
}
if (import.meta.main) {


    const { values: flags, positionals } = parseArgs({
        strict: false,
        args: Bun.argv.slice(2),
        options: {
            all: {
                short: 'a',
                type: 'boolean',
                default: false,
            },
            reverse: {
                short: 'r',
                type: 'boolean',
                default: false,
            },
            sort: {
                short: 's',
                type: 'string',

                // default: ,
            },
        },
        allowPositionals: true,
    });
    const dirs = positionals.length === 0 ? '.' : positionals
    // const args = Bun.argv.slice(2);
    // const targetDir = args[0] || '.';
    const cacheEnabled = !process.env.TOTALSIZE
    for (const targetDir of dirs) {
        const s = lstatSync(targetDir)

        const isDir = (() => {
            if (s.isSymbolicLink()) {
                const realTargetDir = existsSync(targetDir) && realpathSync(targetDir)
                return realTargetDir && existsSync(realTargetDir) && lstatSync(realTargetDir)?.isDirectory()
            }
            return s.isDirectory()
        })()
        if (dirs.length > 1 && isDir) {
            console.log(targetDir + ':')
        }

        const entries = isDir ? readdirSync(targetDir, { withFileTypes: true })
            : readdirSync(path.dirname(targetDir), { withFileTypes: true }).filter(e => e.name === path.basename(targetDir))
        let entriesLoaded = entries.map(entry => {
            const fullPath = join(realpathSync(entry.parentPath), entry.name);
            const bf = Bun.file(fullPath)

            const size = entry.isDirectory() ? getDirectorySize(fullPath, cacheEnabled) : bf.size;
            const ts = new Date(bf.lastModified).getFullYear() > 3000 ? lstatSync(fullPath).mtimeMs : bf.lastModified
            return { entry, fullPath, size, ts }
        })
        if (flags.sort) {
            if (flags.sort.startsWith('-')) {
                flags.sort = flags.sort.slice(1)
                flags.reverse = !flags.reverse
            }
            entriesLoaded.sort((b, a) => {
                if (flags.sort === 'size') {
                    return b.size - a.size
                }
                if (flags.sort === 'time' || flags.sort === 'date') {
                    return b.ts - a.ts
                }
                return a.entry.name.localeCompare(b.entry.name)
            })
        }
        if (flags.reverse) {
            entriesLoaded.reverse()
        }

        for (const { entry, fullPath, size, ts } of entriesLoaded) {
            if (!flags.all && entry.name.startsWith('.')) {
                continue;
            }
            const datef = formatDate(new Date(ts))
            const formatted = formatFilename(entry);

            const pre = isDir ? '' : paint(themeStyles.basepath, path.dirname(targetDir) + '/')
            console.log('', formatSize(size), datef, '–', pre + formatted)
            // const fullPath = fullPath;
            // if (entry.isSymbolicLink?.()) {
            //     console.log(entry)
            //     console.log('->', fullPath, entry.isSymbolicLink?.(), readlinkSync(fullPath))

            // }
            // const stat = await lstat(fullPath);
            // console.log(
            //     await Bun.file(fullPath).stat()
            // );
        }
    }
    await cacheFile.write(JSON.stringify(cache))
}
