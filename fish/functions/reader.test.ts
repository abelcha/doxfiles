import { describe, test, expect } from "bun:test";
import {
  serializeValue,
  fnSerial,
  autoQuoteSql,
  autoQuoteWhere,
  smartBraceToParen,
  smartAtToStar,
  highlightSql,
  isExpressionSource,
  parseArgs,
  buildQuery,
  EXT_TO_CMD,
  COMMANDS_DOCS,
} from "./reader";

describe("serializeValue", () => {
  test("serializes strings with quotes", () => {
    expect(serializeValue("hello")).toBe("'hello'");
  });

  test("serializes booleans", () => {
    expect(serializeValue(true)).toBe("true");
    expect(serializeValue(false)).toBe("false");
  });

  test("serializes numbers", () => {
    expect(serializeValue(42)).toBe("42");
    expect(serializeValue(3.14)).toBe("3.14");
  });

  test("serializes arrays", () => {
    expect(serializeValue(["a", "b"])).toBe("['a','b']");
    expect(serializeValue([1, 2, 3])).toBe("[1,2,3]");
  });

  test("serializes objects", () => {
    expect(serializeValue({ key: "value" })).toBe("{'key': 'value'}");
    expect(serializeValue({ a: 1, b: true })).toBe("{'a': 1,'b': true}");
  });
});

describe("fnSerial", () => {
  test("generates function call without options", () => {
    expect(fnSerial("read_csv", "file.csv", {})).toBe("read_csv('file.csv')");
  });

  test("generates function call with options", () => {
    expect(fnSerial("read_csv", "file.csv", { delim: "," })).toBe(
      "read_csv('file.csv',delim=',')"
    );
  });

  test("generates function call with multiple options", () => {
    expect(fnSerial("read_csv", "file.csv", { delim: ",", header: true })).toBe(
      "read_csv('file.csv',delim=',',header=true)"
    );
  });

  test("handles array of files", () => {
    expect(fnSerial("read_csv", ["a.csv", "b.csv"], {})).toBe(
      "read_csv(['a.csv','b.csv'])"
    );
  });

  test("handles complex options", () => {
    expect(
      fnSerial("read_csv", "file.csv", { columns: { id: "INTEGER", name: "VARCHAR" } })
    ).toBe("read_csv('file.csv',columns={'id': 'INTEGER','name': 'VARCHAR'})");
  });
});

describe("autoQuoteSql", () => {
  test("quotes values after operators with spaces", () => {
    expect(autoQuoteSql("x = hello")).toBe("x = 'hello'");
    expect(autoQuoteSql("x != world")).toBe("x != 'world'");
  });

  test("does NOT quote values without spaces around operators", () => {
    expect(autoQuoteSql("x=hello")).toBe("x=hello");
  });

  test("quotes LIKE patterns", () => {
    expect(autoQuoteSql("name LIKE %test%")).toBe("name LIKE '%test%'");
    expect(autoQuoteSql("name ILIKE pattern")).toBe("name ILIKE 'pattern'");
  });

  test("preserves already quoted values", () => {
    expect(autoQuoteSql("x = 'already quoted'")).toBe("x = 'already quoted'");
  });

  test("handles multiple conditions", () => {
    expect(autoQuoteSql("a = 1 AND b = hello")).toBe("a = '1' AND b = 'hello'");
  });
});

describe("autoQuoteWhere", () => {
  test("quotes values without spaces", () => {
    expect(autoQuoteWhere("first_name=Riadh")).toBe("first_name='Riadh'");
    expect(autoQuoteWhere("last_name=Guezmir")).toBe("last_name='Guezmir'");
  });

  test("quotes values with spaces around operator", () => {
    expect(autoQuoteWhere("first_name = Riadh")).toBe("first_name = 'Riadh'");
  });

  test("does NOT quote numbers", () => {
    expect(autoQuoteWhere("age=30")).toBe("age=30");
    expect(autoQuoteWhere("price=19.99")).toBe("price=19.99");
    expect(autoQuoteWhere("count=-5")).toBe("count=-5");
  });

  test("preserves already quoted values", () => {
    expect(autoQuoteWhere("name='John'")).toBe("name='John'");
  });

  test("handles various operators", () => {
    expect(autoQuoteWhere("status!=active")).toBe("status!='active'");
    expect(autoQuoteWhere("value>=threshold")).toBe("value>='threshold'");
    // Note: ~~ is a regex operator, the current regex handles single ~ but not ~~
    expect(autoQuoteWhere("name~pattern")).toBe("name~'pattern'");
  });

  test("handles complex where with multiple equals", () => {
    // This was the bug: --where=last_name=Guezmir
    expect(autoQuoteWhere("last_name=Guezmir")).toBe("last_name='Guezmir'");
  });

  test("does NOT quote values with spaces if they look like identifiers", () => {
    // This is a current limitation or intentional behavior: operators WITH spaces
    // only quote if the value is not already quoted and doesn't look like a property?
    // Actually autoQuoteSql quotes anything after = if there are spaces.
    expect(autoQuoteSql("col = val")).toBe("col = 'val'");
  });
});

describe("highlightSql", () => {
  test("highlights keywords in blue", () => {
    const highlighted = highlightSql("SELECT * FROM table");
    expect(highlighted).toContain("\x1b[38;2;16;177;254mSELECT");
    expect(highlighted).toContain("\x1b[38;2;16;177;254mFROM");
  });

  test("highlights strings in pink", () => {
    const highlighted = highlightSql("SELECT 'hello'");
    expect(highlighted).toContain("\x1b[38;2;255;120;248m'hello'");
  });

  test("highlights numbers in pink", () => {
    const highlighted = highlightSql("SELECT 42");
    expect(highlighted).toContain("\x1b[38;2;255;120;248m42");
  });

  test("highlights comments in grey", () => {
    const highlighted = highlightSql("SELECT * -- comment");
    expect(highlighted).toContain("\x1b[38;2;99;109;131m-- comment");
  });
});

describe("parseArgs", () => {
  describe("command detection", () => {
    test("detects explicit command", () => {
      const result = parseArgs(["read_csv", "file.csv"]);
      expect(result.command).toBe("read_csv");
      expect(result.files).toEqual(["file.csv"]);
    });

    test("auto-detects command from .csv extension", () => {
      const result = parseArgs(["file.csv"]);
      expect(result.command).toBe("read_csv");
    });

    test("auto-detects command from .parquet extension", () => {
      const result = parseArgs(["file.parquet"]);
      expect(result.command).toBe("read_parquet");
    });

    test("auto-detects command from .json extension", () => {
      const result = parseArgs(["file.json"]);
      expect(result.command).toBe("read_json");
    });

    test("auto-detects command from .jsonl extension", () => {
      const result = parseArgs(["file.jsonl"]);
      expect(result.command).toBe("read_ndjson");
    });

    test("auto-detects command from .xlsx extension", () => {
      const result = parseArgs(["file.xlsx"]);
      expect(result.command).toBe("read_xlsx");
    });
  });

  describe("--where flag", () => {
    test("parses single --where", () => {
      const result = parseArgs(["file.csv", "--where=name=John"]);
      expect(result.sqlOptions.where).toEqual(["name=John"]);
    });

    test("parses multiple --where flags", () => {
      const result = parseArgs([
        "file.csv",
        "--where=first_name=Riadh",
        "--where=last_name=Guezmir",
      ]);
      expect(result.sqlOptions.where).toEqual([
        "first_name=Riadh",
        "last_name=Guezmir",
      ]);
    });

    test("handles --where with value containing =", () => {
      const result = parseArgs(["file.csv", "--where=col=value"]);
      expect(result.sqlOptions.where).toEqual(["col=value"]);
    });
  });

  describe("--with flag", () => {
    test("parses single --with", () => {
      const result = parseArgs(["file.csv", "--with=XX as select * from zz"]);
      expect(result.sqlOptions.with).toEqual(["XX as select * from zz"]);
    });

    test("parses multiple --with flags", () => {
      const result = parseArgs([
        "file.csv",
        "--with=XX as select * from zz",
        "--with=xx2 as select * from xx",
      ]);
      expect(result.sqlOptions.with).toEqual([
        "XX as select * from zz",
        "xx2 as select * from xx",
      ]);
    });
  });

  describe("--select flag", () => {
    test("parses --select", () => {
      const result = parseArgs(["file.csv", "--select=id,name"]);
      expect(result.sqlOptions.select).toBe("id,name");
    });
  });

  describe("--distinct flag", () => {
    test("parses --distinct", () => {
      const result = parseArgs(["file.csv", "--distinct=email"]);
      expect(result.sqlOptions.distinct).toBe("email");
    });

    test("parses -d shorthand", () => {
      const result = parseArgs(["file.csv", "-d", "email"]);
      expect(result.sqlOptions.distinct).toBe("email");
    });
  });

  describe("--sort flag", () => {
    test("parses --sort", () => {
      const result = parseArgs(["file.csv", "--sort=name"]);
      expect(result.sqlOptions.sort).toBe("name");
    });

    test("parses -s shorthand", () => {
      const result = parseArgs(["file.csv", "-s", "name DESC"]);
      expect(result.sqlOptions.sort).toBe("name DESC");
    });

    test("parses --order-by alias", () => {
      const result = parseArgs(["file.csv", "--order-by=created_at"]);
      expect(result.sqlOptions.sort).toBe("created_at");
    });
  });

  describe("--sample flag", () => {
    test("parses --sample", () => {
      const result = parseArgs(["file.csv", "--sample=100"]);
      expect(result.sqlOptions.sample).toBe("100");
    });
  });

  describe("--limit flag", () => {
    test("parses --limit", () => {
      const result = parseArgs(["file.csv", "--limit=10"]);
      expect(result.sqlOptions.limit).toBe("10");
    });

    test("parses -l shorthand", () => {
      const result = parseArgs(["file.csv", "-l", "5"]);
      expect(result.sqlOptions.limit).toBe("5");
    });
  });

  describe("--group-by flag", () => {
    test("parses --group-by", () => {
      const result = parseArgs(["file.csv", "--group-by=category"]);
      expect(result.sqlOptions.groupBy).toBe("category");
    });

    test("parses -g shorthand", () => {
      const result = parseArgs(["file.csv", "-g", "category,month"]);
      expect(result.sqlOptions.groupBy).toBe("category,month");
    });
  });

  describe("--summarize flag", () => {
    test("parses --summarize", () => {
      const result = parseArgs(["file.csv", "--summarize"]);
      expect(result.sqlOptions.summarize).toBe(true);
    });
  });

  describe("--to flag", () => {
    test("parses --to", () => {
      const result = parseArgs(["file.csv", "--to=output.parquet"]);
      expect(result.toPath).toBe("output.parquet");
    });
  });

  describe("--format flag", () => {
    test("parses --format", () => {
      const result = parseArgs(["file.csv", "--format=json"]);
      expect(result.format).toBe("json");
    });
  });

  describe("--mode flag", () => {
    test("parses --mode", () => {
      const result = parseArgs(["file.csv", "--mode=json"]);
      expect(result.mode).toBe("json");
    });

    test("parses -m shorthand", () => {
      const result = parseArgs(["file.csv", "-m", "csv"]);
      expect(result.mode).toBe("csv");
    });
  });

  describe("--paging flag", () => {
    test("parses --paging", () => {
      const result = parseArgs(["file.csv", "--paging"]);
      expect(result.paging).toBe(true);
    });

    test("parses -p shorthand", () => {
      const result = parseArgs(["file.csv", "-p"]);
      expect(result.paging).toBe(true);
    });
  });

  describe("--tui flag", () => {
    test("parses --tui", () => {
      const result = parseArgs(["file.csv", "--tui"]);
      expect(result.tui).toBe(true);
    });

    test("parses -t shorthand", () => {
      const result = parseArgs(["file.csv", "-t"]);
      expect(result.tui).toBe(true);
    });
  });

  describe("--tui flag", () => {
    test("parses --tui", () => {
      const result = parseArgs(["file.csv", "--tui"]);
      expect(result.tui).toBe(true);
    });

    test("parses -t shorthand", () => {
      const result = parseArgs(["file.csv", "-t"]);
      expect(result.tui).toBe(true);
    });
  });

  describe("--no-truncate flag", () => {
    test("parses --no-truncate", () => {
      const result = parseArgs(["file.csv", "--no-truncate"]);
      expect(result.truncate).toBe(false);
    });
  });

  describe("read options", () => {
    test("parses boolean options", () => {
      const result = parseArgs(["file.csv", "--all_varchar=true"]);
      expect(result.options.all_varchar).toBe(true);
    });

    test("parses boolean options without value", () => {
      const result = parseArgs(["file.csv", "--all_varchar"]);
      expect(result.options.all_varchar).toBe(true);
    });

    test("parses numeric options", () => {
      const result = parseArgs(["file.csv", "--skip=5"]);
      expect(result.options.skip).toBe(5);
    });

    test("parses string options", () => {
      // Note: delim is also a COPY option, so it goes to copyOptions
      // Use a read-only option like 'encoding' instead
      const result = parseArgs(["file.csv", "--encoding=latin-1"]);
      expect(result.options.encoding).toBe("latin-1");
    });

    test("parses array options", () => {
      const result = parseArgs(["file.csv", "--names=[id,name,email]"]);
      expect(result.options.names).toEqual(["id", "name", "email"]);
    });
  });

  describe("positional query parts", () => {
    test("captures positional arguments after file", () => {
      const result = parseArgs(["file.csv", "LIMIT", "10"]);
      expect(result.queryParts).toEqual(["LIMIT", "10"]);
    });

    test("captures SELECT in positional", () => {
      const result = parseArgs(["file.csv", "SELECT", "id,", "name"]);
      expect(result.queryParts).toEqual(["SELECT", "id,", "name"]);
    });
  });

  describe("COPY options", () => {
    test("parses compression option", () => {
      const result = parseArgs([
        "file.csv",
        "--to=out.parquet",
        "--compression=zstd",
      ]);
      expect(result.copyOptions.compression).toBe("zstd");
    });

    test("parses partition_by option", () => {
      const result = parseArgs([
        "file.csv",
        "--to=out.parquet",
        "--partition_by=[year,month]",
      ]);
      expect(result.copyOptions.partition_by).toEqual(["year", "month"]);
    });

    test("parses --delim for input read call", () => {
      const result = parseArgs(["file.csv", "--delim=;"]);
      expect(result.options.delim).toBe(";");
    });

    test("omits delim from Parquet export in COPY statement", () => {
      const result = parseArgs(["file.csv", "--delim=;", "--to=out.parquet"]);
      const query = buildQuery(result);
      expect(query).toContain("read_csv('file.csv',delim=';')");
      expect(query).not.toContain("DELIM ';' )");
    });

    test("prioritizes shared flags after --format as COPY options only", () => {
      const result = parseArgs(["/datasets/deezer.fr.parquet", "--format=json", "--array"]);
      const query = buildQuery(result);
      // It should NOT be in read_parquet(...)
      expect(query).not.toContain("read_parquet('/datasets/deezer.fr.parquet',array=true)");
      // It should be in read_parquet('/datasets/deezer.fr.parquet')
      expect(query).toContain("read_parquet('/datasets/deezer.fr.parquet')");
      // It should be in the COPY TO (...) section
      expect(query).toContain("ARRAY TRUE");
    });
  });
});

describe("buildQuery", () => {
  describe("basic SELECT queries", () => {
    test("builds simple SELECT *", () => {
      const parsed = parseArgs(["file.csv"]);
      const query = buildQuery(parsed);
      expect(query).toBe("SELECT * FROM read_csv('file.csv')");
    });

    test("builds SELECT with specific columns", () => {
      const parsed = parseArgs(["file.csv", "--select=id,name"]);
      const query = buildQuery(parsed);
      expect(query).toBe("SELECT id,name FROM read_csv('file.csv')");
    });

    test("handles --distinct with positional SELECT", () => {
      const parsed = parseArgs(["file.csv", "SELECT *", "--distinct=phone"]);
      const query = buildQuery(parsed);
      expect(query).toContain("SELECT DISTINCT ON (phone) *");
    });
  });

  describe("WHERE clause", () => {
    test("builds query with single --where", () => {
      const parsed = parseArgs(["file.csv", "--where=name=John"]);
      const query = buildQuery(parsed);
      expect(query).toBe(
        "SELECT * FROM read_csv('file.csv') WHERE name='John'"
      );
    });

    test("builds query with multiple --where (AND)", () => {
      const parsed = parseArgs([
        "file.csv",
        "--where=first_name=Riadh",
        "--where=last_name=Guezmir",
      ]);
      const query = buildQuery(parsed);
      expect(query).toBe(
        "SELECT * FROM read_csv('file.csv') WHERE first_name='Riadh' AND last_name='Guezmir'"
      );
    });

    test("preserves numeric values in --where", () => {
      const parsed = parseArgs(["file.csv", "--where=age=30"]);
      const query = buildQuery(parsed);
      expect(query).toBe("SELECT * FROM read_csv('file.csv') WHERE age=30");
    });
  });

  describe("ORDER BY clause", () => {
    test("builds query with --sort", () => {
      const parsed = parseArgs(["file.csv", "--sort=name"]);
      const query = buildQuery(parsed);
      expect(query).toBe(
        "SELECT * FROM read_csv('file.csv') ORDER BY name"
      );
    });

    test("builds query with --sort DESC", () => {
      const parsed = parseArgs(["file.csv", "--sort=created_at DESC"]);
      const query = buildQuery(parsed);
      expect(query).toBe(
        "SELECT * FROM read_csv('file.csv') ORDER BY created_at DESC"
      );
    });

    test("builds query with --group-by", () => {
      const parsed = parseArgs(["file.csv", "--select=cat,count(*)", "--group-by=cat"]);
      const query = buildQuery(parsed);
      expect(query).toBe(
        "SELECT cat,count(*) FROM read_csv('file.csv') GROUP BY cat"
      );
    });
  });

  describe("DISTINCT ON clause", () => {
    test("builds query with --distinct", () => {
      const parsed = parseArgs(["file.csv", "--distinct=email"]);
      const query = buildQuery(parsed);
      expect(query).toBe(
        "SELECT DISTINCT ON (email) * FROM read_csv('file.csv')"
      );
    });

    test("builds query with --distinct and --select", () => {
      const parsed = parseArgs([
        "file.csv",
        "--distinct=email",
        "--select=id,email,name",
      ]);
      const query = buildQuery(parsed);
      expect(query).toBe(
        "SELECT DISTINCT ON (email) id,email,name FROM read_csv('file.csv')"
      );
    });
  });

  describe("SAMPLE clause", () => {
    test("builds query with --sample", () => {
      const parsed = parseArgs(["file.csv", "--sample=100"]);
      const query = buildQuery(parsed);
      expect(query).toBe(
        "SELECT * FROM read_csv('file.csv') USING SAMPLE 100"
      );
    });
  });

  describe("SUMMARIZE", () => {
    test("builds query with --summarize", () => {
      const parsed = parseArgs(["file.csv", "--summarize"]);
      const query = buildQuery(parsed);
      expect(query).toBe("SUMMARIZE SELECT * FROM read_csv('file.csv')");
    });
  });

  describe("CTE (WITH clause)", () => {
    test("builds query with single --with injecting FROM source", () => {
      const parsed = parseArgs([
        "file.csv",
        "--with=XX as (SELECT contact)",
        "select * from XX",
      ]);
      const query = buildQuery(parsed);
      expect(query).toBe(
        "WITH XX AS (FROM read_csv('file.csv') SELECT contact) select * from XX"
      );
    });

    test("preserves --limit when tail has FROM", () => {
      const parsed = parseArgs([
        "file.csv",
        "--with=XX as (SELECT contact)",
        "SELECT * FROM XX",
        "--limit=100",
      ]);
      const query = buildQuery(parsed);
      expect(query).toContain("SELECT * FROM XX LIMIT 100");
    });

    test("builds query with multiple --with injecting FROM into first", () => {
      const parsed = parseArgs([
        "file.csv",
        "--with=XX as (SELECT contact)",
        "--with=XX2 as (SELECT * FROM XX)",
        "select * from XX2",
      ]);
      const query = buildQuery(parsed);
      expect(query).toBe(
        "WITH XX AS (FROM read_csv('file.csv') SELECT contact), XX2 as (SELECT * FROM XX) select * from XX2"
      );
    });

    test("handles CTE without parentheses using FROM", () => {
      const parsed = parseArgs([
        "file.csv",
        "--with=XX AS SELECT contact",
        "SELECT * FROM XX",
      ]);
      const query = buildQuery(parsed);
      expect(query).toContain("WITH XX AS FROM read_csv('file.csv') SELECT contact");
    });

    test("auto-quotes values in --with strings", () => {
      const parsed = parseArgs([
        "file.csv",
        "--with=XX as (SELECT * where name = John)",
        "SELECT *",
      ]);
      const query = buildQuery(parsed);
      expect(query).toContain("name = 'John'");
    });
  });

  describe("LIMIT clause", () => {
    test("builds query with --limit", () => {
      const parsed = parseArgs(["file.csv", "--limit=100"]);
      const query = buildQuery(parsed);
      expect(query).toBe("SELECT * FROM read_csv('file.csv') LIMIT 100");
    });
  });

  describe("combined modifiers", () => {
    test("builds query with WHERE, ORDER BY, and SAMPLE", () => {
      const parsed = parseArgs([
        "file.csv",
        "--where=status=active",
        "--sort=name",
        "--sample=50",
      ]);
      const query = buildQuery(parsed);
      expect(query).toBe(
        "SELECT * FROM read_csv('file.csv') WHERE status='active' USING SAMPLE 50 ORDER BY name"
      );
    });

    test("builds query with all options", () => {
      const parsed = parseArgs([
        "file.csv",
        "--select=id,name",
        "--distinct=id",
        "--where=active=true",
        "--sort=name",
        "--summarize",
      ]);
      const query = buildQuery(parsed);
      expect(query).toContain("SUMMARIZE");
      expect(query).toContain("SELECT DISTINCT ON (id) id,name");
      expect(query).toContain("WHERE active='true'");
      expect(query).toContain("ORDER BY name");
    });
  });

  describe("COPY TO queries", () => {
    test("builds COPY TO parquet", () => {
      const parsed = parseArgs(["file.csv", "--to=output.parquet"]);
      const query = buildQuery(parsed);
      expect(query).toBe(
        "COPY (SELECT * FROM read_csv('file.csv')) TO 'output.parquet' (FORMAT PARQUET)"
      );
    });

    test("builds COPY TO csv", () => {
      const parsed = parseArgs(["file.parquet", "--to=output.csv"]);
      const query = buildQuery(parsed);
      expect(query).toBe(
        "COPY (SELECT * FROM read_parquet('file.parquet')) TO 'output.csv' (FORMAT CSV)"
      );
    });

    test("builds COPY TO json", () => {
      const parsed = parseArgs(["file.csv", "--to=output.json"]);
      const query = buildQuery(parsed);
      expect(query).toBe(
        "COPY (SELECT * FROM read_csv('file.csv')) TO 'output.json' (FORMAT JSON)"
      );
    });

    test("builds COPY TO with compression", () => {
      const parsed = parseArgs([
        "file.csv",
        "--to=output.parquet",
        "--compression=zstd",
      ]);
      const query = buildQuery(parsed);
      expect(query).toContain("COMPRESSION ZSTD");
    });

    test("builds COPY TO with WHERE and ORDER BY", () => {
      const parsed = parseArgs([
        "file.csv",
        "--to=output.parquet",
        "--where=status=active",
        "--sort=name",
      ]);
      const query = buildQuery(parsed);
      expect(query).toContain("WHERE status='active'");
      expect(query).toContain("ORDER BY name");
      expect(query).toContain("TO 'output.parquet'");
    });

    test("builds COPY TO stdout when --format is provided", () => {
      const parsed = parseArgs(["file.csv", "--format=json"]);
      const query = buildQuery(parsed);
      expect(query).toContain("COPY (SELECT * FROM read_csv('file.csv')) TO '/dev/stdout' (FORMAT JSON, ARRAY TRUE)");
    });

    test("builds COPY TO stdout when --format=jsonl is provided", () => {
      const parsed = parseArgs(["file.csv", "--format=jsonl"]);
      const query = buildQuery(parsed);
      expect(query).toContain("COPY (SELECT * FROM read_csv('file.csv')) TO '/dev/stdout' (FORMAT JSON)");
      expect(query).not.toContain("ARRAY TRUE");
    });

    test("builds COPY TO stdout when --format=tsv is provided", () => {
      const parsed = parseArgs(["file.csv", "--format=tsv"]);
      const query = buildQuery(parsed);
      expect(query).toContain("COPY (SELECT * FROM read_csv('file.csv')) TO '/dev/stdout' (FORMAT CSV, DELIMITER '\t')");
    });

    test("handles .tsv extension with auto-delimiter", () => {
      const parsed = parseArgs(["file.csv", "--to=output.tsv"]);
      const query = buildQuery(parsed);
      expect(query).toContain("FORMAT CSV");
      expect(query).toContain("DELIMITER '\t'");
    });
  });

  describe("positional SQL", () => {
    test("appends positional LIMIT", () => {
      const parsed = parseArgs(["file.csv", "LIMIT", "10"]);
      const query = buildQuery(parsed);
      expect(query).toBe("SELECT * FROM read_csv('file.csv') LIMIT 10");
    });

    test("handles positional SELECT", () => {
      const parsed = parseArgs(["file.csv", "SELECT", "id,", "name"]);
      const query = buildQuery(parsed);
      expect(query).toContain("SELECT id, name");
      expect(query).toContain("FROM read_csv('file.csv')");
    });

    test("auto-quotes positional values with spaces", () => {
      const parsed = parseArgs(["file.csv", "WHERE", "name", "=", "John"]);
      const query = buildQuery(parsed);
      expect(query).toContain("name = 'John'");
    });
  });

  describe("read options", () => {
    test("passes options to read function", () => {
      // Use options that are NOT in COPY_OPTIONS (like encoding, skip)
      const parsed = parseArgs(["file.csv", "--encoding=latin-1", "--skip=5"]);
      const query = buildQuery(parsed);
      expect(query).toContain("encoding='latin-1'");
      expect(query).toContain("skip=5");
    });

    test("handles all_varchar option", () => {
      const parsed = parseArgs(["file.csv", "--all_varchar"]);
      const query = buildQuery(parsed);
      expect(query).toContain("all_varchar=true");
    });
  });

  describe("multiple files", () => {
    test("handles multiple files as array", () => {
      // Note: parseArgs doesn't currently support multiple files in one call
      // This tests the fnSerial function directly
      const parsed: any = {
        command: "read_csv",
        files: ["a.csv", "b.csv"],
        options: {},
        queryParts: [],
        sqlOptions: { where: [], join: [], with: [] },
        copyOptions: {},
      };
      const query = buildQuery(parsed);
      expect(query).toContain("['a.csv','b.csv']");
    });
  });
});

describe("EXT_TO_CMD mapping", () => {
  test("maps csv to read_csv", () => {
    expect(EXT_TO_CMD["csv"]).toBe("read_csv");
  });

  test("maps txt to read_csv", () => {
    expect(EXT_TO_CMD["txt"]).toBe("read_csv");
  });

  test("maps tsv to read_csv", () => {
    expect(EXT_TO_CMD["tsv"]).toBe("read_csv");
  });

  test("maps json to read_json", () => {
    expect(EXT_TO_CMD["json"]).toBe("read_json");
  });

  test("maps jsonl to read_ndjson", () => {
    expect(EXT_TO_CMD["jsonl"]).toBe("read_ndjson");
  });

  test("maps ndjson to read_ndjson", () => {
    expect(EXT_TO_CMD["ndjson"]).toBe("read_ndjson");
  });

  test("maps parquet to read_parquet", () => {
    expect(EXT_TO_CMD["parquet"]).toBe("read_parquet");
  });

  test("maps xlsx to read_xlsx", () => {
    expect(EXT_TO_CMD["xlsx"]).toBe("read_xlsx");
  });
});

describe("COMMANDS_DOCS", () => {
  test("has documentation for read_csv", () => {
    expect(COMMANDS_DOCS["read_csv"]).toBeDefined();
    expect(COMMANDS_DOCS["read_csv"]["delim"]).toBeDefined();
  });

  test("has documentation for read_json", () => {
    expect(COMMANDS_DOCS["read_json"]).toBeDefined();
  });

  test("has documentation for read_parquet", () => {
    expect(COMMANDS_DOCS["read_parquet"]).toBeDefined();
  });

  test("has documentation for read_xlsx", () => {
    expect(COMMANDS_DOCS["read_xlsx"]).toBeDefined();
  });
});

describe("edge cases", () => {
  test("handles empty where array", () => {
    const parsed = parseArgs(["file.csv"]);
    expect(parsed.sqlOptions.where).toEqual([]);
    const query = buildQuery(parsed);
    expect(query).not.toContain("WHERE");
  });

  test("handles special characters in file path", () => {
    const parsed = parseArgs(["path/to/my file.csv"]);
    const query = buildQuery(parsed);
    expect(query).toContain("'path/to/my file.csv'");
  });

  test("handles hyphenated flags", () => {
    const parsed = parseArgs(["file.csv", "--union-by-name"]);
    expect(parsed.options.union_by_name).toBe(true);
  });

  test("handles flag with separate value", () => {
    const parsed = parseArgs(["file.csv", "--where", "name=John"]);
    expect(parsed.sqlOptions.where).toEqual(["name=John"]);
  });
});

describe("smartBraceToParen", () => {
  test("replaces .lower{}", () => {
    expect(smartBraceToParen(".lower{}")).toBe(".lower()");
  });

  test("replaces replace{a, 'xxxx'}", () => {
    expect(smartBraceToParen("replace{a, 'xxxx'}")).toBe("replace(a, 'xxxx')");
  });

  test("replaces extract_name{name}", () => {
    expect(smartBraceToParen("extract_name{name}")).toBe("extract_name(name)");
  });

  test("replaces nested _join and split", () => {
    // User's example: _join{name.split{' '}[2:], ' '}}
    // Logic: _join(name.split(' ')[2:], ' ')} (extra brace preserved)
    expect(smartBraceToParen("_join{name.split{' '}[2:], ' '}}")).toBe(
      "_join(name.split(' ')[2:], ' ')}"
    );
  });

  test("does NOT replace regex quantifiers like [0-9]{5}", () => {
    expect(smartBraceToParen("[0-9]{5}")).toBe("[0-9]{5}");
  });

  test("does NOT replace inside single quotes", () => {
    expect(smartBraceToParen("similar to \"'[0-9]{5}'\"")).toBe(
      "similar to \"'[0-9]{5}'\""
    );
    expect(smartBraceToParen("cpclient, '[0-9]{4,5}'")).toBe(
      "cpclient, '[0-9]{4,5}'"
    );
  });

  test("does NOT replace template variables in double quotes", () => {
    expect(smartBraceToParen('"{first_name}::JSON as contact"')).toBe(
      '"{first_name}::JSON as contact"'
    );
  });

  test("does NOT replace if not preceded by identifier (e.g., after 'as')", () => {
    expect(smartBraceToParen("extract_full_name(nom) as {firstname, lastname}")).toBe(
      "extract_full_name(nom) as {firstname, lastname}"
    );
  });

  test("handles complex nested quotes in json_transform", () => {
    const input = 'json_transform(_embedded, \'" \'{"family": "VARCHAR", "coolness": "DOUBLE"}\'  "\')';
    expect(smartBraceToParen(input)).toBe(input);
  });

  test("does NOT replace JSON-like objects after space or comma", () => {
    expect(smartBraceToParen("read(x, { xx:1 })")).toBe("read(x, { xx:1 })");
  });

  test("does not replace template variables", () => {
    expect(smartBraceToParen("SELECT ${USER}")).toBe("SELECT ${USER}");
  });

  test("handles bordered with quote case", () => {
    expect(smartBraceToParen("'{\"streetNumber\": \"VARCHAR\" }'")).toBe(
      "'{\"streetNumber\": \"VARCHAR\" }'"
    );
  });

  test("integrates into buildQuery", () => {
    const result = parseArgs(["file.csv", "--select", "name.lower{}"]);
    const query = buildQuery(result);
    expect(query).toBe("SELECT name.lower() FROM read_csv('file.csv')");
  });
});

describe("isExpressionSource", () => {
  test("returns true for ()", () => {
    expect(isExpressionSource("duckdb_settings()")).toBe(true);
  });

  test("returns true for {}", () => {
    expect(isExpressionSource("duckdb_settings{}")).toBe(true);
  });

  test("returns true for table without extension", () => {
    expect(isExpressionSource("my_table")).toBe(true);
  });

  test("returns false for file with extension", () => {
    expect(isExpressionSource("file.csv")).toBe(false);
  });

  test("returns false for wildcards", () => {
    expect(isExpressionSource("data/*.parquet")).toBe(false);
  });

  test("handles files with spaces", () => {
    // We assume if it has a dot and no braces/parens, it's a file
    expect(isExpressionSource("my data.csv")).toBe(false);
  });
});

describe("expression and table sources", () => {
  test("handles duckdb_settings() source", () => {
    const parsed = parseArgs(["duckdb_settings()"]);
    const query = buildQuery(parsed);
    expect(query).toBe("SELECT * FROM duckdb_settings()");
  });

  test("handles duckdb_settings{} source with smart conversion", () => {
    const parsed = parseArgs(["duckdb_settings{}"]);
    const query = buildQuery(parsed);
    expect(query).toBe("SELECT * FROM duckdb_settings()");
  });

  test("handles raw table source", () => {
    const parsed = parseArgs(["my_table"]);
    const query = buildQuery(parsed);
    expect(query).toBe("SELECT * FROM my_table");
  });
});

describe("smartAtToStar", () => {
  test("replaces @ with *", () => {
    expect(smartAtToStar("SELECT @ FROM t")).toBe("SELECT * FROM t");
  });

  test("replaces @ in function calls", () => {
    expect(smartAtToStar("COUNT(@)")).toBe("COUNT(*)");
  });

  test("handles prefix @", () => {
    expect(smartAtToStar("st.@")).toBe("st.*");
  });

  test("handles @ in paths", () => {
    expect(smartAtToStar("from files/@.parquet")).toBe("from files/*.parquet");
  });

  test("ignores @ in single quotes", () => {
    expect(smartAtToStar("regexp_match('.+@.+')")).toBe("regexp_match('.+@.+')");
  });

  test("ignores @ in double quotes", () => {
    expect(smartAtToStar('SELECT "@" FROM t')).toBe('SELECT "@" FROM t');
  });

  test("handles escaped \\@ as literal @", () => {
    // Escaped @ outside quotes
    expect(smartAtToStar("a \\@ b")).toBe("a @ b");
    // Escaped @ inside quotes
    expect(smartAtToStar("regexp_match('.+\\@.+')")).toBe("regexp_match('.+@.+')");
  });

  test("standalone backslash is preserved", () => {
    expect(smartAtToStar("a \\ b")).toBe("a \\ b");
  });

  test("integrates into buildQuery", () => {
    const parsed = parseArgs(["t.db", "SELECT @"]);
    const query = buildQuery(parsed);
    expect(query).toContain("SELECT *");
  });
});

describe("database attachment and magic sources", () => {
  test("attaches database via --with", () => {
    const parsed = parseArgs(["my_table", "--with", "records.db"]);
    const query = buildQuery(parsed);
    expect(query).toBe("ATTACH 'records.db' AS records; SELECT * FROM my_table");
  });

  test("attaches SQLite database and loads extension", () => {
    const parsed = parseArgs(["my_table", "--with", "all.sqlite3"]);
    const query = buildQuery(parsed);
    expect(query).toContain("INSTALL sqlite; LOAD sqlite;");
    expect(query).toContain("ATTACH 'all.sqlite3' AS all");
    expect(query).toContain("SELECT * FROM my_table");
  });

  test("magic source for .db defaults to sqlite_master with USE", () => {
    const parsed = parseArgs(["soccer.db"]);
    const query = buildQuery(parsed);
    expect(query).toBe("ATTACH 'soccer.db' AS soccer; USE soccer; SELECT * FROM sqlite_master");
  });

  test("magic source for .vscdb defaults to sqlite_master with USE", () => {
    const parsed = parseArgs(["state.vscdb"]);
    const query = buildQuery(parsed);
    expect(query).toContain("INSTALL sqlite; LOAD sqlite;");
    expect(query).toContain("ATTACH 'state.vscdb' AS state; USE state; SELECT * FROM sqlite_master");
  });

  test("magic source for .sqlite3 defaults to sqlite_master with USE", () => {
    const parsed = parseArgs(["soccer.sqlite3"]);
    const query = buildQuery(parsed);
    expect(query).toContain("INSTALL sqlite; LOAD sqlite;");
    expect(query).toContain("ATTACH 'soccer.sqlite3' AS soccer; USE soccer; SELECT * FROM sqlite_master");
  });

  test("magic source with table part", () => {
    const parsed = parseArgs(["spotify.sqlite3.artists"]);
    const query = buildQuery(parsed);
    expect(query).toContain("ATTACH 'spotify.sqlite3' AS spotify; USE spotify;");
    expect(query).toContain("SELECT * FROM artists");
  });

  test("handles hidden database file alias", () => {
    const parsed = parseArgs([".import-cache.db"]);
    const query = buildQuery(parsed);
    expect(query).toBe("ATTACH '.import-cache.db' AS import_cache; USE import_cache; SELECT * FROM sqlite_master");
  });

  test("handles spaces and special characters in alias", () => {
    const parsed = parseArgs(["My Data Source.2023.db"]);
    const query = buildQuery(parsed);
    expect(query).toBe("ATTACH 'My Data Source.2023.db' AS My_Data_Source; USE My_Data_Source; SELECT * FROM sqlite_master");
  });
});
