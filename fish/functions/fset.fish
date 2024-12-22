function fset --wraps=set
        set --path obj "{"
        for v in $argv
                #set -l cmd "set --show $v"
                set --append obj "$v →"
                if test (count $$v) -gt 1
                        set --append obj "[\"$(string join '","' $$v)\"],"
                else
                        set --append obj "\"$(echo $$v)\","
                end
                #eval $cmd
        end
        set --append obj "}"
        deno eval -p "$(string replace --all "→" ":" $obj)"
end
