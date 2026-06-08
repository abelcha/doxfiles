#!/usr/bin/env bun

import { $ } from "bun";
import { existsSync } from "node:fs";
import { launchTablens } from "/me/dev/tablens";
import { DuckDBInstance } from "@duckdb/node-api";
const isTTY = process.stdout.isTTY;
/**
 * CLI tool for reading data using DuckDB.
 * Usage:
 *   bun reader.ts read_csv file.csv --all_varchar=true --delim=,
 *   bun reader.ts read_json file.json
 *   bun reader.ts fish_completion
 */

/** Helper to serialize values for DuckDB SQL */
export const serializeValue = (v: any): string => {
  if (typeof v === "string") return `'${v}'`;
  if (typeof v === "boolean") return v ? "true" : "false";
  if (Array.isArray(v)) return `[${v.map(serializeValue).join(",")}]`;
  if (typeof v === "object" && v !== null) {
    return `{${Object.entries(v)
      .map(([k, val]) => `'${k}': ${serializeValue(val)}`)
      .join(",")}}`;
  }
  return String(v);
};

/** Helper to construct DuckDB function call strings */
export const fnSerial = (
  name: string,
  file: string | string[],
  opts: Record<string, any>,
) => {
  const keys = Object.keys(opts);
  const fileArg = Array.isArray(file)
    ? `[${file.map((f) => `'${smartAtToStar(f)}'`).join(",")}]`
    : `'${smartAtToStar(file)}'`;

  if (!name || name === "from") {
    if (keys.length === 0) return fileArg;
    const serializedOpts = keys
      .map((k) => `${k}=${serializeValue(opts[k])}`)
      .join(",");
    return `${fileArg} (${serializedOpts})`;
  }

  // DuckDB natively auto-detects these via bare path — skip the wrapping function when no options
  const AUTO_DETECTED = new Set(["read_csv", "read_json", "read_ndjson", "read_parquet"]);
  if (keys.length === 0) return AUTO_DETECTED.has(name) ? fileArg : `${name}(${fileArg})`;
  const serializedOpts = keys
    .map((k) => `${k}=${serializeValue(opts[k])}`)
    .join(",");
  return `${name}(${fileArg},${serializedOpts})`;
};

/** Helper to automatically wrap SQL values in single quotes (for positional args with spaces) */
export const autoQuoteSql = (sql: string): string => {
  // 1. Handle LIKE, ILIKE, SIMILAR TO
  let result = sql.replace(
    /\b(LIKE|ILIKE|SIMILAR\s+TO)\s+([^\s'",)]+)/gi,
    "$1 '$2'",
  );

  // 2. Handle operators WITH spaces only: col = value (not col=value)
  result = result.replace(
    /(\s+(=|!=|<>|~|~~|!~|!~~|>=|<=|>|<)\s+)([^\s'",)]+)/g,
    "$1'$3'",
  );

  return result;
};

/** Helper to auto-quote values in --where flag (handles col=value without spaces) */
export const autoQuoteWhere = (sql: string): string => {
  return sql.replace(
    /(\b\w+\s*)(=|!=|<>|~|~~|!~|!~~|>=|<=|>|<)(\s*)([^\s'",)]+)/g,
    (match, col, op, space, value) => {
      // Skip if value is already quoted; for regex ops always quote (regex can't be integer)
      if (/^'.*'$/.test(value)) return match;
      if (/^-?\d+(\.\d+)?$/.test(value) && !/^[~!][~]?$/.test(op)) return match;
      return `${col}${op}${space}'${value}'`;
    },
  );
};

/**
 * Smartly replaces function-like braces {} with parentheses (),
 * ignoring quoted strings and regex quantifiers.
 */
export const smartBraceToParen = (input: string): string => {
  let result = "";
  let inSingleQuote = false;
  let inDoubleQuote = false;
  const stack: boolean[] = [];

  for (let i = 0; i < input.length; i++) {
    const char = input[i];

    // Handle string literals to avoid replacing internal braces
    if (char === "'" && !inDoubleQuote) {
      inSingleQuote = !inSingleQuote;
      result += char;
      continue;
    }
    if (char === '"' && !inSingleQuote) {
      inDoubleQuote = !inDoubleQuote;
      result += char;
      continue;
    }

    if (inSingleQuote || inDoubleQuote) {
      result += char;
      continue;
    }

    if (char === "{") {
      // Look back to see if it's preceded by an identifier: [a-zA-Z_]\w*
      let j = i - 1;
      while (j >= 0 && /[a-zA-Z0-9_]/.test(input[j])) {
        j--;
      }
      const word = input.slice(j + 1, i);
      const isIdentifier = word.length > 0 && /[a-zA-Z_]/.test(word[0]);

      if (isIdentifier) {
        result += "(";
        stack.push(true);
      } else {
        result += "{";
        stack.push(false);
      }
    } else if (char === "}") {
      if (stack.length > 0) {
        const wasConverted = stack.pop();
        result += wasConverted ? ")" : "}";
      } else {
        result += "}"; // Unmatched closing brace
      }
    } else {
      result += char;
    }
  }
  return result;
};
/**
 * Smartly replaces @ with *, ignoring quoted strings and handling escaping (\@).
 */
export const smartAtToStar = (input: string): string => {
  let result = "";
  let inSingleQuote = false;
  let inDoubleQuote = false;

  for (let i = 0; i < input.length; i++) {
    const char = input[i];

    if (char === "\\") {
      const nextChar = input[i + 1];
      if (nextChar === "@") {
        result += "@";
        i++; // skip @
        continue;
      }
    }

    if (char === "'" && !inDoubleQuote) {
      inSingleQuote = !inSingleQuote;
      result += char;
      continue;
    }
    if (char === '"' && !inSingleQuote) {
      inDoubleQuote = !inDoubleQuote;
      result += char;
      continue;
    }

    if (inSingleQuote || inDoubleQuote) {
      result += char;
      continue;
    }

    if (char === "@") {
      result += "*";
    } else if (char === "\\") {
      // Preserve backslash if it wasn't part of \@
      result += "\\";
    } else {
      result += char;
    }
  }
  return result;
};

/**
 * Parse file:alias pattern, returning [path, alias] or [path, undefined]
 * Alias is extracted from suffix like 'file.parquet:x' or 'file.csv:alias'
 */
export const parseFileAlias = (input: string): [string, string | undefined] => {
  // Check if the last colon-separated part looks like an alias (short identifier, not a path)
  const parts = input.split(":");
  if (parts.length < 2) return [input, undefined];

  const lastPart = parts[parts.length - 1];
  // If last part is short (likely alias), treat as alias; otherwise it's part of the path
  const isAlias = lastPart.length <= 20 && !/[./\\]/.test(lastPart);
  if (isAlias) {
    const path = parts.slice(0, -1).join(":");
    return [path, lastPart];
  }
  return [input, undefined];
};

export const highlightSql = (sql: string): string => {
  const ANSI_RESET = "\x1b[0m";
  const ANSI_BOLD = "\x1b[1m";
  const rgbToAnsi = (r: number, g: number, b: number) =>
    `${ANSI_BOLD}\x1b[38;2;${r};${g};${b}m`;

  const colors = {
    keyword: rgbToAnsi(16, 177, 254),
    string: rgbToAnsi(255, 120, 248),
    number: rgbToAnsi(255, 120, 248),
    operator: rgbToAnsi(122, 130, 218),
    identifier: rgbToAnsi(63, 197, 107),
    comment: rgbToAnsi(99, 109, 131),
  };

  const keywords = [
    "SELECT",
    "FROM",
    "WHERE",
    "COPY",
    "TO",
    "FORMAT",
    "DISTINCT",
    "ON",
    "USING",
    "SAMPLE",
    "AS",
    "AND",
    "OR",
    "IN",
    "IS",
    "NOT",
    "NULL",
    "LIKE",
    "ILIKE",
    "SIMILAR",
    "LIMIT",
    "OFFSET",
    "ORDER",
    "BY",
    "GROUP",
    "HAVING",
  ];

  // Regex for different tokens
  const patterns = [
    { type: "comment", regex: /(--.*|\/\*[\s\S]*?\*\/)/ },
    { type: "string", regex: /'([^']|'')*'/ },
    { type: "number", regex: /\b\d+(\.\d*)?\b/ },
    {
      type: "keyword",
      regex: new RegExp(`\\b(${keywords.join("|")})\\b`, "gi"),
    },
    {
      type: "operator",
      regex: /(=|!=|<>|~|~~|!~|!~~|>=|<=|>|<|\+|\-|\*|\/|\|\|)/,
    },
    { type: "identifier", regex: /\b[a-zA-Z_][a-zA-Z0-9_]*\b/ },
  ];

  // Tokenize and highlight
  let highlighted = "";
  let currentSql = sql;

  while (currentSql.length > 0) {
    let bestMatch: { type: string; match: string } | null = null;
    let minIndex = Infinity;

    for (const pattern of patterns) {
      const m = pattern.regex.exec(currentSql);
      if (m && m.index < minIndex) {
        minIndex = m.index;
        bestMatch = { type: pattern.type, match: m[0] };
      }
    }

    if (bestMatch && minIndex === 0) {
      const color = colors[bestMatch.type as keyof typeof colors];
      highlighted += `${color}${bestMatch.match}${ANSI_RESET}`;
      currentSql = currentSql.slice(bestMatch.match.length);
    } else {
      // Append non-matching character or prefix
      const end = bestMatch ? minIndex : currentSql.length;
      highlighted += currentSql.slice(0, end);
      currentSql = currentSql.slice(end);
    }
  }

  return highlighted;
};

/**
 * Detects if a source string is a SQL expression (function call)
 * or a raw table name (no extension and not a file on disk).
 */
export const isExpressionSource = (src: string): boolean => {
  if (src.includes("(") || src.includes("{")) return true;
  if (src.includes("*") || src.includes("?") || src.includes("@")) return false; // Wildcards = files

  // Strip :alias suffix before checking extension
  const [pathWithoutAlias] = parseFileAlias(src);
  // Check for extension
  const hasExtension = /\.[a-z0-9]+$/i.test(pathWithoutAlias);
  if (!hasExtension && !existsSync(pathWithoutAlias)) return true;

  return false;
};
export const EXT_TO_CMD: Record<string, string> = {
  csv: "read_csv",
  txt: "read_csv",
  tsv: "read_csv",
  json: "read_json",
  jsonl: "read_ndjson",
  ndjson: "read_ndjson",
  parquet: "read_parquet",
  xlsx: "read_xlsx",
  lance: "read_lance",
  vortex: "read_vortex",
  pbf: "osmium_read",
  geojson: "st_read",
};

/**
 * Mapping of DuckDB functions to their required extensions.
 * Format: { function_name: { extension: "ext_name", install: "repo" } }
 * extension: Name of the extension to LOAD
 * install: Repository to install from (default: "community")
 */
export const FN_TO_EXTENSION: Record<
  string,
  { extension: string; repo?: string }
> = {
  // httpfs extension
  read_csv_auto: { extension: "httpfs" },
  read_json_auto: { extension: "httpfs" },
  read_parquet_auto: { extension: "httpfs" },
  http_get: { extension: "httpfs" },
  http_post: { extension: "httpfs" },
  http_head: { extension: "httpfs" },
  http_delete: { extension: "httpfs" },

  // excel extension
  read_xlsx: { extension: "excel" },
  read_xls: { extension: "excel" },
  spreadsheet_query: { extension: "excel" },

  // fts (full-text search) extension
  fts_main: { extension: "fts" },
  bm25: { extension: "fts" },
  highlight: { extension: "fts" },

  // autocomplete extension
  prefix_search: { extension: "autocomplete" },
  suffix_search: { extension: "autocomplete" },

  // icu extension
  collate: { extension: "icu" },
  lower_case: { extension: "icu" },
  upper_case: { extension: "icu" },
  title_case: { extension: "icu" },

  // json extension (extra JSON functions)
  json_extract_string: { extension: "json" },
  json_transform: { extension: "json" },
  json_structure: { extension: "json" },

  // postgres scanner
  postgres_attach: { extension: "postgres" },
  postgres_scan: { extension: "postgres" },

  // mysql scanner
  mysql_attach: { extension: "mysql" },
  mysql_scan: { extension: "mysql" },

  // sqlite scanner
  sqlite_attach: { extension: "sqlite" },
  sqlite_scan: { extension: "sqlite" },
  read_sqlite: { extension: "sqlite" },

  // delta table format
  read_delta: { extension: "delta", repo: "community" },

  // arrow extension
  read_ipc: { extension: "arrow" },
  read_arrow: { extension: "arrow" },

  // tpch extension
  dbgen: { extension: "tpch" },
  tpch_queries: { extension: "tpch" },

  // tpcds extension
  dsdgen: { extension: "tpcds" },
  tpcds_queries: { extension: "tpcds" },

  // vss (vector similarity search) extension
  array_distance: { extension: "vss" },
  array_cosine_similarity: { extension: "vss" },
  array_inner_product: { extension: "vss" },

  // aws extension
  s3_list_objects: { extension: "aws" },
  s3_get_object: { extension: "aws" },

  // lance/vortex table formats
  read_lance: { extension: "lance" },
  read_vortex: { extension: "vortex" },

  // glob keys — match any function matching the pattern
  "st_*": { extension: "spatial" },
  "annofox_*": { extension: "annofox", repo: "community" },

  // osmium extension (community) — for .osm.pbf files
  "osmium_*": { extension: "osmium", repo: "community" },
};

/** COPY TO options documentation - extracted from src/copy.ts */
type CopyOptionDef = { formats: string[]; desc: string };
const COPY_OPTIONS: Record<string, CopyOptionDef> = {
  // CSV options
  compression: {
    formats: ["csv", "parquet", "json"],
    desc: "Compression type: auto, none, gzip, zstd, snappy, brotli, lz4. @default 'auto'",
  },
  dateformat: {
    formats: ["csv", "json"],
    desc: "Date format for writing dates. @see https://duckdb.org/docs/sql/functions/dateformat",
  },
  delim: {
    formats: ["csv"],
    desc: "Delimiter character to separate columns. @default ','",
  },
  sep: {
    formats: ["csv"],
    desc: "Alias for delim. Delimiter character. @default ','",
  },
  escape: {
    formats: ["csv"],
    desc: "Character before a quote character within quoted values. @default '\"'",
  },
  force_quote: {
    formats: ["csv"],
    desc: "List of columns to always add quotes to. @default []",
  },
  header: {
    formats: ["csv"],
    desc: "Whether to write a header for the CSV file. @default true",
  },
  nullstr: {
    formats: ["csv"],
    desc: "String to represent NULL value. @default '' (empty string)",
  },
  prefix: {
    formats: ["csv"],
    desc: "Prefix string for CSV file. Requires header=false. @default ''",
  },
  suffix: {
    formats: ["csv"],
    desc: "Suffix string for CSV file. Requires header=false. @default ''",
  },
  quote: {
    formats: ["csv"],
    desc: "Quoting character for data values. @default '\"'",
  },
  timestampformat: {
    formats: ["csv", "json"],
    desc: "Timestamp format for writing. @see https://duckdb.org/docs/sql/functions/dateformat",
  },
  // Parquet options
  compression_level: {
    formats: ["parquet"],
    desc: "Compression level 1-22 (only for zstd). @default 3",
  },
  field_ids: {
    formats: ["parquet"],
    desc: "Field ID for each column. Pass 'auto' to infer. @default undefined",
  },
  row_group_size_bytes: {
    formats: ["parquet"],
    desc: "Target size of each row group in bytes. @default row_group_size * 1024",
  },
  row_group_size: {
    formats: ["parquet"],
    desc: "Target number of rows per row group. @default 122880",
  },
  row_groups_per_file: {
    formats: ["parquet"],
    desc: "Create new file after N row groups.",
  },
  // JSON options
  array: {
    formats: ["json"],
    desc: "Write JSON array of records (true) or newline-delimited (false). @default false",
  },
  // Generic options (all formats)
  format: {
    formats: ["all"],
    desc: "Explicit format: parquet, csv, json, arrow, jsonl.",
  },
  use_tmp_file: {
    formats: ["all"],
    desc: "Write to temp file first to prevent broken overwrites. @default 'auto'",
  },
  overwrite_or_ignore: {
    formats: ["all"],
    desc: "Allow overwriting files (with partition_by). @default false",
  },
  overwrite: {
    formats: ["all"],
    desc: "Remove existing files in targeted directories. @default false",
  },
  append: {
    formats: ["all"],
    desc: "Regenerate path if file exists (with partition_by). @default false",
  },
  filename_pattern: {
    formats: ["all"],
    desc: "Pattern for filename, can use {uuid} or {id}. @default 'auto'",
  },
  file_extension: {
    formats: ["all"],
    desc: "File extension for generated files. @default 'auto'",
  },
  per_thread_output: {
    formats: ["all"],
    desc: "Generate one file per thread. @default false",
  },
  file_size_bytes: {
    formats: ["all"],
    desc: "Max file size before creating new file (e.g., '1MB'). @default ''",
  },
  partition_by: {
    formats: ["all"],
    desc: "Columns to partition by using Hive scheme. @default []",
  },
  return_files: {
    formats: ["all"],
    desc: "Include created filepaths in query result. @default false",
  },
  write_partition_columns: {
    formats: ["all"],
    desc: "Write partition columns into files. @default false",
  },
};

/** mapping of flags to their fixed list of possible values for shell completions */
const FLAG_SUGGESTIONS: Record<string, string[]> = {
  compression: [
    "uncompressed",
    "brotli",
    "gzip",
    "snappy",
    "lz4",
    "lz4_raw",
    "zstd",
    "auto",
    "none",
  ],
  encoding: ["utf-8", "utf-16", "latin-1"],
  format: [
    "auto",
    "newline_delimited",
    "array",
    "parquet",
    "csv",
    "tsv",
    "json",
    "jsonl",
    "arrow",
  ],
  new_line: ["\\r", "\\n", "\\r\\n"],
  mode: ["box", "line", "json", "csv", "markdown"],
};

/** Map file extensions to format names for COPY options filtering */
const EXT_TO_COPY_FORMAT: Record<string, string> = {
  csv: "csv",
  tsv: "csv",
  txt: "csv",
  parquet: "parquet",
  json: "json",
  jsonl: "json",
  ndjson: "json",
};

/** Helper to check if an option applies to a format */
const optionMatchesFormat = (opt: CopyOptionDef, format: string): boolean => {
  return opt.formats.includes("all") || opt.formats.includes(format);
};

/** Legacy flat format for help display and option parsing */
export const COPY_OPTIONS_DOCS: Record<string, string> = Object.fromEntries(
  Object.entries(COPY_OPTIONS).map(([k, v]) => [
    k,
    `[${v.formats.join("/")}] ${v.desc}`,
  ]),
);

export type SqlOptions = {
  select?: string;
  where: string[];
  join: string[];
  using?: string;
  on?: string;
  distinct?: string;
  sample?: string;
  sort?: string;
  limit?: string;
  summarize?: boolean;
  analyze?: boolean;
  with: string[];
  groupBy?: string;
  having?: string;
  countBy?: string;
  pipe: string[];
};

export type ParsedArgs = {
  command: string;
  files: string[];
  options: Record<string, any>;
  toPath?: string;
  mode?: string;
  truncate: boolean;
  tui: boolean;
  queryParts: string[];
  sqlOptions: SqlOptions;
  copyOptions: Record<string, any>;
  format?: string;
};

export const COMMANDS_DOCS: Record<string, Record<string, string>> = {
  read_csv: {
    all_varchar:
      "Skip type detection and assume all columns are of type VARCHAR. @default false",
    allow_quoted_nulls:
      "Allow the conversion of quoted values to NULL values. @default true",
    auto_detect: "Auto detect CSV parameters. @default true",
    auto_type_candidates:
      "Types that the sniffer uses when detecting column types. @default ['VARCHAR', 'BIGINT', 'DOUBLE', 'DATE', 'TIME', 'TIMESTAMP']",
    buffer_size:
      "Size of the buffers used to read files, in bytes. @default 16 * max_line_size",
    column_names: "Alias for names. Column names, as a list. @default []",
    column_types:
      "Alias for types. Column types, as either a list (by position) or a struct (by name). @default {} or []",
    columns:
      "Column names and types, as a struct. Using this option disables auto detection. @default {}",
    comment: "Character used to initiate comments. @default ''",
    compression: "Method used to compress CSV files. @default 'auto'",
    dateformat: "Date format used when parsing and writing dates. @default ''",
    decimal_separator: "Decimal separator for numbers. @default '.'",
    delim:
      "Delimiter character used to separate columns. Alias for sep. @default ','",
    dtypes:
      "Alias for types. Column types, as either a list (by position) or a struct (by name). @default {} or []",
    encoding:
      "Encoding used by the CSV file. Options are 'utf-8', 'utf-16', 'latin-1'. @default 'utf-8'",
    escape:
      "String used to escape the quote character within quoted values. @default '\"'",
    filename:
      "Add path of the containing file to each row to a column named 'filename'. @default false",
    files_to_sniff:
      "Number of lines at the top of the file to scan for auto-detection. @default 20480",
    force_not_null:
      "Do not match values in the specified columns against the NULL string. @default []",
    header: "First line of each file contains the column names. @default false",
    hive_partitioning:
      "Interpret the path as a Hive partitioned path. @default false",
    hive_types: "Hive types. @default -",
    hive_types_autocast: "Hive types autocast. @default true",
    ignore_errors: "Ignore any parsing errors encountered. @default false",
    max_line_size:
      "Maximum line size, in bytes. Alias: maximum_line_size. @default 2000000",
    maximum_line_size:
      "Alias for max_line_size. Maximum line size, in bytes. @default 2000000",
    names: "Column names, as a list. Alias: column_names. @default []",
    new_line:
      "New line character(s). Options are '\\r', '\\n', or '\\r\\n'. @default ''",
    normalize_names:
      "Normalize column names. This removes any non-alphanumeric characters. @default false",
    null_padding:
      "Pad the remaining columns on the right with NULL values when a line lacks columns. @default false",
    nullstr: "Strings that represent a NULL value. Alias: null. @default ''",
    parallel: "Use the parallel CSV reader. @default true",
    quote: "String used to quote values. @default '\"'",
    rejects_limit:
      "Upper limit on the number of faulty lines per file that are recorded. @default 0",
    rejects_scan:
      "Name of the temporary table where information on faulty scans is stored. @default 'reject_scans'",
    rejects_table:
      "Name of the temporary table where information on faulty lines is stored. @default 'reject_errors'",
    sample_size: "Number of sample lines for auto detection. @default -1",
    sep: "Delimiter character used to separate columns. Alias for delim. @default ','",
    skip: "Number of lines to skip at the start of each file. @default 0",
    store_rejects:
      "Skip any lines with errors and store them in the rejects table. @default false",
    strict_mode:
      "Enforces the strictness level of the CSV Reader. @default true",
    thousands: "The thousands separator. @default ''",
    timestampformat:
      "Timestamp format used when parsing and writing timestamps. @default ''",
    types:
      "Column types, as either a list (by position) or a struct (by name). @default {} or []",
    union_by_name:
      "Whether the columns of multiple files should be combined by name. @default false (but true in reader if multiple files)",
  },
  read_json: {
    auto_detect:
      "Whether to auto-detect the names of the keys and data types. @default true",
    compression: "Compression method (gzip, zstd, etc.). @default 'auto'",
    convert_strings_to_integers: "Convert strings to integers. @default false",
    format:
      "JSON format ('auto', 'newline_delimited', 'array'). @default 'auto'",
    ignore_errors: "Ignore parse errors. @default false",
    maximum_object_size: "Maximum object size in bytes. @default 16777216",
    sample_size: "Number of sample objects for detection. @default -1",
    union_by_name:
      "Whether the columns of multiple files should be combined by name. @default false (but true in reader if multiple files)",
  },
  read_ndjson: {
    auto_detect:
      "Whether to auto-detect the names of the keys and data types. @default true",
    compression: "Compression method (gzip, zstd, etc.). @default 'auto'",
    convert_strings_to_integers: "Convert strings to integers. @default false",
    format:
      "JSON format ('auto', 'newline_delimited', 'array'). @default 'auto'",
    ignore_errors: "Ignore parse errors. @default false",
    maximum_object_size: "Maximum object size in bytes. @default 16777216",
    sample_size: "Number of sample objects for detection. @default -1",
    union_by_name:
      "Whether the columns of multiple files should be combined by name. @default false (but true in reader if multiple files)",
  },
  read_parquet: {
    binary_as_string: "Load binary columns as strings. @default false",
    can_have_nan:
      "Whether or not to include the can_have_nan column. @default false",
    compression: "Compression method (snappy, zstd, etc.). @default 'snappy'",
    filename: "Include filename column. @default false",
    hive_partitioning: "Interpret path as Hive partitioned path. @default true",
    union_by_name: "Union multiple schemas by name. @default false",
  },
  read_xlsx: {
    header: "Treat first row as column names. @default true",
    sheet: "Name of the sheet to read. @default first sheet",
    all_varchar: "Read all cells as VARCHARs. @default false",
    range: "Range of cells to read (e.g., 'A1:B2').",
  },
  read_lance: {},
  read_vortex: {},
  osmium_read: {},
};

function showHelp(command?: string) {
  if (command === "list_extensions") {
    console.log("DuckDB Functions that Auto-load Extensions:\n");
    console.log("Functions are grouped by the extension they require.");

    // Group functions by extension
    const extToFns: Record<string, string[]> = {};
    for (const [fn, extInfo] of Object.entries(FN_TO_EXTENSION)) {
      if (!extToFns[extInfo.extension]) {
        extToFns[extInfo.extension] = [];
      }
      extToFns[extInfo.extension].push(fn);
    }

    // Print grouped functions
    for (const [ext, fns] of Object.entries(extToFns).sort()) {
      console.log(`\n[${ext}]`);
      for (const fn of fns.sort()) {
        console.log(`  ${fn}`);
      }
    }
    console.log("\nUsage:");
    console.log(
      "  These extensions are auto-loaded when their functions are detected in your query.",
    );
    console.log(
      "  Example: reader.ts read_csv 's3://bucket/data.csv' (auto-loads httpfs)",
    );
    return;
  }

  if (command && COMMANDS_DOCS[command]) {
    console.log(`Usage: reader.ts ${command} <file> [options]`);
    console.log(`\nOptions for ${command}:`);
    for (const [key, doc] of Object.entries(COMMANDS_DOCS[command])) {
      console.log(`  --${key.padEnd(20)} ${doc}`);
    }
  } else {
    console.log("Usage: reader.ts <command> <file> [options]");
    console.log("\nCommands:");
    for (const cmd of Object.keys(COMMANDS_DOCS)) {
      console.log(`  ${cmd.padEnd(20)} Read data using ${cmd}`);
    }
    console.log(
      `  ${"fish_completion".padEnd(20)} Generate Fish shell completion script`,
    );
    console.log(
      `  ${"list_extensions".padEnd(
        20,
      )} List functions that auto-load extensions`,
    );

    console.log("\nAll Options (per command):");
    for (const [cmd, options] of Object.entries(COMMANDS_DOCS)) {
      console.log(`\n[${cmd}]`);
      for (const [key, doc] of Object.entries(options)) {
        console.log(`  --${key.padEnd(20)} ${doc}`);
      }
    }
  }

  console.log("\nGeneral Options:");
  console.log(
    "  --to=<path>        Export result to a file (CSV, JSON, Parquet)",
  );
  console.log(
    "  --format=<fmt>     Output format (csv, tsv, json, jsonl, parquet) to stdout",
  );
  console.log("\nCOPY TO Options (use with --to):");
  for (const [key, doc] of Object.entries(COPY_OPTIONS_DOCS)) {
    console.log(`  --${key.replace(/_/g, "-").padEnd(20)} ${doc}`);
  }
  console.log("  -s, --select=<cols> Select specific columns");
  console.log("  --exclude=<cols>   Exclude columns (SELECT * EXCLUDE (cols))");
  console.log("  --where=<cond>     Filter rows with a WHERE clause");
  console.log(
    "  -j, --join=<expr>  Join with another table (cumulative). Prefix with LATERAL/LEFT/etc or just table ON cond",
  );
  console.log(
    "  --left-join, --anti-join, --semi-join, etc.  Typed joins",
  );
  console.log(
    "  --on=<cond>        Join condition for ON clause (used with --join)",
  );
  console.log(
    "  --using=<col>      Join column(s) for USING clause (used with --join)",
  );
  console.log(
    "  -d, --distinct=<col> Select distinct rows based on a column (DISTINCT ON)",
  );
  console.log(
    "  --sample[=<n>]     Sample N rows (USING SAMPLE). Bare --sample uses default limit (1000)",
  );
  console.log("  -s, --sort=<cols>  Sort result by columns (ORDER BY)");
  console.log("  -g, --group-by=<cols> Group result by columns (GROUP BY)");
  console.log("  --having=<cond>    Filter groups with a HAVING clause");
  console.log(
    "  --count-by=<col>   Count rows grouped by column (shortcut for select+group+sort)",
  );
  console.log("  --summarize        Show summary statistics of the result");
  console.log("  --analyze          Pretty per-column analysis: enums show value counts, numerics show bars");
  console.log(
    "  --sample-size=<n>  Number of lines to scan for auto-detection",
  );
  console.log("  -l, --limit[=<n>]  Limit rows returned. Bare --limit removes auto-limit (1000)");
  console.log("  --union-by-name    Whether to union multiple files by name");
  console.log("  --ignore-errors    Whether to ignore parsing errors");
  console.log(
    "  -m, --mode=<mode>  DuckDB output mode (box, line, json, csv, etc.). @default 'box'",
  );
  console.log("  -t, --tui          Open result in tablens TUI");
  console.log(
    "  --with=<cte>       Add a CTE. The base table is injected into the first one.",
  );
  console.log('                     Example: --with "X1 AS (SELECT contact)"');
  console.log(
    "  --pipe=<sql>       Pipe result through another query (chainable). The previous result becomes a subquery.",
  );
  console.log("  --no-truncate      Do not truncate output to terminal width");
  console.log("  -h, --help         Show this help message");
}

async function completeSql(file: string, partial: string) {
  // Handle comma-separated files
  const files = file.includes(",")
    ? file.split(",").filter((f) => existsSync(f.trim()))
    : [file];
  if (files.length === 0) return;

  const ext = files[0].split(".").pop()?.toLowerCase() || "";
  const cmd = EXT_TO_CMD[ext];
  if (!cmd) return;

  const src = fnSerial(cmd, files.length > 1 ? files : files[0], {});

  try {
    const instance = await DuckDBInstance.create();
    const conn = await instance.connect();
    await conn.run(`CREATE OR REPLACE TEMP VIEW _t AS FROM ${src} LIMIT 0`);

    // Check for method-style: col.prefix -> suggest functions as col.func()
    const dotMatch = partial.match(/^(\w+)\.(\w*)$/);
    if (dotMatch) {
      const [, col, prefix] = dotMatch;
      const escaped = prefix.replace(/'/g, "''");
      const result = await conn.run(
        `SELECT DISTINCT function_name, first(description) as description
         FROM duckdb_functions()
         WHERE function_name ILIKE '${escaped}%'
           AND function_type IN ('scalar', 'scalar_function')
         GROUP BY function_name
         ORDER BY function_name
         LIMIT 20`,
      );
      const rows = await result.getRowsJS();
      for (const [fn, desc] of rows) {
        const description = desc ? String(desc).slice(0, 40) : "function";
        console.log(`${col}.${fn}()\t${description}`);
      }
      return;
    }

    // Standard completion
    const escaped = partial.replace(/'/g, "''");
    const result = await conn.run(
      `SELECT
        c.suggestion,
        c.suggestion_type,
        first(f.description) as description
       FROM sql_auto_complete('FROM _t SELECT ${escaped}') c
       LEFT JOIN duckdb_functions() f ON c.suggestion = f.function_name
       WHERE (c.suggestion ILIKE '${escaped}%' OR c.suggestion ILIKE '"${escaped}%') AND c.suggestion_type != 'keyword'
       GROUP BY 1, 2
       ORDER BY c.suggestion_type = 'column' DESC, c.suggestion`,
    );
    const rows = await result.getRowsJS();
    for (const [suggestion, type, desc] of rows) {
      const description = desc ? String(desc).slice(0, 40) : type;
      console.log(`${suggestion}\t${description}`);
    }
  } catch {
    // silently fail
  }
}

async function completeColumns(file: string, prefix = "") {
  // Handle comma-separated files
  const files = file.includes(",")
    ? file.split(",").filter((f) => existsSync(f.trim()))
    : [file];
  if (files.length === 0) return;

  const ext = files[0].split(".").pop()?.toLowerCase() || "";
  const cmd = EXT_TO_CMD[ext];
  if (!cmd) return;

  // Cache in /tmp based on file path + mtime (only for no prefix)
  const { statSync } = await import("node:fs");
  const cacheKey = Buffer.from(file + prefix).toString("base64url");
  const cachePath = `/tmp/reader-cols-${cacheKey}`;

  try {
    const maxMtime = Math.max(...files.map((f) => statSync(f).mtimeMs));
    const cacheStat = statSync(cachePath);
    if (cacheStat.mtimeMs > maxMtime) {
      process.stdout.write(await Bun.file(cachePath).text());
      return;
    }
  } catch {
    // No cache or stale
  }

  try {
    const instance = await DuckDBInstance.create();
    const conn = await instance.connect();
    const lines: string[] = [];

    const compact = (n: number | bigint | null): string => {
      if (n == null) return "";
      const num = Number(n);
      if (num >= 1_000_000) return `${(num / 1_000_000).toFixed(1)}M`;
      if (num >= 1_000) return `${(num / 1_000).toFixed(0)}k`;
      return String(num);
    };

    // Convert BigInt to Number recursively
    const toNum = (v: any): any => {
      if (typeof v === "bigint") return Number(v);
      if (Array.isArray(v)) return v.map(toNum);
      return v;
    };

    const formatRow = (col: string, uniq: any, nullPct: any, topVals: any) => {
      // Convert "a, b, c" path to "a.b.c" for nested parquet fields
      const colPath = col.replace(/, /g, ".");
      const notNull = 100 - Number(nullPct || 0);
      const pct = notNull < 100 ? `${notNull}%` : "";

      // Format top values: show multiple if short, otherwise just one
      let exStr = "";
      const vals = toNum(topVals);
      if (vals && Array.isArray(vals) && vals.length > 0) {
        const strs = vals.map((v: any) => String(v ?? "").slice(0, 12));
        // If total length is short, show multiple; otherwise just first
        const joined = strs.join(" ");
        if (joined.length <= 25 && strs.length > 1) {
          exStr = strs.map((v: string) => `"${v}"`).join(" ");
        } else if (strs[0]) {
          exStr = `"${strs[0]}"`;
        }
      } else if (vals) {
        exStr = `"${String(vals).slice(0, 15)}"`;
      }

      const desc = [pct, exStr].filter(Boolean).join(" – ");
      return `${colPath}\t${desc}`;
    };

    // Build file arg for queries
    const fileArg =
      files.length > 1
        ? `[${files.map((f) => `'${f}'`).join(",")}]`
        : `'${files[0]}'`;

    if (ext === "parquet") {
      // Fast path: read parquet internal metadata (no data scan)
      // Convert prefix from dot notation to comma notation for matching
      const prefixComma = prefix.replace(/\./g, ", ");

      if (prefix) {
        // Show all children under this prefix
        const query = `
          SELECT path_in_schema as col,
            sum(stats_distinct_count) as uniq,
            round(100.0 * sum(stats_null_count) / sum(num_values))::int as null_pct,
            [first(stats_min_value) filter (stats_min_value is not null),
             first(stats_max_value) filter (stats_max_value is not null and stats_max_value != stats_min_value)] as top_vals
          FROM parquet_metadata(${fileArg})
          WHERE path_in_schema LIKE '${prefixComma}, %'
          GROUP BY path_in_schema
          ORDER BY null_pct ASC NULLS LAST`;
        const result = await conn.run(query);
        for (const [col, uniq, nullPct, topVals] of await result.getRowsJS()) {
          lines.push(formatRow(String(col), uniq, nullPct, topVals));
        }
      } else {
        // No prefix: show top-level columns, collapse nested with many descendants
        const query = `
          WITH raw AS (
            SELECT path_in_schema as col,
              sum(stats_distinct_count) as uniq,
              round(100.0 * sum(stats_null_count) / sum(num_values))::int as null_pct,
              [first(stats_min_value) filter (stats_min_value is not null),
               first(stats_max_value) filter (stats_max_value is not null and stats_max_value != stats_min_value)] as top_vals
            FROM parquet_metadata(${fileArg})
            GROUP BY path_in_schema
          ),
          top_level AS (
            SELECT split_part(col, ', ', 1) as root, count(*) as descendant_count
            FROM raw WHERE col LIKE '%, %'
            GROUP BY root
          )
          SELECT r.col, r.uniq, r.null_pct, r.top_vals, COALESCE(t.descendant_count, 0) as descendant_count
          FROM raw r
          LEFT JOIN top_level t ON split_part(r.col, ', ', 1) = t.root AND r.col LIKE '%, %'
          ORDER BY r.null_pct ASC NULLS LAST`;
        const result = await conn.run(query);
        const seen = new Set<string>();
        for (const [
          col,
          uniq,
          nullPct,
          topVals,
          descendantCount,
        ] of await result.getRowsJS()) {
          const colStr = String(col);
          const isNested = colStr.includes(", ");
          const count = Number(descendantCount);
          if (isNested && count > 5) {
            // Collapse: show only root with "..." indicator
            const root = colStr.split(", ")[0];
            if (!seen.has(root)) {
              seen.add(root);
              lines.push(`${root}\t${count} nested fields...`);
            }
          } else {
            lines.push(formatRow(colStr, uniq, nullPct, topVals));
          }
        }
      }
    } else {
      // CSV/JSON: sample for everything
      const src = fnSerial(cmd, files.length > 1 ? files : files[0], {});
      const query = `
        SELECT column_name, approx_count_distinct(v) as uniq,
          round(100.0 * sum(v is null::int) / count(*))::int as null_pct,
          approx_top_k(v, 3) as top_vals
        FROM (SELECT columns(*)::VARCHAR FROM ${src} USING SAMPLE 1000)
        UNPIVOT (v FOR column_name IN (*))
        GROUP BY column_name
        ORDER BY null_pct ASC NULLS LAST`;
      const result = await conn.run(query);
      for (const [col, uniq, nullPct, topVals] of await result.getRowsJS()) {
        lines.push(formatRow(col as string, uniq, nullPct, topVals));
      }
    }

    const output = lines.join("\n");
    await Bun.write(cachePath, output);
    console.log(output);
  } catch {
    // silently fail for completions
  }
}

function generateFishCompletion() {
  const bin = "reader";
  const cmds = Object.keys(COMMANDS_DOCS);

  console.log(`# Fish completion for ${bin}`);
  console.log(`complete -c ${bin} -f`); // Global: disable file completion by default

  // Subcommands
  for (const cmd of cmds) {
    console.log(
      `complete -c ${bin} -f -n "__fish_use_subcommand" -a ${cmd} -d "Read data using ${cmd}"`,
    );
  }
  console.log(
    `complete -c ${bin} -f -n "__fish_use_subcommand" -a fish_completion -d "Generate Fish shell completion script"`,
  );
  console.log(
    `complete -c ${bin} -f -n "__fish_use_subcommand" -a list_extensions -d "List functions that auto-load extensions"`,
  );

  // Flags for each subcommand
  for (const [cmd, options] of Object.entries(COMMANDS_DOCS)) {
    for (const [opt, doc] of Object.entries(options)) {
      const description = doc.split(".")[0].replace(/"/g, '\\"');
      const suggestions = FLAG_SUGGESTIONS[opt]
        ? ` -a "${FLAG_SUGGESTIONS[opt].join(" ")}"`
        : "";
      console.log(
        `complete -c ${bin} -f -n "__fish_seen_subcommand_from ${cmd}" -l ${opt.replace(
          /_/g,
          "-",
        )}${suggestions} -d "${description}"`,
      );
    }
  }

  // Auto-detection: allow flags for file extensions
  for (const [ext, cmd] of Object.entries(EXT_TO_CMD)) {
    for (const [opt, doc] of Object.entries(COMMANDS_DOCS[cmd])) {
      const description = doc.split(".")[0].replace(/"/g, '\\"');
      const suggestions = FLAG_SUGGESTIONS[opt]
        ? ` -a "${FLAG_SUGGESTIONS[opt].join(" ")}"`
        : "";
      // This is a bit simplified; ideally we'd check if a file with this extension is present
      console.log(
        `complete -c ${bin} -f -n "commandline -opc | string match -rg '\\\\.${ext}\\$'" -l ${opt.replace(
          /_/g,
          "-",
        )}${suggestions} -d "${description}"`,
      );
    }
  }

  // Helper: condition for "has --to or --format"
  const hasToFlag = `commandline -opc | string match -rq -- '--to|--format'`;
  const notHasToFlag = `not ${hasToFlag}`;

  // COPY options - filtered by extension in --to=file.ext
  // For each format, generate completions that only show when --to matches that extension
  const formatExtPatterns: Record<string, string> = {
    csv: `\\\\.csv|\\\\.tsv|\\\\.txt`,
    parquet: `\\\\.parquet`,
    json: `\\\\.json|\\\\.jsonl|\\\\.ndjson`,
  };

  for (const [opt, def] of Object.entries(COPY_OPTIONS)) {
    const description = def.desc.split(".")[0].replace(/"/g, '\\"');
    const optFlag = opt.replace(/_/g, "-");
    const suggestions = FLAG_SUGGESTIONS[opt]
      ? ` -a "${FLAG_SUGGESTIONS[opt].join(" ")}"`
      : "";

    if (def.formats.includes("all")) {
      // Generic options: show when --to is present (any extension)
      console.log(
        `complete -c ${bin} -f -n "${hasToFlag}" -l ${optFlag}${suggestions} -d "COPY [all] ${description}"`,
      );
    } else {
      // Format-specific options: show only when --to matches the extension
      for (const fmt of def.formats) {
        const extPattern = formatExtPatterns[fmt];
        if (extPattern) {
          console.log(
            `complete -c ${bin} -f -n "commandline -opc | string match -rq -- '--to=.*?(${extPattern})'" -l ${optFlag}${suggestions} -d "COPY [${fmt}] ${description}"`,
          );
        }
      }
    }
  }

  // Global flags - only show when --to is NOT present
  console.log(
    `complete -c ${bin} -F -l to -d "Export result to a file (CSV, JSON, Parquet)" -r`,
  );
  console.log(
    `complete -c ${bin} -f -l format -d "Output format (csv, tsv, json, jsonl, parquet) to stdout" -r -a "csv tsv json jsonl parquet"`,
  );
  // --select with dynamic column completion (supports comma-separated)
  // Uses sql_auto_complete when partial input exists
  console.log(`
function __fish_reader_complete_columns
    set -l tokens (commandline -opc)
    set -l cur (commandline -ct)

    # Find all data files (multiple positional args)
    set -l files
    for tok in $tokens
        if string match -qr '\\.(csv|tsv|txt|json|jsonl|ndjson|parquet|xlsx|lance|vortex)$' -- $tok
            set -a files $tok
        end
    end
    test (count $files) -eq 0 && return

    # Join files with comma for reader
    set -l file (string join ',' $files)

    # Get the last part after comma
    set -l prefix ""
    set -l partial ""
    if string match -q '*,*' -- $cur
        set prefix (string replace -r ',[^,]*$' ',' -- $cur)
        set partial (string replace -r '.*,' '' -- $cur)
    else
        set partial $cur
    end

    # Check if partial ends with dot (nested field access)
    if string match -qr '\\w+\\.$' -- $partial
        # Show all nested children for this prefix
        set -l nested_prefix (string replace -r '\\.$' '' -- $partial)
        for col in (reader _complete_columns $file $nested_prefix 2>/dev/null)
            set -l name (string split -m1 \\t $col)[1]
            set -l desc (string split -m1 \\t $col)[2]
            printf "%s%s\\t%s\\n" $prefix $name $desc
        end
    else if test -n "$partial"
        # Partial input, use sql_auto_complete for functions/columns
        for row in (reader _complete_sql $file $partial 2>/dev/null)
            set -l name (string split -m1 \\t $row)[1]
            set -l typ (string split -m1 \\t $row)[2]
            printf "%s%s\\t%s\\n" $prefix $name $typ
        end
    else
        # No input yet, show columns with stats
        for col in (reader _complete_columns $file 2>/dev/null)
            set -l name (string split -m1 \\t $col)[1]
            set -l desc (string split -m1 \\t $col)[2]
            printf "%s%s\\t%s\\n" $prefix $name $desc
        end
    end
end`);
  console.log(
    `complete -c ${bin} -f -k -n "${notHasToFlag}" -l select -s s -d "Select specific columns" -r -a "(__fish_reader_complete_columns)"`,
  );
  console.log(
    `complete -c ${bin} -f -k -n "${notHasToFlag}" -l exclude -d "Exclude columns (SELECT * EXCLUDE (cols))" -r -a "(__fish_reader_complete_columns)"`,
  );
  console.log(
    `complete -c ${bin} -f -k -n "${notHasToFlag}" -l where -d "Filter rows with a WHERE clause" -r -a "(__fish_reader_complete_columns)"`,
  );
  console.log(
    `complete -c ${bin} -f -n "${notHasToFlag}" -l join -s j -d "Join with another table (cumulative)" -r`,
  );
  for (const jt of ["left", "right", "inner", "outer", "cross", "natural", "anti", "semi", "full", "positional"]) {
    console.log(
      `complete -c ${bin} -f -n "${notHasToFlag}" -l ${jt}-join -d "${jt.toUpperCase()} JOIN with another table" -r`,
    );
  }
  console.log(
    `complete -c ${bin} -f -k -n "${notHasToFlag}" -l on -d "Join condition for ON clause (used with --join)" -r -a "(__fish_reader_complete_columns)"`,
  );
  console.log(
    `complete -c ${bin} -f -k -n "${notHasToFlag}" -l using -d "Join column(s) for USING clause (used with --join)" -r -a "(__fish_reader_complete_columns)"`,
  );
  console.log(
    `complete -c ${bin} -f -k -n "${notHasToFlag}" -l distinct -s d -d "Select distinct rows based on a column" -r -a "(__fish_reader_complete_columns)"`,
  );
  console.log(
    `complete -c ${bin} -f -n "${notHasToFlag}" -l sample -d "Sample N rows from the result" -r`,
  );
  console.log(
    `complete -c ${bin} -f -k -n "${notHasToFlag}" -l sort -d "Sort result by columns (ORDER BY)" -r -a "(__fish_reader_complete_columns)"`,
  );
  console.log(
    `complete -c ${bin} -f -k -n "${notHasToFlag}" -l order-by -d "Sort result by columns (ORDER BY)" -r -a "(__fish_reader_complete_columns)"`,
  );
  console.log(
    `complete -c ${bin} -f -k -n "${notHasToFlag}" -l group-by -s g -d "Group result by columns (GROUP BY)" -r -a "(__fish_reader_complete_columns)"`,
  );
  console.log(
    `complete -c ${bin} -f -k -n "${notHasToFlag}" -l having -d "Filter groups with a HAVING clause" -r -a "(__fish_reader_complete_columns)"`,
  );
  console.log(
    `complete -c ${bin} -f -k -n "${notHasToFlag}" -l count-by -d "Count rows grouped by column" -r -a "(__fish_reader_complete_columns)"`,
  );
  console.log(
    `complete -c ${bin} -f -n "${notHasToFlag}" -l summarize -d "Show summary statistics of the result"`,
  );
  console.log(
    `complete -c ${bin} -f -n "${notHasToFlag}" -l analyze -d "Pretty per-column analysis with enum counts & bars"`,
  );
  console.log(
    `complete -c ${bin} -f -n "${notHasToFlag}" -l sample-size -d "Number of lines to scan for auto-detection" -r`,
  );
  console.log(
    `complete -c ${bin} -f -n "${notHasToFlag}" -l limit -s l -d "Limit the number of rows returned" -r`,
  );
  console.log(
    `complete -c ${bin} -f -n "${notHasToFlag}" -l union-by-name -d "Whether to union files by name"`,
  );
  console.log(
    `complete -c ${bin} -f -n "${notHasToFlag}" -l ignore-errors -d "Whether to ignore errors"`,
  );
  console.log(
    `complete -c ${bin} -f -n "${notHasToFlag}" -l help -d "Show help message"`,
  );
  console.log(
    `complete -c ${bin} -f -n "${notHasToFlag}" -s h -d "Show help message"`,
  );
  console.log(
    `complete -c ${bin} -f -n "${notHasToFlag}" -l mode -s m -a "box line json csv markdown" -d "Output format"`,
  );
  console.log(
    `complete -c ${bin} -f -n "${notHasToFlag}" -l tui -s t -d "Open result in tablens TUI"`,
  );
  console.log(
    `complete -c ${bin} -f -n "${notHasToFlag}" -l with -d "Add a CTE (Common Table Expression)" -r`,
  );
  console.log(
    `complete -c ${bin} -f -n "${notHasToFlag}" -l pipe -d "Pipe result through another query (chainable)" -r`,
  );
  console.log(
    `complete -c ${bin} -f -n "${notHasToFlag}" -l no-truncate -d "Do not truncate output to terminal width"`,
  );

  // Enable file completion
  console.log(`complete -c ${bin} -F`);
}

/** Parse CLI arguments into structured options */
export function parseArgs(args: string[]): ParsedArgs {
  let command = "";
  let files: string[] = [];
  const options: any = {};
  let toPath: string | undefined = undefined;
  let mode: string | undefined = undefined;
  let truncate = true;
  let tui = false;
  let queryParts: string[] = [];
  const sqlOptions: SqlOptions = { where: [], join: [], with: [], pipe: [] };
  const copyOptions: Record<string, any> = {};
  let format: string | undefined = undefined;
  let isCopyTargetSeen = false;

  for (let i = 0; i < args.length; i++) {
    const arg = args[i];
    if (arg.startsWith("--") || arg.startsWith("-")) {
      const cleanArg = arg.startsWith("--") ? arg.slice(2) : arg.slice(1);
      const eqIdx = cleanArg.indexOf("=");
      const rawKey = eqIdx === -1 ? cleanArg : cleanArg.slice(0, eqIdx);
      const rawValue = eqIdx === -1 ? undefined : cleanArg.slice(eqIdx + 1);
      const key = rawKey.replace(/-/g, "_");

      if (key === "to") {
        toPath = rawValue || args[++i];
        isCopyTargetSeen = true;
        const toExt = toPath.split(".").pop()?.toLowerCase();
        if ((toExt === "vortex" || toExt === "lance") && !format) {
          format = toExt;
        }
        continue;
      }

      if (key === "format") {
        format = rawValue || args[++i];
        isCopyTargetSeen = true;
        continue;
      }

      if (key === "mode" || key === "m") {
        mode = rawValue || args[++i];
        continue;
      }

      if (key === "tui" || key === "t") {
        tui = true;
        continue;
      }

      if (key === "no_truncate") {
        truncate = false;
        continue;
      }

      if (key === "help" || key === "h") {
        continue;
      }

      if (key === "select" || key === "S" || key === "s") {
        sqlOptions.select = rawValue || args[++i];
        continue;
      }
      if (key === "exclude") {
        sqlOptions.exclude = rawValue || args[++i];
        continue;
      }
      if (key === "where") {
        sqlOptions.where.push(rawValue || args[++i]);
        continue;
      }
      if (key === "join" || key === "j") {
        sqlOptions.join.push(autoQuoteSql(rawValue || args[++i]));
        continue;
      }
      {
        const joinMatch = key.match(/^(left|right|inner|outer|cross|natural|anti|semi|full|positional)_join$/);
        if (joinMatch) {
          const type = joinMatch[1].toUpperCase();
          sqlOptions.join.push(`${type} JOIN ${autoQuoteSql(rawValue || args[++i])}`);
          continue;
        }
      }
      if (key === "with") {
        sqlOptions.with.push(autoQuoteSql(rawValue || args[++i]));
        continue;
      }
      if (key === "distinct" || key === "d") {
        sqlOptions.distinct = rawValue || args[++i];
        continue;
      }
      if (key === "sample") {
        sqlOptions.sample = rawValue ?? (args[i + 1]?.match(/^\d+(%|rows)?$/) ? args[++i] : "default");
        continue;
      }
      if (key === "sort" || key === "order_by") {
        sqlOptions.sort = rawValue || args[++i];
        continue;
      }
      if (key === "group_by" || key === "g") {
        sqlOptions.groupBy = rawValue || args[++i];
        continue;
      }
      if (key === "having") {
        sqlOptions.having = rawValue || args[++i];
        continue;
      }
      if (key === "count_by") {
        sqlOptions.countBy = rawValue || args[++i];
        continue;
      }
      if (key === "using") {
        sqlOptions.using = rawValue || args[++i];
        continue;
      }
      if (key === "on") {
        sqlOptions.on = rawValue || args[++i];
        continue;
      }
      if (key === "pipe") {
        sqlOptions.pipe.push(rawValue || args[++i]);
        continue;
      }
      if (key === "summarize") {
        sqlOptions.summarize = true;
        continue;
      }
      if (key === "analyze") {
        sqlOptions.analyze = true;
        continue;
      }

      if (key === "limit" || key === "l") {
        // bare --limit / -l (no value) means "no limit" — disable auto-limit
        sqlOptions.limit = rawValue ?? (args[i + 1]?.match(/^\d+$/) ? args[++i] : "none");
        continue;
      }

      // Check if this is a COPY option
      if (COPY_OPTIONS_DOCS[key]) {
        let value: any = rawValue;
        if (rawValue === undefined) value = true;
        else if (rawValue === "true") value = true;
        else if (rawValue === "false") value = false;
        else if (!isNaN(Number(rawValue)) && rawValue !== "")
          value = Number(rawValue);
        else if (rawValue?.startsWith("[") && rawValue?.endsWith("]")) {
          value = rawValue
            .slice(1, -1)
            .split(",")
            .map((s) => s.trim());
        }
        copyOptions[key] = value;

        // Strictly copy-only options should not be passed to the read function
        const strictCopyOptions = [
          "partition_by",
          "overwrite_or_ignore",
          "overwrite",
          "append",
          "filename_pattern",
          "file_extension",
          "per_thread_output",
          "file_size_bytes",
          "return_files",
          "write_partition_columns",
          "use_tmp_file",
        ];
        if (strictCopyOptions.includes(key) || isCopyTargetSeen) {
          continue;
        }
      }

      let value: any = rawValue;
      if (rawValue === undefined) {
        // Flags that default to specific values when used without a value
        if (key === "sample_size") value = -1;
        else value = true;
      } else if (rawValue === "true") value = true;
      else if (rawValue === "false") value = false;
      else if (!isNaN(Number(rawValue)) && rawValue !== "")
        value = Number(rawValue);
      else if (rawValue?.startsWith("[") && rawValue?.endsWith("]")) {
        value = rawValue
          .slice(1, -1)
          .split(",")
          .map((s) => s.trim());
      } else if (
        (key === "column_names" || key === "names") &&
        rawValue?.includes(",")
      ) {
        // Handle comma-separated column names
        value = rawValue.split(",");
      }

      options[key] = value;
    } else {
      // Positional argument
      if (!command && COMMANDS_DOCS[arg]) {
        command = arg;
      } else if (files.length === 0) {
        files.push(arg);
      } else if (
        /\.(csv|tsv|txt|json|jsonl|ndjson|parquet|xlsx|lance|vortex)$/i.test(arg) ||
        existsSync(arg)
      ) {
        // Additional file argument
        files.push(arg);
      } else {
        queryParts.push(arg);
      }
    }
  }

  // Auto-detect command from file extension
  if (!command && files.length > 0) {
    const firstFile = files[0];
    if (isExpressionSource(firstFile)) {
      command = "sql";
    } else {
      const ext = firstFile.includes(".")
        ? firstFile.split(".").pop()?.toLowerCase() || ""
        : "";
      command = EXT_TO_CMD[ext] || "";
    }
  }

  return {
    command,
    files,
    options,
    toPath,
    mode,
    truncate,
    tui,
    queryParts,
    sqlOptions,
    copyOptions,
    format,
  };
}

// ---- --analyze implementation ----------------------------------------------

// Dark, cool-leaning palette tuned for dark terminals (2026 minimal TUI).
const PALETTE = {
  accent: "#7aa2ff",   // primary (column name)
  accent2: "#89ddff",  // secondary highlight
  type: "#6e7a99",     // type label (muted)
  label: "#5b6478",    // key/label dimmer
  value: "#d6deeb",    // primary value fg
  number: "#c3e88d",   // numeric value
  good: "#73daca",     // filled / ok (teal)
  warn: "#ffc777",     // median / warn
  bad: "#ff757f",      // nulls / error
  enum: "#c099ff",     // categorical
  rule: "#2d3343",     // faint rule lines
  bracket: "#3d4453",  // glyphs/dividers
};

// Gradient ramps (start = muted, end = bright). Each is a 5-stop palette.
const GRAD_GOOD = ["#2f4a48", "#3a5c58", "#456e68", "#507f78", "#5a9088"];
const GRAD_ENUM = ["#5a4a78", "#7a5fa0", "#9577c4", "#ac88dd", "#c099ff"];

/** Color each glyph of `s` using ramp — left = darkest, right = brightest. */
const applyGradient = (glyphs: string, ramp: string[]): string => {
  if (glyphs.length === 0) return "";
  if (glyphs.length === 1) return tc(ramp[ramp.length - 1], glyphs);
  const n = glyphs.length, R = ramp.length - 1;
  let out = "";
  for (let i = 0; i < n; i++) {
    const col = ramp[Math.round((i / (n - 1)) * R)];
    out += tc(col, glyphs[i]);
  }
  return out;
};

const tc = (hex: string, t: string) => `${Bun.color(hex, "ansi") ?? ""}${t}\x1b[39m`;
const DIM = "\x1b[2m", BOLD = "\x1b[1m", RESET = "\x1b[0m", NRM = "\x1b[22m";
const dim = (t: string) => `${DIM}${t}${RESET}`;
const bold = (t: string) => `${BOLD}${t}${NRM}`;

const NUMERIC_TYPES = /^(TINYINT|SMALLINT|INTEGER|BIGINT|HUGEINT|UTINYINT|USMALLINT|UINTEGER|UBIGINT|UHUGEINT|FLOAT|DOUBLE|REAL|DECIMAL|NUMERIC)/i;
const TEMPORAL_TYPES = /^(DATE|TIMESTAMP|TIME|INTERVAL)/i;

/** Strip ANSI escapes for width measurement (SGR + OSC). */
const visLen = (s: string) =>
  s.replace(/\x1b\[[0-9;]*m/g, "").replace(/\x1b\][^\x07]*\x07?/g, "")
    // Handle common wide characters — assume width 2 for CJK / emoji. Good enough for our data.
    .replace(/[\u2E80-\u9FFF\uAC00-\uD7AF\uFF00-\uFFEF]/g, "xx").length;

const pad = (s: string, w: number, align: "l" | "r" = "l") => {
  const n = Math.max(0, w - visLen(s));
  const sp = " ".repeat(n);
  return align === "r" ? sp + s : s + sp;
};

/** Compact number: always ≤6 visible chars, 2 decimals, SI suffix past 1k. */
const fmtNum = (v: any): string => {
  if (v == null) return "·";
  const n = Number(v);
  if (!Number.isFinite(n)) return String(v);
  const a = Math.abs(n);
  if (a === 0) return "0";
  if (a >= 1e12) return `${(n / 1e12).toFixed(2)}T`;
  if (a >= 1e9) return `${(n / 1e9).toFixed(2)}G`;
  if (a >= 1e6) return `${(n / 1e6).toFixed(2)}M`;
  if (a >= 1e3) return `${(n / 1e3).toFixed(2)}k`;
  if (Number.isInteger(n)) return String(n);
  if (a >= 100) return n.toFixed(1);
  if (a >= 1) return n.toFixed(2);
  return n.toPrecision(2);
};

const fmtInt = (v: any): string => {
  if (v == null) return "·";
  const n = typeof v === "bigint" ? v : BigInt(Math.trunc(Number(v)));
  return n.toLocaleString("en-US").replace(/,/g, "_");
};

/** Fill bar — gradient (muted → bright) + faint track behind unfilled portion. */
const fillBar = (frac: number, width = 12): string => {
  const blocks = " ▏▎▍▌▋▊▉█";
  const f = Math.max(0, Math.min(1, frac));
  const total = f * width;
  const full = Math.floor(total);
  const part = blocks[Math.round((total - full) * (blocks.length - 1))];
  const filledStr = "█".repeat(full) + (full < width ? part : "");
  const trackLen = Math.max(0, width - visLen(filledStr));
  return applyGradient(filledStr, GRAD_GOOD) + tc(PALETTE.rule, "─".repeat(trackLen));
};

/** Enum proportion bar — gradient, same glyph system as fillBar. */
const propBar = (frac: number, width = 18): string => {
  const blocks = " ▏▎▍▌▋▊▉█";
  const f = Math.max(0, Math.min(1, frac));
  const total = f * width;
  const full = Math.floor(total);
  const part = blocks[Math.round((total - full) * (blocks.length - 1))];
  const filledStr = "█".repeat(full) + (full < width ? part : "");
  const trackLen = Math.max(0, width - visLen(filledStr));
  return applyGradient(filledStr, GRAD_ENUM) + tc(PALETTE.rule, "─".repeat(trackLen));
};

/** Numeric distribution bar with min/q25/med/q75/max markers. */
const distBar = (min: number, q25: number, q50: number, q75: number, max: number, width = 28): string => {
  if (!Number.isFinite(min) || !Number.isFinite(max) || max <= min)
    return dim("·".repeat(width));
  const pos = (v: number) => Math.max(0, Math.min(width - 1, Math.round(((v - min) / (max - min)) * (width - 1))));
  const p25 = pos(q25), p50 = pos(q50), p75 = pos(q75);
  const out: string[] = [];
  for (let i = 0; i < width; i++) {
    if (i === p50) out.push(tc(PALETTE.warn, "┃"));
    else if (i === p25 || i === p75) out.push(tc(PALETTE.accent2, "│"));
    else if (i > p25 && i < p75) out.push(tc(PALETTE.accent, "━"));
    else out.push(tc(PALETTE.rule, "─"));
  }
  return out.join("");
};

async function runAnalyze(query: string): Promise<void> {
  const instance = await DuckDBInstance.create();
  const conn = await instance.connect();

  // Materialize into a temp table for compression metadata access.
  await conn.run(`CREATE OR REPLACE TEMP TABLE _src AS ${query}`);

  const descRes = await conn.run(`DESCRIBE SELECT * FROM _src`);
  const descRows = (await descRes.getRowObjectsJS()) as any[];
  const cols = descRows.map((r) => ({ name: String(r.column_name), type: String(r.column_type) }));

  const totalRes = await conn.run(`SELECT count(*)::BIGINT AS n FROM _src`);
  const total = Number(((await totalRes.getRowObjectsJS())[0] as any).n);

  // Per-column stats in a single query.
  const statProjections: string[] = [];
  for (const { name, type } of cols) {
    const q = `"${name.replace(/"/g, '""')}"`;
    if (NUMERIC_TYPES.test(type)) {
      statProjections.push(`struct_pack(
        nulls := count(*) - count(${q}),
        uniq  := approx_count_distinct(${q}),
        mn    := min(${q})::DOUBLE,
        mx    := max(${q})::DOUBLE,
        av    := avg(${q})::DOUBLE,
        q25   := approx_quantile(${q}, 0.25)::DOUBLE,
        q50   := approx_quantile(${q}, 0.50)::DOUBLE,
        q75   := approx_quantile(${q}, 0.75)::DOUBLE
      ) AS "${name}"`);
    } else if (TEMPORAL_TYPES.test(type)) {
      statProjections.push(`struct_pack(
        nulls := count(*) - count(${q}),
        uniq  := approx_count_distinct(${q}),
        mn    := min(${q})::VARCHAR,
        mx    := max(${q})::VARCHAR
      ) AS "${name}"`);
    } else {
      statProjections.push(`struct_pack(
        nulls   := count(*) - count(${q}),
        uniq    := approx_count_distinct(${q}),
        mn      := min(${q})::VARCHAR,
        mx      := max(${q})::VARCHAR,
        avg_len := avg(length(${q}::VARCHAR))::DOUBLE
      ) AS "${name}"`);
    }
  }

  const ENUM_THRESHOLD = 20;
  let stats: Record<string, any> = {};
  if (statProjections.length > 0) {
    const statsRes = await conn.run(`SELECT ${statProjections.join(",\n")} FROM _src`);
    stats = (await statsRes.getRowObjectsJS())[0] as any;
  }

  const enumCounts: Record<string, { v: any; n: number }[]> = {};
  for (const { name, type } of cols) {
    const uniq = Number(stats[name]?.uniq ?? 0);
    if (uniq > 0 && uniq <= ENUM_THRESHOLD && !TEMPORAL_TYPES.test(type)) {
      const q = `"${name.replace(/"/g, '""')}"`;
      const res = await conn.run(
        `SELECT ${q} AS v, count(*)::BIGINT AS n FROM _src WHERE ${q} IS NOT NULL GROUP BY 1 ORDER BY n DESC LIMIT ${ENUM_THRESHOLD}`,
      );
      enumCounts[name] = ((await res.getRowObjectsJS()) as any[]).map((r) => ({ v: r.v, n: Number(r.n) }));
    }
  }

  // Fetch compression metadata: compression method, level, and size info.
  let compressionInfo: Record<string, any> = {};
  let totalSize = 0;
  try {
    const comprRes = await conn.run(
      `SELECT * FROM pragma_storage_info('_src') ORDER BY segment_id`,
    );
    const comprRows = (await comprRes.getRowObjectsJS()) as any[];
    let colSize: Record<string, { compressed: number; uncompressed: number; method: string }> = {};
    for (const r of comprRows) {
      const col = String(r.column_name || "");
      const method = String(r.compression || "uncompressed");
      const size = Number(r.segment_data_bytes || 0);
      const origSize = Number(r.uncompressed_size || size);
      if (!colSize[col]) colSize[col] = { compressed: 0, uncompressed: 0, method };
      colSize[col].compressed += size;
      colSize[col].uncompressed += origSize;
      totalSize += size;
    }
    compressionInfo = colSize;
  } catch {
    // If compression info is not available, skip it.
  }

  // ---- Layout -----------------------------------------------------------
  const W = Math.max(80, process.stdout.columns || 120);

  // Header-row column widths (must match for every row → clean alignment).
  const nameW = Math.min(30, Math.max(6, ...cols.map((c) => c.name.length)));
  const typeW = Math.min(14, Math.max(4, ...cols.map((c) => c.type.length)));
  const PCT_W = 4; // "100%"
  const UNIQ_W = Math.max(6, ...cols.map((c) => fmtInt(stats[c.name]?.uniq ?? 0).length));
  const NULL_W = Math.max(4, ...cols.map((c) => {
    const n = Number(stats[c.name]?.nulls ?? 0);
    return n > 0 ? fmtInt(n).length : 1;
  }));

  // Header row: name  type  pct  uniq  null  [FILL]
  // gaps: 2,2,2,2,2 → 10 spaces of separators; FILL takes remaining space but capped.
  const MAX_BAR = 48;
  const headerFixed = nameW + typeW + PCT_W + UNIQ_W + NULL_W + 10;
  const FILL_W = Math.max(10, Math.min(MAX_BAR, W - headerFixed));

  // Banner
  const rule = tc(PALETTE.rule, "━".repeat(W));
  const dashrule = tc(PALETTE.rule, "─".repeat(W));
  const title =
    `${tc(PALETTE.accent, bold("▍ analyze"))}  ` +
    `${tc(PALETTE.value, fmtInt(total))} ${tc(PALETTE.label, "rows")}  ` +
    `${tc(PALETTE.bracket, "·")}  ` +
    `${tc(PALETTE.value, String(cols.length))} ${tc(PALETTE.label, "cols")}`;
  console.log("\n" + title);
  console.log(rule);

  // Legend aligned on the same grid
  const legend =
    pad(tc(PALETTE.label, "column"), nameW) + "  " +
    pad(tc(PALETTE.label, "type"), typeW) + "  " +
    pad(tc(PALETTE.label, "%"), PCT_W, "r") + "  " +
    pad(tc(PALETTE.label, "uniq"), UNIQ_W, "r") + "  " +
    pad(tc(PALETTE.label, "null"), NULL_W, "r");
  console.log(legend);
  console.log(dashrule);
  void FILL_W; // fill bar hidden for now

  // Detail-row grid:  "  │ " gutter = 4 chars, stretch the rest to W.
  const detailIndent = "  " + tc(PALETTE.rule, "│") + " ";
  const detailInnerW = W - 4;

  // Fixed widths for hard alignment — computed once and applied to all detail rows.
  const ENUM_VAL_W = 24; // fixed value column width
  const ENUM_BAR_W = Math.max(12, Math.min(MAX_BAR, Math.floor((detailInnerW - ENUM_VAL_W - 20) * 0.6)));
  const PCT_SLOT = 6;
  const ENUM_CNT_W = 8;

  for (const [idx, { name, type }] of cols.entries()) {
    const st = stats[name] || {};
    const nulls = Number(st.nulls ?? 0);
    const filled = total > 0 ? 1 - nulls / total : 0;
    const uniq = Number(st.uniq ?? 0);

    const nameStr = name.length > nameW ? name.slice(0, nameW - 1) + "…" : name;
    const typeStr = type.length > typeW ? type.slice(0, typeW - 1) + "…" : type;
    const pctStr = `${Math.round(filled * 100)}%`;
    const uniqStr = fmtInt(uniq);
    const nullStr = nulls > 0 ? fmtInt(nulls) : "·";
    const nullColor = nulls > 0 ? PALETTE.bad : PALETTE.rule;

    // Light separator between column blocks (not before the first one)
    if (idx > 0) console.log(tc(PALETTE.rule, "╌".repeat(W)));

    const headerLhs =
      pad(tc(PALETTE.accent, bold(nameStr)), nameW) + "  " +
      pad(tc(PALETTE.type, typeStr), typeW) + "  " +
      pad(tc(PALETTE.label, pctStr), PCT_W, "r") + "  " +
      pad(tc(PALETTE.warn, uniqStr), UNIQ_W, "r") + "  " +
      pad(tc(nullColor, nullStr), NULL_W, "r");

    console.log(headerLhs);
    void filled;

    // Display compression info if available.
    const cmpr = compressionInfo[name];
    if (cmpr && cmpr.method && cmpr.method !== "Uncompressed") {
      const ratio = cmpr.uncompressed > 0 ? cmpr.compressed / cmpr.uncompressed : 1;
      const pctCompressed = Math.round((1 - ratio) * 100);
      const sizeMb = cmpr.compressed / (1024 * 1024);
      const comprStr =
        `${tc(PALETTE.label, "compr")} ${tc(PALETTE.accent2, cmpr.method.toLowerCase())}  ` +
        `${tc(PALETTE.label, "size")} ${tc(PALETTE.number, sizeMb.toFixed(2))}M  ` +
        `${tc(PALETTE.label, "saved")} ${tc(PALETTE.good, `${pctCompressed}%`)}`;
      console.log(detailIndent + comprStr);
    }

    const enumRows = enumCounts[name];
    if (enumRows) {
      const nonNull = total - nulls;
      for (const r of enumRows) {
        const pct = nonNull > 0 ? r.n / nonNull : 0;
        const val = String(r.v ?? "");
        const valStr = val.length > ENUM_VAL_W ? val.slice(0, ENUM_VAL_W - 1) + "…" : val;
        const cntStr = fmtInt(r.n);
        const cntPadded = pad(tc(PALETTE.number, cntStr), ENUM_CNT_W, "r");
        console.log(
          detailIndent +
          pad(tc(PALETTE.value, valStr), ENUM_VAL_W) + "  " +
          propBar(pct, ENUM_BAR_W) + "  " +
          pad(tc(PALETTE.label, `${(pct * 100).toFixed(1)}%`), PCT_SLOT, "r") + "  " +
          cntPadded,
        );
      }
    } else if (NUMERIC_TYPES.test(type)) {
      const mn = Number(st.mn), mx = Number(st.mx);
      const q25 = Number(st.q25), q50 = Number(st.q50), q75 = Number(st.q75);
      const av = Number(st.av);
      // Compact glyph-driven summary: ↓ min  ◆ avg  ↑ max
      const rhs =
        `${tc(PALETTE.label, "↓")} ${tc(PALETTE.number, fmtNum(mn))}` +
        tc(PALETTE.rule, "  ") +
        `${tc(PALETTE.accent2, "◆")} ${tc(PALETTE.accent2, fmtNum(av))}` +
        tc(PALETTE.rule, "  ") +
        `${tc(PALETTE.label, "↑")} ${tc(PALETTE.number, fmtNum(mx))}`;
      const rhsLen = visLen(rhs);
      const barW = Math.max(14, Math.min(MAX_BAR, detailInnerW - rhsLen - 2));
      console.log(detailIndent + distBar(mn, q25, q50, q75, mx, barW) + "  " + rhs);
    } else if (TEMPORAL_TYPES.test(type)) {
      const mn = String(st.mn ?? "·");
      const mx = String(st.mx ?? "·");
      console.log(
        detailIndent +
        `${tc(PALETTE.label, "min")} ${tc(PALETTE.value, mn)}` +
        tc(PALETTE.rule, "  →  ") +
        `${tc(PALETTE.label, "max")} ${tc(PALETTE.value, mx)}`,
      );
    } else {
      const mn = st.mn == null ? "·" : String(st.mn);
      const mx = st.mx == null ? "·" : String(st.mx);
      const avgLen = st.avg_len == null ? null : Number(st.avg_len);
      // Stretch min/max to the full remaining width.
      const rightExtras = avgLen != null ? `  ${tc(PALETTE.rule, "·")}  ${tc(PALETTE.label, "len")} ${tc(PALETTE.accent2, fmtNum(avgLen))}` : "";
      const rightLen = visLen(rightExtras);
      // Available width for min + sep + max
      const sep = tc(PALETTE.rule, "  →  ");
      const sepLen = visLen(sep);
      const avail = Math.max(20, detailInnerW - rightLen - sepLen - 8); // 8 for "min " + "max "
      const half = Math.floor(avail / 2);
      const clip = (s: string, n: number) => (s.length > n ? s.slice(0, n - 1) + "…" : s);
      const mnS = clip(mn, half);
      const mxS = clip(mx, half);
      console.log(
        detailIndent +
        `${tc(PALETTE.label, "min")} ${tc(PALETTE.value, mnS)}` + sep +
        `${tc(PALETTE.label, "max")} ${tc(PALETTE.value, mxS)}` + rightExtras,
      );
    }
  }

  console.log(rule);
}

export function buildQuery(parsed: ParsedArgs): string {
  const {
    command,
    files,
    options,
    toPath,
    queryParts,
    sqlOptions,
    copyOptions,
    format,
  } = parsed;
  const where = sqlOptions.where || [];
  const join = sqlOptions.join || [];
  // Prepend CTEs or ATTACH databases if any
  const attachments: string[] = [];
  const ctes: string[] = [];
  let needsSqlite = false;

  for (const item of sqlOptions.with) {
    const cleanItem = smartBraceToParen(item);
    // Check if it's a database path (ends with common DB extensions) or a single word that exists as a file
    // The existsSync check is a heuristic and might need a proper import or context
    const isDb =
      /.+\.(db|ddb|duckdb|sqlite3|sqlite)$/i.test(cleanItem) ||
      (cleanItem.split(" ").length === 1 && existsSync(cleanItem));

    if (isDb && !cleanItem.includes(" AS ")) {
      attachments.push(cleanItem);
    } else {
      ctes.push(cleanItem);
    }
  }

  const getAlias = (path: string) => {
    const filename = path.split("/").pop()!!;
    return (
      filename
        .replace(/^\./, "")
        .split(".")[0]
        .replace(/[^a-z0-9]/gi, "_")
        .replace(/_+/g, "_")
        .replace(/^_|_$/g, "") || "db"
    );
  };

  const fileArg = files.length === 1 ? files[0] : files;
  let callStr = "";
  let magicDbAlias = "";
  let fileAlias: string | undefined = undefined;

  if (files.length === 1 && typeof fileArg === "string") {
    // Parse file:alias pattern first
    const [filePath, parsedAlias] = parseFileAlias(fileArg);
    if (parsedAlias) fileAlias = parsedAlias;

    const parts = filePath.split(".");
    // Detect magic source extension (e.g., soccer.db or spotify.sqlite3.artists)
    const dbExtIdx = parts.findIndex((p) =>
      /^(db|ddb|duckdb|vscdb|sqlite3|sqlite)$/i.test(p),
    );

    if (dbExtIdx > 0) {
      // >0 cause no db-xx file
      const dbPath = parts.slice(0, dbExtIdx + 1).join(".");
      const tablePart = parts.slice(dbExtIdx + 1).join(".");
      const alias = getAlias(dbPath);

      attachments.push(`${dbPath} AS ${alias}`);
      magicDbAlias = alias;

      if (tablePart) {
        callStr = tablePart; // No prefix needed if we USE the alias
      } else {
        callStr = `(FROM duckdb_tables() SELECT table_name, sql WHERE database_name = '${alias}')`;
      }
    } else if (isExpressionSource(filePath)) {
      callStr = smartAtToStar(smartBraceToParen(filePath));
    } else {
      callStr = fnSerial(command, filePath, options);
    }
  } else {
    callStr = fnSerial(command, fileArg, options);
  }

  // Append alias if provided (e.g., file.parquet:alias)
  if (fileAlias && !callStr.includes(" AS ")) {
    callStr += ` AS ${fileAlias}`;
  }

  const sqlTail = smartAtToStar(
    autoQuoteSql(smartBraceToParen(queryParts.join(" "))),
  );

  // Generate ATTACH statements and setup
  let setupSql = "";
  const attachSqls: string[] = [];
  const uniqAttachments = [...new Set(attachments)];
  const extensionsToLoad: Set<string> = new Set();

  for (const attachment of uniqAttachments) {
    const parts = attachment.split(/ AS /i);
    const path = parts[0].trim();
    const alias = (parts[1] || getAlias(path)).trim();

    if (/\.(sqlite3|sqlite|vscdb)$/i.test(path)) needsSqlite = true;
    attachSqls.push(`ATTACH '${path}' AS ${alias} (READ_ONLY)`);
  }

  // Auto-detect and load extensions based on function calls (supports glob keys like "st_*")
  const detectExtensions = (sql: string): void => {
    const calledFns = [...sql.matchAll(/\b([a-zA-Z_]\w*)\s*\(/g)].map((m) => m[1].toLowerCase());
    for (const [pattern, extInfo] of Object.entries(FN_TO_EXTENSION)) {
      const pat = pattern.toLowerCase();
      if (calledFns.some((fn) => {
        if (!pat.includes('*')) return fn === pat;
        // Convert glob * to regex: st_* → /^st_.*$/
        const regex = new RegExp('^' + pat.replace(/\*/g, '.*') + '$');
        return regex.test(fn);
      })) {
        extensionsToLoad.add(extInfo.extension);
      }
    }
  };

  // Scan all SQL components for function calls
  detectExtensions(callStr);
  detectExtensions(sqlTail);
  for (const j of join) detectExtensions(j);
  for (const w of where) detectExtensions(w);
  if (sqlOptions.select) detectExtensions(sqlOptions.select);
  if (sqlOptions.distinct) detectExtensions(sqlOptions.distinct);
  if (sqlOptions.groupBy) detectExtensions(sqlOptions.groupBy);
  if (sqlOptions.having) detectExtensions(sqlOptions.having);
  if (sqlOptions.sort) detectExtensions(sqlOptions.sort);
  for (const cte of ctes) detectExtensions(cte);
  if (sqlOptions.on) detectExtensions(sqlOptions.on);
  if (sqlOptions.using) detectExtensions(sqlOptions.using);
  // console.log({ format });
  if (format?.toLowerCase() === "lance") extensionsToLoad.add("lance");
  if (format?.toLowerCase() === "vortex") extensionsToLoad.add("vortex");

  if (needsSqlite) {
    extensionsToLoad.add("sqlite");
  }

  // Build INSTALL and LOAD statements for all required extensions
  const extensionStatements: string[] = [];
  for (var ext of extensionsToLoad) {
    const extInfo = Object.values(FN_TO_EXTENSION).find(
      (e) => e.extension === ext,
    );
    extensionStatements.push(
      `INSTALL ${ext} ${extInfo?.repo ? `FROM '${extInfo.repo}'` : ""}; LOAD ${ext};`,
    );
  }

  if (extensionStatements.length > 0) {
    setupSql = extensionStatements.join(" ") + " ";
  }

  const fullAttachSql =
    attachSqls.length > 0 ? attachSqls.join("; ") + "; " : "";
  const useSql = magicDbAlias ? `USE ${magicDbAlias}; ` : "";
  const finalSetupSql = `${setupSql}${fullAttachSql}${useSql}`;

  // --count-by sugar: override select, groupBy, sort
  if (sqlOptions.countBy) {
    const field = smartAtToStar(smartBraceToParen(sqlOptions.countBy));
    sqlOptions.select = `${field}, count(*) as count`;
    sqlOptions.groupBy = sqlOptions.groupBy || field;
    sqlOptions.sort = sqlOptions.sort || "count DESC";
  }

  // Determine the base SELECT clause
  let baseSelect = "SELECT *";
  if (sqlOptions.distinct) {
    baseSelect = `SELECT DISTINCT ON (${smartAtToStar(
      smartBraceToParen(sqlOptions.distinct),
    )}) *`;
  }
  if (sqlOptions.select || sqlOptions.exclude) {
    const base = sqlOptions.select
      ? smartAtToStar(smartBraceToParen(sqlOptions.select))
      : "*";
    const cleanSelect = sqlOptions.exclude ? `${base} EXCLUDE (${sqlOptions.exclude})` : base;
    if (sqlOptions.distinct) {
      baseSelect = `SELECT DISTINCT ON (${smartAtToStar(
        smartBraceToParen(sqlOptions.distinct),
      )}) ${cleanSelect}`;
    } else {
      baseSelect = `SELECT ${cleanSelect}`;
    }
  }

  // Determine if the positional tail already has a SELECT
  const hasSelectInTail = sqlTail.toLowerCase().trim().startsWith("select");

  // Wrap bare file paths in read_*() calls
  // Construct JOIN clauses
  let joinClauses = "";
  const joinCondition = sqlOptions.using
    ? ` USING (${sqlOptions.using})`
    : sqlOptions.on
      ? ` ON ${smartAtToStar(smartBraceToParen(sqlOptions.on))}`
      : "";
  for (const j of join) {
    // If it starts with a JOIN keyword, use as-is; otherwise prepend default join verb
    const upperJ = j.trim().toUpperCase();
    const hasJoinKeyword = /^(JOIN|LEFT|RIGHT|INNER|OUTER|CROSS|NATURAL|LATERAL|FULL|ANTI|SEMI|POSITIONAL)\b/.test(upperJ);

    // Parse file:alias pattern for join sources
    const [joinPath, joinAlias] = parseFileAlias(j);
    let processed = smartBraceToParen(joinPath);

    // Wrap file paths inside the join expression — use bare quoted path (DuckDB auto-detects format)
    processed = processed.replace(
      /(?<=^|\bJOIN\s+)(\S+\.(?:csv|tsv|txt|json|jsonl|ndjson|parquet|xlsx|lance|vortex))\b/i,
      (_, path) => `'${smartAtToStar(path)}'`,
    );

    // Append alias if provided
    if (joinAlias && !processed.includes(" AS ")) {
      processed += ` AS ${joinAlias}`;
    }

    const transformed = smartAtToStar(processed);
    // Append USING/ON clause if set and this join doesn't already have one
    const upperTransformed = transformed.toUpperCase();
    const hasCondition =
      upperTransformed.includes(" ON ") || upperTransformed.includes(" USING ");
    const suffix = !hasCondition ? joinCondition : "";

    if (hasJoinKeyword) {
      // Ensure "LATERAL table" becomes "LATERAL JOIN table"
      const final = upperJ.startsWith("LATERAL") && !upperJ.startsWith("LATERAL JOIN")
        ? transformed.replace(/^lateral\s+/i, "LATERAL JOIN ")
        : transformed;
      joinClauses += ` ${final}${suffix}`;
    } else {
      joinClauses += ` JOIN ${transformed}${suffix}`;
    }
  }

  // Construct modifiers from flags
  let modifiers = "";
  if (where.length > 0)
    modifiers += ` WHERE ${where
      .map((w) => {
        const trimmed = w.trim();
        // !col → col IS NULL
        if (/^!\w+$/.test(trimmed)) return `${trimmed.slice(1)} IS NULL`;
        // bare col → col IS NOT NULL
        if (/^\w+$/.test(trimmed)) return `${trimmed} IS NOT NULL`;
        // col~=val → col ~ '.*val.*'  (contains regex shorthand)
        const containsMatch = trimmed.match(/^(\w+)\s*~=\s*(.+)$/);
        if (containsMatch) return `${containsMatch[1]} ~ '.*${containsMatch[2]}.*'`;
        const containsIlike = trimmed.match(/^(\w+)\s*%=\s*(.+)$/);
        if (containsIlike) return `${containsIlike[1]} ILIKE '%${containsIlike[2]}%'`;
        return smartAtToStar(autoQuoteWhere(smartBraceToParen(w)));
      })
      .join(" AND ")}`;
  if (sqlOptions.groupBy)
    modifiers += ` GROUP BY ${smartAtToStar(
      smartBraceToParen(sqlOptions.groupBy),
    )}`;
  if (sqlOptions.having)
    modifiers += ` HAVING ${smartAtToStar(
      autoQuoteWhere(smartBraceToParen(sqlOptions.having)),
    )}`;
  if (sqlOptions.sample) modifiers += ` USING SAMPLE ${sqlOptions.sample}`;
  if (sqlOptions.sort)
    modifiers += ` ORDER BY ${smartAtToStar(
      smartBraceToParen(sqlOptions.sort),
    )}`;
  if (sqlOptions.limit && sqlOptions.limit !== "none") modifiers += ` LIMIT ${sqlOptions.limit}`;

  // Normalize the core SELECT part
  let selectQuery = "";
  if (hasSelectInTail) {
    let selectClause = sqlTail;
    if (
      sqlOptions.distinct &&
      !selectClause.toLowerCase().includes("distinct on")
    ) {
      selectClause = selectClause.replace(
        /select\s+/i,
        `SELECT DISTINCT ON (${sqlOptions.distinct}) `,
      );
    }
    if (selectClause.toLowerCase().includes(" from ")) {
      selectQuery = `${selectClause}${joinClauses}${modifiers}`;
    } else {
      selectQuery = `${selectClause} FROM ${callStr}${joinClauses}${modifiers}`;
    }
  } else {
    selectQuery = `${baseSelect} ${callStr ? `FROM ${callStr}` : ""
      }${joinClauses}${modifiers}${sqlTail ? " " + sqlTail : ""}`;
  }

  // Add SUMMARIZE prefix if requested
  if (sqlOptions.summarize) {
    selectQuery = `SUMMARIZE ${selectQuery}`;
  }

  // Prepend CTEs if any
  if (ctes.length > 0) {
    const finalCtes = [...ctes].map((cte) => smartBraceToParen(cte));
    const firstCte = finalCtes[0];
    if (firstCte.match(/\bAS\s*\(/i)) {
      finalCtes[0] = firstCte.replace(/\bAS\s*\(/i, `AS (FROM ${callStr} `);
    } else {
      finalCtes[0] = firstCte.replace(/\bAS\s+/i, `AS FROM ${callStr} `);
    }
    selectQuery = `WITH ${finalCtes.join(", ")} ${selectQuery}`;
  }

  // Wrap with --pipe stages: each wraps the current query as a subquery
  for (const pipeSql of sqlOptions.pipe) {
    const transformed = smartAtToStar(smartBraceToParen(pipeSql));
    // If pipe starts with SELECT, use as-is with FROM subquery
    if (/^\s*select\b/i.test(transformed)) {
      // Insert FROM (subquery) after the SELECT ... clause if no FROM present
      if (/\bfrom\b/i.test(transformed)) {
        selectQuery = transformed.replace(/\bfrom\b/i, `FROM (${selectQuery})`);
      } else {
        selectQuery = `${transformed} FROM (${selectQuery})`;
      }
    } else {
      // Treat as a full SQL tail appended to FROM (subquery)
      selectQuery = `SELECT * FROM (${selectQuery}) ${transformed}`;
    }
  }

  if (toPath || format) {
    const targetPath = toPath || "/dev/stdout";
    const ext = targetPath.split(".").pop()?.toLowerCase() || "";
    let formatStr = format?.toUpperCase() || "PARQUET";
    if (formatStr === "JSONL") formatStr = "JSON";
    if (formatStr === "TSV") formatStr = "CSV";

    if (!format) {
      if (ext === "json" || ext === "jsonl" || ext === "ndjson")
        formatStr = "JSON";
      else if (ext === "csv") formatStr = "CSV";
      else if (ext === "tsv") formatStr = "CSV"; // DELIMITER handled below if needed, or by copyOptions
    }

    // Auto-detect compression from filename: xx.zst.parquet, xx.br.parquet, xx.zst22.parquet
    if (!copyOptions.compression && toPath) {
      const parts = toPath.split("/").pop()?.split(".") || [];
      // Look for compression hint in the part before the final extension
      // e.g. ["data", "zst22", "parquet"] or ["data", "br", "parquet"]
      const COMP_ALIASES: Record<string, string> = {
        br: "brotli", brotli: "brotli",
        zst: "zstd", zstd: "zstd",
        gz: "gzip", gzip: "gzip",
        snappy: "snappy",
        lz4: "lz4",
      };
      if (parts.length >= 3) {
        const hint = parts[parts.length - 2];
        const match = hint.match(/^([a-z]+)(\d+)?$/);
        if (match && COMP_ALIASES[match[1]]) {
          copyOptions.compression = COMP_ALIASES[match[1]];
          if (match[2]) copyOptions.compression_level = Number(match[2]);
        }
      }
    }

    // Build COPY options array
    const copyOptsArray: string[] = [`FORMAT ${formatStr}`];

    // Auto-add ARRAY TRUE for format=json
    if (format === "json" && copyOptions.array === undefined) {
      copyOptsArray.push("ARRAY TRUE");
    }

    // Auto-add delimiter for format=tsv or tsv extension
    if (
      (format === "tsv" || ext === "tsv") &&
      !copyOptions.delim &&
      !copyOptions.sep
    ) {
      copyOptsArray.push("DELIMITER '\t'");
    }

    const targetFormat =
      format?.toLowerCase() || EXT_TO_COPY_FORMAT[ext] || "parquet";

    for (const [key, value] of Object.entries(copyOptions)) {
      const optDef = COPY_OPTIONS[key];
      if (optDef && !optionMatchesFormat(optDef, targetFormat)) {
        continue;
      }
      const keyUpper = key.toUpperCase();
      if (key === "partition_by") {
        const cols = Array.isArray(value) ? value : [value];
        copyOptsArray.push(`PARTITION_BY (${cols.join(", ")})`);
      } else if (key === "format") {
        copyOptsArray[0] = `FORMAT ${String(value).toUpperCase()}`;
      } else if (key === "compression") {
        copyOptsArray.push(`COMPRESSION ${String(value).toUpperCase()}`);
      } else if (Array.isArray(value)) {
        copyOptsArray.push(
          `${keyUpper} [${value.map((v) => `'${v}'`).join(", ")}]`,
        );
      } else if (typeof value === "string") {
        copyOptsArray.push(`${keyUpper} '${value}'`);
      } else if (typeof value === "boolean") {
        copyOptsArray.push(`${keyUpper} ${value ? "TRUE" : "FALSE"}`);
      } else if (typeof value === "number") {
        copyOptsArray.push(`${keyUpper} ${value}`);
      }
    }

    return `${finalSetupSql}COPY (${selectQuery}) TO '${targetPath}' (${copyOptsArray.join(
      ", ",
    )})`;
  }

  return `${finalSetupSql}${selectQuery}`.trim();
}

async function main() {
  const args = process.argv.slice(2);
  const hasHelp = args.includes("--help") || args.includes("-h");

  if (args.length === 0 || hasHelp) {
    showHelp();
    return;
  }

  if (args[0] === "fish_completion") {
    generateFishCompletion();
    return;
  }

  if (args[0] === "list_extensions") {
    showHelp("list_extensions");
    return;
  }

  if (args[0] === "_complete_columns") {
    const file = args[1];
    const prefix = args[2] || "";
    if (!file) return;
    await completeColumns(file, prefix);
    return;
  }

  if (args[0] === "_complete_sql") {
    const file = args[1];
    const partial = args[2] || "";
    if (!file || !partial) return;
    await completeSql(file, partial);
    return;
  }


  const parsed = parseArgs(args);
  let {
    command,
    files,
    options,
    toPath,
    mode,
    truncate,
    tui,
    queryParts,
    sqlOptions,
    copyOptions,
    format,
  } = parsed;

  if (parsed.tui && args.length === 2) {
    await launchTablens({ file: files[0] });
    return;
  }
  // If piped into another process, default to CSV format
  if (!isTTY && !format && !toPath && !parsed.sqlOptions.analyze) {
    format = "csv";
    parsed.format = "csv";
  }

  const DEFAULT_LIMIT = "30";

  // Bare --sample resolves to the default limit value
  if (parsed.sqlOptions.sample === "default") {
    parsed.sqlOptions.sample = DEFAULT_LIMIT;
  }

  // Auto-limit for TTY stdout — suppressed if limit/sample/summarize/to/format is set
  // "none" sentinel means user explicitly passed bare --limit to disable auto-limit
  let autoLimited = false;
  if (isTTY && !tui && !toPath && !format && !parsed.sqlOptions.limit && !parsed.sqlOptions.sample && !parsed.sqlOptions.summarize && !parsed.sqlOptions.analyze) {
    parsed.sqlOptions.limit = DEFAULT_LIMIT;
    autoLimited = true;
  }

  if (command && !COMMANDS_DOCS[command] && command !== "sql") {
    await Bun.write(
      Bun.stderr,
      (command
        ? `Unknown command: ${command}`
        : "Missing command or file path") + "\n",
    );
    showHelp();
    process.exit(1);
  }

  if (files.length === 0) {
    await Bun.write(Bun.stderr, "Missing file path\n");
    showHelp(command);
    process.exit(1);
  }

  const fileArg = files.length === 1 ? files[0] : files;

  // if (
  //   COMMANDS_DOCS[command]?.sample_size &&
  //   options.sample_size === undefined
  // ) {
  //   options.sample_size = -1;
  // }

  if (
    COMMANDS_DOCS[command]?.union_by_name &&
    options.union_by_name === undefined
  ) {
    // Default to union_by_name=true if multiple files are provided or a wildcard is suspected
    if (
      Array.isArray(fileArg) ||
      (typeof fileArg === "string" &&
        (fileArg.includes("*") ||
          fileArg.includes("?") ||
          fileArg.includes("@")))
    ) {
      options.union_by_name = true;
    }
  }

  try {
    const query = buildQuery(parsed);
    const countQuery = autoLimited
      ? `SELECT count(*)::int as total FROM (${buildQuery({ ...parsed, sqlOptions: { ...parsed.sqlOptions, limit: undefined } })})`
      : "";

    // Construct command arguments
    const cmdArgs: string[] = [];
    if (mode) {
      cmdArgs.push("-" + mode);
    }
    if (isTTY) {
      cmdArgs.push("-cmd", `.maxwidth ${process.stdout.columns || 80}`);
      cmdArgs.push("-cmd", ".timer on");
    }
    cmdArgs.push("-c", query);

    const highlightedQuery = highlightSql(query);
    const commandLog = `duckdb -c "${highlightedQuery}"\n`;
    await Bun.write(Bun.stderr, commandLog);

    // Detect init-file failure and retry without -init
    const runScript = async (extraArgs: string[] = []) => {
      const args = [...extraArgs, ...cmdArgs];
      let out = await $`script -q /dev/null duckdb ${args}`.nothrow().text();
      if (/Encountered errors while executing init file/i.test(out)) {
        out = await $`script -q /dev/null duckdb -init /dev/null ${cmdArgs}`.nothrow().text();
      }
      return out;
    };

    if (parsed.sqlOptions.analyze) {
      await runAnalyze(query);
      process.exit(0);
    }

    if (tui) {
      await launchTablens({ query });
    } else if (toPath || format) {
      // Stream live so the progress bar renders in real time.
      // Parent ignores SIGINT so the child gets it cleanly and we can observe its exit.
      const onSigint = () => { };
      process.on("SIGINT", onSigint);
      const spawnLive = (initArg: string[]) =>
        Bun.spawn(["script", "-q", "/dev/null", "duckdb", ...initArg, ...cmdArgs], {
          stdin: "inherit",
          stdout: "inherit",
          stderr: "inherit",
        });
      let proc = spawnLive([]);
      let code = await proc.exited;
      if (code !== 0 && code !== 130) {
        proc = spawnLive(["-init", "/dev/null"]);
        code = await proc.exited;
      }
      process.off("SIGINT", onSigint);
      if (code === 0 && toPath) {
        console.log(`Successfully exported to ${toPath}`);
      }
      process.exit(code ?? 0);
    } else if (isTTY) {
      // Capture PTY output to strip DuckDB's summary lines and replace with compact one
      const raw = await runScript();
      let rows = "", cols = "", shown = "", time = "";
      const lines = raw.split("\n");
      const output: string[] = [];
      for (const line of lines) {
        const stripped = line.replace(/\x1b\[[0-9;]*m/g, "").replace(/\x1b\][^\x07]*\x07?/g, "").replace(/\r/g, "").trim();
        const rowMatch = stripped.match(/^(\d+)\s+rows?\s*(?:\((\d+)\s+shown\))?.*?(\d+)\s+columns?/);
        const timeMatch = stripped.match(/^Run Time.*?real\s+([\d.]+)/);
        if (rowMatch) {
          rows = rowMatch[1]; shown = rowMatch[2] || rows; cols = rowMatch[3];
          continue;
        }
        if (timeMatch) { time = timeMatch[1]; continue; }
        // Strip OSC sequences (terminal color queries) but keep the rest of the line
        const cleaned = line.replace(/\x1b\][^\x07]*\x07?/g, "");
        if (cleaned.replace(/\x1b\[[0-9;]*m/g, "").replace(/\r/g, "").trim()) output.push(cleaned);
      }
      // Detect and reformat DuckDB errors
      const R = "\x1b[0m";
      const c = (color: string, text: string) => `${Bun.color(color, "ansi")}${text}${R}`;
      const dim = (text: string) => `\x1b[2m${text}${R}`;
      const bold = (text: string) => `\x1b[1m${text}${R}`;

      const errorLines: string[] = [];
      const cleanOutput: string[] = [];
      let inError = false;
      for (const line of output) {
        const stripped = line.replace(/\x1b\[[0-9;]*m/g, "").replace(/\x1b\][^\x07]*\x07?/g, "").replace(/\r/g, "").trim();
        if (/^-- Loading resources/.test(stripped)) continue;
        if (/^\w[\w ]*Error:/.test(stripped)) inError = true;
        if (inError) {
          if (stripped) errorLines.push(stripped);
        } else {
          cleanOutput.push(line);
        }
      }

      if (errorLines.length) {
        // Parse: first line is "Binder Error:" (title only), message on next lines
        const errType = errorLines[0].match(/^([\w ]+Error):?\s*(.*)/);
        const title = errType ? errType[1] : "Error";
        const firstMsg = errType?.[2] || "";
        const rest = (firstMsg ? [firstMsg, ...errorLines.slice(1)] : errorLines.slice(1));

        const candidates = rest.find(l => /^Candidate bindings?:/.test(l));
        const lineLine = rest.find(l => /^LINE \d+:/.test(l));
        const caretLine = rest.find(l => /^\s*\^$/.test(l));
        const msgLines = rest.filter(l => l !== candidates && l !== lineLine && l !== caretLine);
        const message = msgLines.join(" ").trim();

        await Bun.write(Bun.stderr, `\n${c("red", "×")} ${bold(c("red", title))}`);
        if (message) await Bun.write(Bun.stderr, ` ${message}`);
        await Bun.write(Bun.stderr, "\n");
        if (candidates) {
          const vals = candidates.replace(/^Candidate bindings?:\s*/, "");
          await Bun.write(Bun.stderr, `  ${c("yellow", "hint:")} ${c("green", vals)}\n`);
        }
        if (lineLine) {
          const sqlSnippet = lineLine.replace(/^LINE \d+:\s*/, "");
          await Bun.write(Bun.stderr, `  ${dim(sqlSnippet)}\n`);
          if (caretLine) await Bun.write(Bun.stderr, `  ${c("red", caretLine)}\n`);
        }
        await Bun.write(Bun.stderr, "\n");
      } else {
        // Print table without trailing blank lines
        while (cleanOutput.length && cleanOutput[cleanOutput.length - 1].trim() === "") cleanOutput.pop();
        process.stdout.write(cleanOutput.join("\n") + "\n");
      }
      // Compact status line with optional total count
      if (rows) {
        let totalStr = "";
        if (countQuery) {
          try {
            let countResult = await $`duckdb -noheader -csv -c ${countQuery}`.nothrow().text();
            if (/Encountered errors while executing init file/i.test(countResult)) {
              countResult = await $`duckdb -init /dev/null -noheader -csv -c ${countQuery}`.nothrow().text();
            }
            if (countResult) {
              const total = parseInt(countResult.trim(), 10);
              if (total > parseInt(rows)) {
                totalStr = total >= 1e6 ? `${(total / 1e6).toFixed(1)}M` : total >= 1e3 ? `${(total / 1e3).toFixed(1)}k` : String(total);
              }
            }
          } catch { }
        }
        const rowLabel = totalStr
          ? `${c("cyan", rows)}${dim("/")}${c("yellow", totalStr)} ${dim("rows")}`
          : `${c("cyan", rows)} ${dim("rows")}`;
        const parts: string[] = [rowLabel];
        if (cols) parts.push(`${c("magenta", cols)} ${dim("cols")}`);
        if (time) parts.push(c("green", `${time}s`));
        await Bun.write(Bun.stderr, parts.join(dim(" · ")) + "\n");
      }
    } else {
      // Piped output: stream stdout for CSV/format output
      // Skip .duckdbrc — reader pipe output doesn't need interactive init
      const duckProcess = Bun.spawn(["duckdb", "-init", "/dev/null", ...cmdArgs], {
        stdout: "pipe",
        stderr: "inherit",
      });

      const width = process.stdout.columns || 80;
      const reader = duckProcess.stdout.getReader();
      const decoder = new TextDecoder();
      let partial = "";

      while (true) {
        const { done, value } = await reader.read();
        if (done) break;

        const chunk = decoder
          .decode(value, { stream: true })
          .replace(/\b(\d+)(?=\srows\b)/g, (n) =>
            n.replace(/\B(?=(\d{3})+(?!\d))/g, "_"),
          );
        const lines = (partial + chunk).split("\n");
        partial = lines.pop() || "";

        for (const line of lines) {
          if (truncate && isTTY && line.length > width) {
            console.log(line.slice(0, width - 1) + "…");
          } else {
            console.log(line);
          }
        }
      }

      if (partial) {
        if (truncate && isTTY && partial.length > width) {
          console.log(partial.slice(0, width - 1) + "…");
        } else {
          console.log(partial);
        }
      }

      await duckProcess.exited;
    }

    if (!tui) process.exit();
  } catch (err: any) {
    if (err.stderr) {
      await Bun.write(Bun.stderr, err.stderr.toString() + "\n");
    } else {
      await Bun.write(Bun.stderr, `Error: ${err.message}\n`);
    }
    process.exit(1);
  }
  // process.exit()
}

main();
