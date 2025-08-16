function fcargo
    from /datasets/cargo.final.parquet SELECT name, description, dl WHERE slug LIKE \'command%\' AND \( description Ilike \'%$argv[1]%\' OR name ILIKE \'%$argv[1]%\' \) ORDER BY dl DESC

end
