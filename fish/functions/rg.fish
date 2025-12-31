function rg
    if string match -qr '\.parquet' -- "$argv"
        set --append argv --pre pqcat
    end
    if not isatty 1
        command rg $argv
    else
        set -l wlen (string length "[line]: [... XX more match]")
        command rg --max-columns-preview -M (math 3 x (colwidth) - $wlen - 2) $argv
    end
end
