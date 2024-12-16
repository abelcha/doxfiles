function fixutf8 --wraps=iconv
    iconv --from-code UTF8 $argv --to-code UTF-8-MAC | pv >ulp.txt
end
