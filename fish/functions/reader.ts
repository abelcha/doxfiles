#!/usr/bin/env bun

import { $ } from "bun";
import { existsSync } from "node:fs";
import { launchTablens } from "/me/dev/tablens";
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
export const fnSerial = (name: string, file: string | string[], opts: Record<string, any>) => {
  const keys = Object.keys(opts);
  const fileArg = Array.isArray(file) ? `[${file.map((f) => `'${f}'`).join(",")}]` : `'${file}'`;

  if (keys.length === 0) return `${name}(${fileArg})`;
  const serializedOpts = keys.map((k) => `${k}=${serializeValue(opts[k])}`).join(",");
  return `${name}(${fileArg},${serializedOpts})`;
};

/** Helper to automatically wrap SQL values in single quotes (for positional args with spaces) */
export const autoQuoteSql = (sql: string): string => {
  // 1. Handle LIKE, ILIKE, SIMILAR TO
  let result = sql.replace(/\b(LIKE|ILIKE|SIMILAR\s+TO)\s+([^\s'",)]+)/gi, "$1 '$2'");

  // 2. Handle operators WITH spaces only: col = value (not col=value)
  result = result.replace(/(\s+(=|!=|<>|~|~~|!~|!~~|>=|<=|>|<)\s+)([^\s'",)]+)/g, "$1'$3'");

  return result;
};

/** Helper to auto-quote values in --where flag (handles col=value without spaces) */
export const autoQuoteWhere = (sql: string): string => {
  return sql.replace(
    /(\b\w+\s*)(=|!=|<>|~|~~|!~|!~~|>=|<=|>|<)(\s*)([^\s'",)]+)/g,
    (match, col, op, space, value) => {
      // Skip if value is already quoted or is a number
      if (/^'.*'$/.test(value) || /^-?\d+(\.\d+)?$/.test(value)) {
        return match;
      }
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

export const highlightSql = (sql: string): string => {
  const ANSI_RESET = "\x1b[0m";
  const ANSI_BOLD = "\x1b[1m";
  const rgbToAnsi = (r: number, g: number, b: number) => `${ANSI_BOLD}\x1b[38;2;${r};${g};${b}m`;

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
  if (src.includes("*") || src.includes("?")) return false; // Wildcards = files

  // Check for extension
  const hasExtension = /\.[a-z0-9]+$/i.test(src);
  if (!hasExtension && !existsSync(src)) return true;

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
  delim: { formats: ["csv"], desc: "Delimiter character to separate columns. @default ','" },
  sep: { formats: ["csv"], desc: "Alias for delim. Delimiter character. @default ','" },
  escape: {
    formats: ["csv"],
    desc: "Character before a quote character within quoted values. @default '\"'",
  },
  force_quote: { formats: ["csv"], desc: "List of columns to always add quotes to. @default []" },
  header: { formats: ["csv"], desc: "Whether to write a header for the CSV file. @default true" },
  nullstr: { formats: ["csv"], desc: "String to represent NULL value. @default '' (empty string)" },
  prefix: {
    formats: ["csv"],
    desc: "Prefix string for CSV file. Requires header=false. @default ''",
  },
  suffix: {
    formats: ["csv"],
    desc: "Suffix string for CSV file. Requires header=false. @default ''",
  },
  quote: { formats: ["csv"], desc: "Quoting character for data values. @default '\"'" },
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
  row_groups_per_file: { formats: ["parquet"], desc: "Create new file after N row groups." },
  // JSON options
  array: {
    formats: ["json"],
    desc: "Write JSON array of records (true) or newline-delimited (false). @default false",
  },
  // Generic options (all formats)
  format: { formats: ["all"], desc: "Explicit format: parquet, csv, json, arrow, jsonl." },
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
  file_extension: { formats: ["all"], desc: "File extension for generated files. @default 'auto'" },
  per_thread_output: { formats: ["all"], desc: "Generate one file per thread. @default false" },
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
  format: ["auto", "newline_delimited", "array", "parquet", "csv", "tsv", "json", "jsonl", "arrow"],
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
  Object.entries(COPY_OPTIONS).map(([k, v]) => [k, `[${v.formats.join("/")}] ${v.desc}`]),
);

export type SqlOptions = {
  select?: string;
  where: string[];
  join: string[];
  distinct?: string;
  sample?: string;
  sort?: string;
  limit?: string;
  summarize?: boolean;
  with: string[];
  groupBy?: string;
};

export type ParsedArgs = {
  command: string;
  files: string[];
  options: Record<string, any>;
  toPath?: string;
  mode?: string;
  truncate: boolean;
  paging: boolean;
  tui: boolean;
  queryParts: string[];
  sqlOptions: SqlOptions;
  copyOptions: Record<string, any>;
  format?: string;
};

export const COMMANDS_DOCS: Record<string, Record<string, string>> = {
  read_csv: {
    all_varchar: "Skip type detection and assume all columns are of type VARCHAR. @default false",
    allow_quoted_nulls: "Allow the conversion of quoted values to NULL values. @default true",
    auto_detect: "Auto detect CSV parameters. @default true",
    auto_type_candidates:
      "Types that the sniffer uses when detecting column types. @default ['VARCHAR', 'BIGINT', 'DOUBLE', 'DATE', 'TIME', 'TIMESTAMP']",
    buffer_size: "Size of the buffers used to read files, in bytes. @default 16 * max_line_size",
    column_names: "Alias for names. Column names, as a list. @default []",
    column_types:
      "Alias for types. Column types, as either a list (by position) or a struct (by name). @default {} or []",
    columns:
      "Column names and types, as a struct. Using this option disables auto detection. @default {}",
    comment: "Character used to initiate comments. @default ''",
    compression: "Method used to compress CSV files. @default 'auto'",
    dateformat: "Date format used when parsing and writing dates. @default ''",
    decimal_separator: "Decimal separator for numbers. @default '.'",
    delim: "Delimiter character used to separate columns. Alias for sep. @default ','",
    dtypes:
      "Alias for types. Column types, as either a list (by position) or a struct (by name). @default {} or []",
    encoding:
      "Encoding used by the CSV file. Options are 'utf-8', 'utf-16', 'latin-1'. @default 'utf-8'",
    escape: "String used to escape the quote character within quoted values. @default '\"'",
    filename:
      "Add path of the containing file to each row to a column named 'filename'. @default false",
    files_to_sniff:
      "Number of lines at the top of the file to scan for auto-detection. @default 20480",
    force_not_null:
      "Do not match values in the specified columns against the NULL string. @default []",
    header: "First line of each file contains the column names. @default false",
    hive_partitioning: "Interpret the path as a Hive partitioned path. @default false",
    hive_types: "Hive types. @default -",
    hive_types_autocast: "Hive types autocast. @default true",
    ignore_errors: "Ignore any parsing errors encountered. @default false",
    max_line_size: "Maximum line size, in bytes. Alias: maximum_line_size. @default 2000000",
    maximum_line_size: "Alias for max_line_size. Maximum line size, in bytes. @default 2000000",
    names: "Column names, as a list. Alias: column_names. @default []",
    new_line: "New line character(s). Options are '\\r', '\\n', or '\\r\\n'. @default ''",
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
    store_rejects: "Skip any lines with errors and store them in the rejects table. @default false",
    strict_mode: "Enforces the strictness level of the CSV Reader. @default true",
    thousands: "The thousands separator. @default ''",
    timestampformat: "Timestamp format used when parsing and writing timestamps. @default ''",
    types: "Column types, as either a list (by position) or a struct (by name). @default {} or []",
    union_by_name:
      "Whether the columns of multiple files should be combined by name. @default false (but true in reader if multiple files)",
  },
  read_json: {
    auto_detect: "Whether to auto-detect the names of the keys and data types. @default true",
    compression: "Compression method (gzip, zstd, etc.). @default 'auto'",
    convert_strings_to_integers: "Convert strings to integers. @default false",
    format: "JSON format ('auto', 'newline_delimited', 'array'). @default 'auto'",
    ignore_errors: "Ignore parse errors. @default false",
    maximum_object_size: "Maximum object size in bytes. @default 16777216",
    sample_size: "Number of sample objects for detection. @default -1",
    union_by_name:
      "Whether the columns of multiple files should be combined by name. @default false (but true in reader if multiple files)",
  },
  read_ndjson: {
    auto_detect: "Whether to auto-detect the names of the keys and data types. @default true",
    compression: "Compression method (gzip, zstd, etc.). @default 'auto'",
    convert_strings_to_integers: "Convert strings to integers. @default false",
    format: "JSON format ('auto', 'newline_delimited', 'array'). @default 'auto'",
    ignore_errors: "Ignore parse errors. @default false",
    maximum_object_size: "Maximum object size in bytes. @default 16777216",
    sample_size: "Number of sample objects for detection. @default -1",
    union_by_name:
      "Whether the columns of multiple files should be combined by name. @default false (but true in reader if multiple files)",
  },
  read_parquet: {
    binary_as_string: "Load binary columns as strings. @default false",
    can_have_nan: "Whether or not to include the can_have_nan column. @default false",
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
};

function showHelp(command?: string) {
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
    console.log(`  ${"fish_completion".padEnd(20)} Generate Fish shell completion script`);

    console.log("\nAll Options (per command):");
    for (const [cmd, options] of Object.entries(COMMANDS_DOCS)) {
      console.log(`\n[${cmd}]`);
      for (const [key, doc] of Object.entries(options)) {
        console.log(`  --${key.padEnd(20)} ${doc}`);
      }
    }
  }

  console.log("\nGeneral Options:");
  console.log("  --to=<path>        Export result to a file (CSV, JSON, Parquet)");
  console.log("  --format=<fmt>     Output format (csv, tsv, json, jsonl, parquet) to stdout");
  console.log("\nCOPY TO Options (use with --to):");
  for (const [key, doc] of Object.entries(COPY_OPTIONS_DOCS)) {
    console.log(`  --${key.replace(/_/g, "-").padEnd(20)} ${doc}`);
  }
  console.log("  --select=<cols>    Select specific columns");
  console.log("  --where=<cond>     Filter rows with a WHERE clause");
  console.log("  -j, --join=<expr>  Join with another table (cumulative). Prefix with LATERAL/LEFT/etc or just table ON cond");
  console.log("  -d, --distinct=<col> Select distinct rows based on a column (DISTINCT ON)");
  console.log("  --sample=<n>       Sample N rows from the result (USING SAMPLE)");
  console.log("  -s, --sort=<cols>  Sort result by columns (ORDER BY)");
  console.log("  -g, --group-by=<cols> Group result by columns (GROUP BY)");
  console.log("  --summarize        Show summary statistics of the result");
  console.log("  --sample-size=<n>  Number of lines to scan for auto-detection");
  console.log("  -l, --limit=<n>    Limit the number of rows returned (LIMIT)");
  console.log("  --union-by-name    Whether to union multiple files by name");
  console.log("  --ignore-errors    Whether to ignore parsing errors");
  console.log(
    "  -m, --mode=<mode>  DuckDB output mode (box, line, json, csv, etc.). @default 'box'",
  );
  console.log("  -p, --paging       Enable pagination using less -SR");
  console.log("  -t, --tui          Open result in tablens TUI");
  console.log("  --with=<cte>       Add a CTE. The base table is injected into the first one.");
  console.log('                     Example: --with "X1 AS (SELECT contact)"');
  console.log("  --no-truncate      Do not truncate output to terminal width");
  console.log("  -h, --help         Show this help message");
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

  // Flags for each subcommand
  for (const [cmd, options] of Object.entries(COMMANDS_DOCS)) {
    for (const [opt, doc] of Object.entries(options)) {
      const description = doc.split(".")[0].replace(/"/g, '\\"');
      const suggestions = FLAG_SUGGESTIONS[opt] ? ` -a "${FLAG_SUGGESTIONS[opt].join(" ")}"` : "";
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
      const suggestions = FLAG_SUGGESTIONS[opt] ? ` -a "${FLAG_SUGGESTIONS[opt].join(" ")}"` : "";
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
    const suggestions = FLAG_SUGGESTIONS[opt] ? ` -a "${FLAG_SUGGESTIONS[opt].join(" ")}"` : "";

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
  console.log(`complete -c ${bin} -F -l to -d "Export result to a file (CSV, JSON, Parquet)" -r`);
  console.log(
    `complete -c ${bin} -f -l format -d "Output format (csv, tsv, json, jsonl, parquet) to stdout" -r -a "csv tsv json jsonl parquet"`,
  );
  console.log(
    `complete -c ${bin} -f -n "${notHasToFlag}" -l select -d "Select specific columns" -r`,
  );
  console.log(
    `complete -c ${bin} -f -n "${notHasToFlag}" -l where -d "Filter rows with a WHERE clause" -r`,
  );
  console.log(
    `complete -c ${bin} -f -n "${notHasToFlag}" -l join -s j -d "Join with another table (cumulative)" -r`,
  );
  console.log(
    `complete -c ${bin} -f -n "${notHasToFlag}" -l distinct -s d -d "Select distinct rows based on a column" -r`,
  );
  console.log(
    `complete -c ${bin} -f -n "${notHasToFlag}" -l sample -d "Sample N rows from the result" -r`,
  );
  console.log(
    `complete -c ${bin} -f -n "${notHasToFlag}" -l sort -s s -d "Sort result by columns (ORDER BY)" -r`,
  );
  console.log(
    `complete -c ${bin} -f -n "${notHasToFlag}" -l group-by -s g -d "Group result by columns (GROUP BY)" -r`,
  );
  console.log(
    `complete -c ${bin} -f -n "${notHasToFlag}" -l summarize -d "Show summary statistics of the result"`,
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
  console.log(`complete -c ${bin} -f -n "${notHasToFlag}" -l help -d "Show help message"`);
  console.log(`complete -c ${bin} -f -n "${notHasToFlag}" -s h -d "Show help message"`);
  console.log(
    `complete -c ${bin} -f -n "${notHasToFlag}" -l mode -s m -a "box line json csv markdown" -d "Output format"`,
  );
  console.log(
    `complete -c ${bin} -f -n "${notHasToFlag}" -l paging -s p -d "Enable pagination using less"`,
  );
  console.log(
    `complete -c ${bin} -f -n "${notHasToFlag}" -l tui -s t -d "Open result in tablens TUI"`,
  );
  console.log(
    `complete -c ${bin} -f -n "${notHasToFlag}" -l with -d "Add a CTE (Common Table Expression)" -r`,
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
  let paging = false;
  let tui = false;
  let queryParts: string[] = [];
  const sqlOptions: SqlOptions = { where: [], join: [], with: [] };
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

      if (key === "paging" || key === "p") {
        paging = true;
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

      if (key === "select") {
        sqlOptions.select = rawValue || args[++i];
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
      if (key === "with") {
        sqlOptions.with.push(autoQuoteSql(rawValue || args[++i]));
        continue;
      }
      if (key === "distinct" || key === "d") {
        sqlOptions.distinct = rawValue || args[++i];
        continue;
      }
      if (key === "sample") {
        sqlOptions.sample = rawValue || args[++i];
        continue;
      }
      if (key === "sort" || key === "order_by" || key === "s") {
        sqlOptions.sort = rawValue || args[++i];
        continue;
      }
      if (key === "group_by" || key === "g") {
        sqlOptions.groupBy = rawValue || args[++i];
        continue;
      }
      if (key === "summarize") {
        sqlOptions.summarize = true;
        continue;
      }

      if (key === "limit" || key === "l") {
        sqlOptions.limit = rawValue || args[++i];
        continue;
      }

      // Check if this is a COPY option
      if (COPY_OPTIONS_DOCS[key]) {
        let value: any = rawValue;
        if (rawValue === undefined) value = true;
        else if (rawValue === "true") value = true;
        else if (rawValue === "false") value = false;
        else if (!isNaN(Number(rawValue)) && rawValue !== "") value = Number(rawValue);
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
      if (rawValue === undefined) value = true;
      else if (rawValue === "true") value = true;
      else if (rawValue === "false") value = false;
      else if (!isNaN(Number(rawValue)) && rawValue !== "") value = Number(rawValue);
      else if (rawValue?.startsWith("[") && rawValue?.endsWith("]")) {
        value = rawValue
          .slice(1, -1)
          .split(",")
          .map((s) => s.trim());
      }

      options[key] = value;
    } else {
      // Positional argument
      if (!command && COMMANDS_DOCS[arg]) {
        command = arg;
      } else if (files.length === 0) {
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
      const ext = firstFile.split(".").pop()?.toLowerCase() || "";
      command = EXT_TO_CMD[ext] || "read_csv";
    }
  }

  return {
    command,
    files,
    options,
    toPath,
    mode,
    truncate,
    paging,
    tui,
    queryParts,
    sqlOptions,
    copyOptions,
    format,
  };
}

export function buildQuery(parsed: ParsedArgs): string {
  const { command, files, options, toPath, queryParts, sqlOptions, copyOptions, format } = parsed;
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
    const isDb = /\.(db|ddb|duckdb|sqlite3|sqlite)$/i.test(cleanItem) || (cleanItem.split(" ").length === 1 && existsSync(cleanItem));

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

  if (files.length === 1 && typeof fileArg === "string") {
    const parts = fileArg.split(".");
    // Detect magic source extension (e.g., soccer.db or spotify.sqlite3.artists)
    const dbExtIdx = parts.findIndex((p) => /^(db|ddb|duckdb|vscdb|sqlite3|sqlite)$/i.test(p));

    if (dbExtIdx !== -1) {
      const dbPath = parts.slice(0, dbExtIdx + 1).join(".");
      const tablePart = parts.slice(dbExtIdx + 1).join(".");
      const alias = getAlias(dbPath);

      attachments.push(`${dbPath} AS ${alias}`);
      magicDbAlias = alias;

      if (tablePart) {
        callStr = tablePart; // No prefix needed if we USE the alias
      } else {
        callStr = "sqlite_master";
      }
    } else if (isExpressionSource(fileArg)) {
      callStr = smartAtToStar(smartBraceToParen(fileArg));
    } else {
      callStr = fnSerial(command, fileArg, options);
    }
  } else {
    callStr = fnSerial(command, fileArg, options);
  }

  const sqlTail = smartAtToStar(autoQuoteSql(smartBraceToParen(queryParts.join(" "))));

  // Generate ATTACH statements and setup
  let setupSql = "";
  const attachSqls: string[] = [];
  const uniqAttachments = [...new Set(attachments)];

  for (const attachment of uniqAttachments) {
    const parts = attachment.split(/ AS /i);
    const path = parts[0].trim();
    const alias = (parts[1] || getAlias(path)).trim();

    if (/\.(sqlite3|sqlite|vscdb)$/i.test(path)) needsSqlite = true;
    attachSqls.push(`ATTACH '${path}' AS ${alias}`);
  }

  if (needsSqlite) {
    setupSql = "INSTALL sqlite; LOAD sqlite; ";
  }

  const fullAttachSql = attachSqls.length > 0 ? attachSqls.join("; ") + "; " : "";
  const useSql = magicDbAlias ? `USE ${magicDbAlias}; ` : "";
  const finalSetupSql = `${setupSql}${fullAttachSql}${useSql}`;

  // Determine the base SELECT clause
  let baseSelect = "SELECT *";
  if (sqlOptions.distinct) {
    baseSelect = `SELECT DISTINCT ON (${smartAtToStar(smartBraceToParen(sqlOptions.distinct))}) *`;
  }
  if (sqlOptions.select) {
    const cleanSelect = smartAtToStar(smartBraceToParen(sqlOptions.select));
    if (sqlOptions.distinct) {
      baseSelect = `SELECT DISTINCT ON (${smartAtToStar(smartBraceToParen(sqlOptions.distinct))}) ${cleanSelect}`;
    } else {
      baseSelect = `SELECT ${cleanSelect}`;
    }
  }

  // Determine if the positional tail already has a SELECT
  const hasSelectInTail = sqlTail.toLowerCase().trim().startsWith("select");

  // Construct JOIN clauses
  let joinClauses = "";
  for (const j of join) {
    // If it starts with a JOIN keyword, use as-is; otherwise prepend JOIN
    const upperJ = j.trim().toUpperCase();
    const hasJoinKeyword =
      upperJ.startsWith("JOIN") ||
      upperJ.startsWith("LEFT JOIN") ||
      upperJ.startsWith("RIGHT JOIN") ||
      upperJ.startsWith("INNER JOIN") ||
      upperJ.startsWith("OUTER JOIN") ||
      upperJ.startsWith("CROSS JOIN") ||
      upperJ.startsWith("NATURAL JOIN") ||
      upperJ.startsWith("LATERAL JOIN") ||
      upperJ.startsWith("LEFT OUTER") ||
      upperJ.startsWith("RIGHT OUTER") ||
      upperJ.startsWith("FULL OUTER") ||
      upperJ.startsWith("FULL JOIN");

    if (hasJoinKeyword) {
      joinClauses += ` ${smartAtToStar(smartBraceToParen(j))}`;
    } else if (upperJ.startsWith("LATERAL")) {
      // LATERAL without JOIN - add JOIN after LATERAL
      joinClauses += ` ${smartAtToStar(smartBraceToParen(j)).replace(/^lateral\s+/i, "LATERAL JOIN ")}`;
    } else {
      joinClauses += ` JOIN ${smartAtToStar(smartBraceToParen(j))}`;
    }
  }

  // Construct modifiers from flags
  let modifiers = "";
  if (where.length > 0)
    modifiers += ` WHERE ${where.map((w) => smartAtToStar(autoQuoteWhere(smartBraceToParen(w)))).join(" AND ")}`;
  if (sqlOptions.groupBy) modifiers += ` GROUP BY ${smartAtToStar(smartBraceToParen(sqlOptions.groupBy))}`;
  if (sqlOptions.sample) modifiers += ` USING SAMPLE ${sqlOptions.sample}`;
  if (sqlOptions.limit) modifiers += ` LIMIT ${sqlOptions.limit}`;
  if (sqlOptions.sort) modifiers += ` ORDER BY ${smartAtToStar(smartBraceToParen(sqlOptions.sort))}`;

  // Normalize the core SELECT part
  let selectQuery = "";
  if (hasSelectInTail) {
    let selectClause = sqlTail;
    if (sqlOptions.distinct && !selectClause.toLowerCase().includes("distinct on")) {
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
    selectQuery = `${baseSelect} ${callStr ? `FROM ${callStr}` : ""}${joinClauses}${modifiers}${sqlTail ? " " + sqlTail : ""}`;
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

  if (toPath || format) {
    const targetPath = toPath || "/dev/stdout";
    const ext = targetPath.split(".").pop()?.toLowerCase() || "";
    let formatStr = format?.toUpperCase() || "PARQUET";
    if (formatStr === "JSONL") formatStr = "JSON";
    if (formatStr === "TSV") formatStr = "CSV";

    if (!format) {
      if (ext === "json" || ext === "jsonl" || ext === "ndjson") formatStr = "JSON";
      else if (ext === "csv") formatStr = "CSV";
      else if (ext === "tsv") formatStr = "CSV"; // DELIMITER handled below if needed, or by copyOptions
    }

    // Build COPY options array
    const copyOptsArray: string[] = [`FORMAT ${formatStr}`];

    // Auto-add ARRAY TRUE for format=json
    if (format === "json" && copyOptions.array === undefined) {
      copyOptsArray.push("ARRAY TRUE");
    }

    // Auto-add delimiter for format=tsv or tsv extension
    if ((format === "tsv" || ext === "tsv") && !copyOptions.delim && !copyOptions.sep) {
      copyOptsArray.push("DELIMITER '\t'");
    }

    const targetFormat = format?.toLowerCase() || EXT_TO_COPY_FORMAT[ext] || "parquet";

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
        copyOptsArray.push(`${keyUpper} [${value.map((v) => `'${v}'`).join(", ")}]`);
      } else if (typeof value === "string") {
        copyOptsArray.push(`${keyUpper} '${value}'`);
      } else if (typeof value === "boolean") {
        copyOptsArray.push(`${keyUpper} ${value ? "TRUE" : "FALSE"}`);
      } else if (typeof value === "number") {
        copyOptsArray.push(`${keyUpper} ${value}`);
      }
    }

    return `${finalSetupSql}COPY (${selectQuery}) TO '${targetPath}' (${copyOptsArray.join(", ")})`;
  }

  return `${finalSetupSql}${selectQuery}`.trim();
}

async function main() {
  const args = process.argv.slice(2);
  const hasHelp = args.includes("--help") || args.includes("-h");

  if (args.length === 0 || (hasHelp && args.length === 1)) {
    showHelp();
    return;
  }

  if (args[0] === "fish_completion") {
    generateFishCompletion();
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
    paging,
    tui,
    queryParts,
    sqlOptions,
    copyOptions,
    format,
  } = parsed;

  // If piped into another process, default to CSV format
  if (!isTTY && !format && !toPath) {
    format = "csv";
    parsed.format = "csv";
  }

  if (!command || (!COMMANDS_DOCS[command] && command !== "sql")) {
    await Bun.write(
      Bun.stderr,
      (command ? `Unknown command: ${command}` : "Missing command or file path") + "\n",
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

  if (COMMANDS_DOCS[command]?.union_by_name && options.union_by_name === undefined) {
    // Default to union_by_name=true if multiple files are provided or a wildcard is suspected
    if (
      Array.isArray(fileArg) ||
      (typeof fileArg === "string" && (fileArg.includes("*") || fileArg.includes("?")))
    ) {
      options.union_by_name = true;
    }
  }

  try {
    const query = buildQuery(parsed);

    // Construct command arguments
    const cmdArgs: string[] = [];
    if (mode) {
      cmdArgs.push("-" + mode);
    }
    cmdArgs.push("-c", query);

    const highlightedQuery = highlightSql(query);
    const commandLog = `duckdb ${cmdArgs
      .map((a) => (a === query ? `"${highlightedQuery}"` : a.includes(" ") ? `"${a}"` : a))
      .join(" ")}\n`;
    await Bun.write(Bun.stderr, commandLog);

    if (tui) {
      await launchTablens({ query });
    } else if (toPath || format) {
      await $`duckdb -c ${query}`;
      if (toPath) {
        console.log(`Successfully exported to ${toPath}`);
      }
    } else if (paging) {
      const modeFlag = mode ? `-${mode}` : "";
      const duckProcess = Bun.spawn(["duckdb", ...cmdArgs]);
      const lessProcess = Bun.spawn(["less", "-SR"], {
        stdin: duckProcess.stdout,
        stdout: "inherit",
        stderr: "inherit",
      });
      await lessProcess.exited;
    } else {
      // Use DuckDB CLI with streaming output for efficient truncation
      const duckProcess = Bun.spawn(["duckdb", ...cmdArgs], {
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
          .replace(/\b(\d+)(?=\srows\b)/g, (n) => n.replace(/\B(?=(\d{3})+(?!\d))/g, "_"));
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
  } catch (err: any) {
    if (err.stderr) {
      await Bun.write(Bun.stderr, err.stderr.toString() + "\n");
    } else {
      await Bun.write(Bun.stderr, `Error: ${err.message}\n`);
    }
    process.exit(1);
  }
}

main();
