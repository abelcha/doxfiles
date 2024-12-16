function pack --wraps=pack_auto --wraps=tar
    pak $argv[1]
    trash $argv[1]
end
