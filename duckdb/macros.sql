
CREATE OR REPLACE MACRO compact(value) AS
      CASE
          WHEN abs(value) >= 1e7  THEN round(value / 1e6, 0)::int || 'm'
          WHEN abs(value) >= 1e6  THEN round(value / 1e6, 1) || 'm'
          WHEN abs(value) >= 1e4  THEN round(value / 1e3, 0)::int || 'k'
          WHEN abs(value) >= 1e3  THEN round(value / 1e3, 1) || 'k'

          ELSE value::VARCHAR
      END;
    
CREATE OR REPLACE MACRO duckdb_master() AS TABLE(
        FROM duckdb_tables()
        SELECT db: database_name,
            name: table_name,
            type: 'table',
            sql
        UNION
        FROM duckdb_views()
        SELECT db: database_name,
            name: view_name,
            type: 'view',
            sql
    );
    
CREATE OR REPLACE MACRO is_mobile (a) AS IFNULL(a[4] = '7' OR a[4] = '6', false);

CREATE OR REPLACE MACRO phclean(a) AS COALESCE(TRY_CAST(a AS VARCHAR), '').regexp_replace('[^0-9+]', '', 'g').regexp_replace('^(\+?)0+', '\1');
CREATE OR REPLACE MACRO phormat(a) AS CASE
        WHEN len(phclean(a)) < 8 THEN NULL
        WHEN phclean(a) [:1] = '+' THEN phclean(a)
        WHEN phclean(a) [:2] = '33' THEN '+' || phclean(a)
        WHEN len(phclean(a)) = 9 THEN '+33' || phclean(a)
        ELSE phclean(a)
    END;
CREATE OR REPLACE MACRO uint_phormat (a) AS try_cast(phormat(a).replace('+', '') as UINT64);
CREATE OR REPLACE MACRO phormat_strict (a) AS IF(LEN(phormat(a)) = 12, phormat(a), null);
CREATE OR REPLACE MACRO phormat_strict (a) AS IF(LEN(phormat(a))=12, phormat(a), null);

CREATE OR REPLACE MACRO phmobile (a) AS IF(LEN(phormat(a))=12 and phormat(a)[4] in ('6', '7') , phormat(a), null);


CREATE OR REPLACE MACRO phzipcode (a) AS regexp_extract(a, '[0-9]{4,5}');
CREATE OR REPLACE MACRO phemail (a) AS (
        CASE
            WHEN trim(a) ~ '^[^@]+@[^@]+\.[^@]+$' THEN lower(trim(a))
            ELSE NULL
        END
    );

CREATE OR REPLACE MACRO phemails (arr) AS list_transform(arr, lambda x: phemail(x)).list_filter(lambda x: x IS NOT NULL);

CREATE OR REPLACE MACRO phmobiles (arr) AS list_transform(arr, lambda x: phmobile(x)).list_filter(lambda x: x.len () = 12);
CREATE OR REPLACE MACRO safe_unnest (arr) AS UNNEST (
        CASE
            WHEN len (arr) = 0 THEN [NULL]
            ELSE arr
        END
    );
CREATE OR REPLACE MACRO SLUGIFY(text) AS text.lower().regexp_replace('[^a-z0-9]+', '-', 'g').regexp_replace('^-|-$', '', 'g');
CREATE OR REPLACE MACRO normalizeCarrier(carrier) AS carrier.upper().regexp_replace('[^A-Z0-9]+', '-', 'g').regexp_replace('^-|-$', '', 'g');
CREATE OR REPLACE MACRO normalizeCountry(country) AS country.upper().left(2);
CREATE OR REPLACE MACRO stripDecimalZero(value) AS regexp_replace(value::varchar, '\.0+$', '', 'g');
CREATE OR REPLACE MACRO stripAccents(value) AS strip_accents(value);
CREATE OR REPLACE MACRO deburr(value) AS stripAccents(value).regexp_replace('[^a-zA-Z0-9\-]+', '', 'g');
CREATE OR REPLACE MACRO phname (a) AS stripAccents(a.trim().lower());


CREATE OR REPLACE MACRO key_record(_tokens, _email, _phone) AS (
  --  CAST(
        _tokens.concat([_email, _phone]).array_to_string(':')
        --% 18446744073709551615 AS UINT64
--        % 4294967295 AS UINT32
   -- )
);
CREATE OR REPLACE MACRO hash_record(_tokens, _email, _phone) AS (
        hash(key_record(_tokens, _email, _phone))
);


CREATE OR REPLACE MACRO token_match(tokens, inputs) AS (
        list_filter(tokens, lambda t: inputs.contains(t)).len() >= 2
    );
CREATE OR REPLACE MACRO parse_tokens(firstname, lastname, email) AS (
        _join([phname(lastname), phname(firstname), _split(phemail(email), '@')[1].replace(phname(lastname), ':').replace(phname(firstname), ':')], ' ').regexp_split_to_array('[^a-z]+').list_filter(lambda e: e.len()>=3 ).list_distinct()
    );

CREATE OR REPLACE MACRO hash_source(obj) AS (
        hash_record(
            parse_tokens(phname(obj.firstname), phname(obj.lastname), phemail(obj.email)),
            phemail(obj.email),
            phormat(obj.phone)
        )
);

-- CREATE OR REPLACE MACRO pack_id(fid, rid) AS (fid::BIGINT << 26) | rid::BIGINT;
-- CREATE OR REPLACE MACRO unpack_fid(id) AS id::BIGINT >> 26;
-- CREATE OR REPLACE MACRO unpack_rid(id) AS id::BIGINT & ((1::BIGINT << 26) - 1);




-- INT64 layout: [24 unused | 12-bit fid | 28-bit rid]
-- fid: 2^12 = 4096 files max, deterministic hash from filename stem
-- rid: 2^28 = 268M rows max per file (current max: 33M, safe headroom)
-- 24 bits remaining — usable for a 3rd field (e.g. version, shard, flags)

  -- extract N bits starting at offset from the right
  CREATE OR REPLACE MACRO extract_bits(val, _offset, n) AS (val::BIGINT >> _offset) % (1 << n);

  -- pack a value into a specific slot
  CREATE OR REPLACE MACRO pack_bits(val, _offset) AS val::BIGINT << _offset;

--  Then your specific macros just become:

  -- layout: [24 unused | 12-bit fid @ offset 28 | 28-bit rid @ offset 0]
  CREATE OR REPLACE MACRO file_id(stem)     AS hash(parse_filename(stem)) % (1 << 12);
  CREATE OR REPLACE MACRO pack_id(fid, rid) AS pack_bits(fid, 28) | pack_bits(rid, 0);
  CREATE OR REPLACE MACRO unpack_fid(id)    AS extract_bits(id, 28, 12);
  CREATE OR REPLACE MACRO unpack_rid(id)    AS extract_bits(id, 0, 28);


CREATE OR REPLACE MACRO token_match_inline(tokens, inputs) AS (
        CASE
            len(inputs)
            WHEN 1 THEN list_contains(tokens, inputs [1])
            WHEN 2 THEN list_contains(tokens, inputs [1])
            AND list_contains(tokens, inputs [2])
            WHEN 3 THEN list_contains(tokens, inputs [1])
            AND list_contains(tokens, inputs [2])
            AND list_contains(tokens, inputs [3])
            ELSE list_contains(tokens, inputs [1])
            AND list_contains(tokens, inputs [2])
            AND list_contains(tokens, inputs [3])
            AND list_contains(tokens, inputs [4])
        END
    );



CREATE OR REPLACE MACRO geo_encode(nuts3, lau_code) AS (
  CASE WHEN nuts3 IS NULL THEN NULL ELSE [
    nuts3[:2],
    nuts3[3:3],
    nuts3[4:4],
    nuts3[5:5],
    split_part(lau_code, '_', 2)
  ] END
);

CREATE OR REPLACE MACRO geo_country(g) AS g[1];
CREATE OR REPLACE MACRO geo_nuts1(g) AS array_to_string(g[:2], '');
CREATE OR REPLACE MACRO geo_nuts2(g) AS array_to_string(g[:3], '');
CREATE OR REPLACE MACRO geo_nuts3(g) AS array_to_string(g[:4], '');
CREATE OR REPLACE MACRO geo_lau(g) AS g[1] || '_' || g[5];

CREATE OR REPLACE MACRO geo_decode(g) AS (
  STRUCT_PACK(
    country := g[1],
    nuts1   := array_to_string(g[:2], ''),
    nuts2   := array_to_string(g[:3], ''),
    nuts3   := array_to_string(g[:4], ''),
    lau     := g[1] || '_' || g[5]
  )
);

CREATE OR REPLACE MACRO osm2json(rec) AS (
    '{' || rec.replace('=>', ':') || '}'
);



  CREATE OR REPLACE MACRO parse_individu(g) AS (
    {
      prenoms : g.descriptionPersonne.prenoms,
      nom : g.descriptionPersonne.nom,
      nomUsage : g.descriptionPersonne.nomUsage,
      "role" : g.descriptionPersonne.role,
      dateDeNaissance : g.descriptionPersonne.dateDeNaissance,

      codePostal : g.adresseDomicile.codePostal,
      commune : g.adresseDomicile.commune,
      pays : g.adresseDomicile.pays,
    }
  );
