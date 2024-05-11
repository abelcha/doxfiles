function gzp --wraps=gzipi
    if test -t 1
        echo "searching $argv"
    end
    gzipi search -k "$argv" --index-file /Users/abelchalier/dev/linked/france.gzi --input-file /Users/abelchalier/dev/linked/france.repack.json.gz 2>/dev/null
end
