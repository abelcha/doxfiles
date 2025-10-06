function fset --wraps=set --no-scope-shadowing
    #args --init $argv
    set -l --append obj "{"
    for v in (_.filter_argv_opts $argv)
        #set -l cmd "set --show $v"
        #echo FILTER ARG OP $v COUNT:(count $$v)
        set --append obj "$v:"
        #set --query $$v; and echo defoineeeeeeeeeeeeed; or echo uuuuuuuuuuuunedine
        if not set -q $v
            set --append obj undefined,
        else if test (count $$v) -eq 0
            set --append obj 'new Array(),'
        else if test (count $$v) -gt 1
            #echo uuu
            set --append obj "[`$(string join '`,`' -- $$v)`],"
        else
            set lolilol '`'$$v'`'
            #set -S lolilol
            #echo nooo
            set --append obj '`'$$v'`',
        end
        #eval $cmd
    end
    set --append obj "}"
    set dump "$(string join ' ' $obj)"
    if contains -- --json $argv
        bun --print "JSON.stringify($dump, 2)"
        return
    end
    if contains -- --table $argv
        deno eval "console.table(Object.entries($dump))"
        return
    end
    if contains -- --props $argv
        bun --print "Object.entries($dump).filter(e => e[1]).map(([k, v]) => (k.length === 1 ? '-'+k : '--'+k ) + (v === 'true' ? '' :  ('=' + v))).join('\\n')"
        return
    end
    #print "($)"
    #echo bun --print "($dump)"
    bun --print "($dump)"
end
