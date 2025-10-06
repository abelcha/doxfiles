function sm3 --argument-names target
    if not string match -rq '\)$' -- $argv[1]
        set target "'$target'"
    end
    #set -S target
    echo "
CREATE OR REPLACE TABLE ttable AS (
FROM $target
);
CREATE OR REPLACE MACRO divp(field, total) AS round((field * 100)::FLOAT /total::FLOAT);
CREATE OR REPLACE MACRO percent(field, total) AS format(' {:^6} %', divp(field, total))::VARCHAR; 
CREATE OR REPLACE MACRO custom_summarize() AS TABLE (
    WITH metrics AS (
        FROM any_cte 
        SELECT 
            {
                name: first(alias(COLUMNS(*))),
                type: first(typeof(COLUMNS(*))),
                max: max(COLUMNS(*))::VARCHAR,
                med: median(COLUMNS(*))::VARCHAR,
                min: min(COLUMNS(*))::VARCHAR,
                first: first(COLUMNS(*))::VARCHAR,
                last:last(COLUMNS(*))::VARCHAR,
--countmax:   count(max(COLUMNS(*))::VARCHAR),
                uniq: approx_count_distinct(COLUMNS(*)),
                nulls: count(*) - count(COLUMNS(*)),
                totals: count(*)
            }
    ), stacked_metrics AS (
        UNPIVOT metrics 
        ON COLUMNS(*)
    )
    SELECT left(value.type, 6) as type,  divp(value.nulls, value.totals) as nlpx,value.name as name, value.uniq ,
-- percent(value.uniq, value.totals) as ppx, 
value.max , value.med, value.min, value.last, format('{:_}',value.totals) as total FROM stacked_metrics
);

WITH any_cte AS (FROM ttable) FROM custom_summarize();

" | read -z cmd
    set args (duckescape  $argv[2..])
    DUCK_QUIET=1 duck $DD -c '.maxrows 100' -c "$cmd" $args
    #duck -c "$cmd" $args
    # read -z cmd
    # set args (duckescape  $argv[2..])
    # duck-c "$cmd" $args
    
end
