function jq
    test -z "$argv[1]"; and jfmt $argv; or command jq $argv
end
