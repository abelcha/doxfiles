CREATE OR REPLACE MACRO _compact (arr) AS list_filter (arr, lambda x: x IS NOT NULL);
CREATE OR REPLACE MACRO _head (arr) AS arr [1];
CREATE OR REPLACE MACRO _first (arr) AS arr [1];
CREATE OR REPLACE MACRO _last (arr) AS arr [len(arr)];
CREATE OR REPLACE MACRO _tail (arr) AS list_slice (arr, 2, len (arr));
CREATE OR REPLACE MACRO _nth (arr, n) AS CASE
        WHEN n < 0 THEN arr [len(arr) + n + 1]
        ELSE arr [n + 1]
    END;
CREATE OR REPLACE MACRO _slice (arr, start, stop) AS list_slice (arr, start + 1, stop);
CREATE OR REPLACE MACRO _take (arr, n) AS list_slice (arr, 1, n);
CREATE OR REPLACE MACRO _drop (arr, n) AS list_slice (arr, n + 1, len (arr));
CREATE OR REPLACE MACRO _uniq (arr) AS list_distinct (arr);
CREATE OR REPLACE MACRO _reverse (arr) AS array_reverse (arr);
-- CREATE OR REPLACE MACRO _join (a, b) AS list_reduce (a, lambda x, y: x || b || y, ' ');
CREATE OR REPLACE MACRO _join (a, b) AS array_to_string(a, b);
CREATE OR REPLACE MACRO _includes (arr, val) AS list_contains (arr, val);
CREATE OR REPLACE MACRO _indexOf (arr, val) AS COALESCE(list_indexof (arr, val) - 1, -1);
CREATE OR REPLACE MACRO _flatten (arr) AS flatten (arr);
CREATE OR REPLACE MACRO _chunk (arr, n) AS list_transform (
        range (0, len (arr), n),
        lambda i: list_slice (arr, i + 1, i + n)
    );
CREATE OR REPLACE MACRO _sample (arr) AS arr [floor(random() * len(arr)) + 1];
CREATE OR REPLACE MACRO _sum (arr) AS list_sum (arr);
-- String Lodash-like Macros
CREATE OR REPLACE MACRO _capitalize (str) AS upper(left (str, 1)) || lower(substring(str, 2));
CREATE OR REPLACE MACRO _upperFirst (str) AS upper(left (str, 1)) || substring(str, 2);
CREATE OR REPLACE MACRO _lowerFirst (str) AS lower(left (str, 1)) || substring(str, 2);
CREATE OR REPLACE MACRO _toUpper (str) AS upper(str);
CREATE OR REPLACE MACRO _toLower (str) AS lower(str);
CREATE OR REPLACE MACRO _snakeCase (str) AS lower(
        regexp_replace (
            regexp_replace (str, '([a-z])([A-Z])', '\1_\2', 'g'),
            '[^a-zA-Z0-9]+',
            '_',
            'g'
        )
    );
CREATE OR REPLACE MACRO _kebabCase (str) AS lower(
        regexp_replace (
            regexp_replace (str, '([a-z])([A-Z])', '\1_\2', 'g'),
            '[^a-zA-Z0-9]+',
            '-',
            'g'
        )
    );
CREATE OR REPLACE MACRO _repeat (str, n) AS repeat (str, n);
CREATE OR REPLACE MACRO _padEnd (str, n, c) AS rpad (str, n, c);
CREATE OR REPLACE MACRO _padStart (str, n, c) AS lpad (str, n, c);
CREATE OR REPLACE MACRO _split (str, sep) AS string_split (str, sep);
-- Math & Utility Macros
CREATE OR REPLACE MACRO _clamp (n, min, max) AS least (greatest (n, min), max);
CREATE OR REPLACE MACRO _inRange (n, start, stop) AS n >= start
    AND n < stop;
CREATE OR REPLACE MACRO _defaultTo (val, def) AS COALESCE(val, def);
CREATE OR REPLACE MACRO _round (n, p) AS round(n, p);
CREATE OR REPLACE MACRO _random (min, max) AS floor(random() * (max - min + 1) + min);
CREATE OR REPLACE MACRO _isNil (v) AS v IS NULL;
CREATE OR REPLACE MACRO _isString (v) AS typeof(v) = 'VARCHAR';
CREATE OR REPLACE MACRO _isNumber (v) AS typeof(v) IN (
        'INTEGER',
        'BIGINT',
        'DOUBLE',
        'DECIMAL',
        'HUGEINT',
        'FLOAT'
    );
CREATE OR REPLACE MACRO _isBoolean (v) AS typeof(v) = 'BOOLEAN';
-- Advanced Collections & Objects
CREATE OR REPLACE MACRO _zipObject (k, v) AS map (k, v);
CREATE OR REPLACE MACRO _entries (m) AS map_entries (m);
CREATE OR REPLACE MACRO _mapKeys(s, expr) AS CAST(
        map(
            list_transform(
                map_keys(CAST(s AS MAP(VARCHAR, VARCHAR))),
                lambda k: expr
            ),
            map_values(CAST(s AS MAP(VARCHAR, VARCHAR)))
        ) AS JSON
    );
CREATE OR REPLACE MACRO _pick (m, k_arr) AS map_from_entries (
        list_filter (
            map_entries (m),
            lambda x: list_contains (k_arr, x.key)
        )
    );
CREATE OR REPLACE MACRO _omit (m, k_arr) AS map_from_entries (
        list_filter (
            map_entries (m),
            lambda x: NOT list_contains (k_arr, x.key)
        )
    );
CREATE OR REPLACE MACRO _join_compact (arr, sep) AS _join (list_filter (arr, lambda x: len(trim(x)) > 0), sep);
CREATE OR REPLACE MACRO glimpse(table_name) AS TABLE WITH TableSchema AS (
        SELECT cid,
            name AS column_name,
            type AS column_type
        FROM pragma_table_info(table_name)
    ),
    SampleData AS (
        -- Select the first 5 rows from the target table
        SELECT *
        FROM query_table(table_name)
        LIMIT 5
    ), SampleDataUnpivoted AS (
        -- Unpivot the sample data: columns become rows
        UNPIVOT (
            SELECT list(COLUMNS(*)::VARCHAR)
            FROM SampleData
        ) ON COLUMNS(*) INTO NAME column_name VALUE sample_values_list -- This will be a list of strings
    ) -- Final selection joining schema info with sample data
SELECT ts.column_name,
    ts.column_type,
    -- Convert the list to string and remove brackets for cleaner display
    regexp_replace(
        usp.sample_values_list::VARCHAR,
        '^\[|\]$',
        '',
        'g'
    ) AS sample_data
FROM TableSchema ts
    JOIN SampleDataUnpivoted usp ON ts.column_name = usp.column_name
ORDER BY ts.cid;

