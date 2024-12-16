function jsonl --wraps=jq
    jq -c '.[]' $argv
end
