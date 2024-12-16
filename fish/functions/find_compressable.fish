function find_compressable --wraps=fd
    fd '\.(xml|jsonl?|csv|txt|db|sqlite3?|db)(.bak)?$' --no-ignore --type f --size "+25M" $argv
end
