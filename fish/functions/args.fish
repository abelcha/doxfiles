function args --no-scope-shadowing
    if test -z "$argv[1]"
        return -1
    end
    if [ $argv[1] = --dump ]
        set --show gargv
        return
    end
    if [ $argv[1] = --show ]
        echo $zargs | jq
        return
    end
    if [ $argv[1] = --init ]
        set -x __og_argv__ $argv
        set -x zargs (_.args_init $argv[2..])
        set -x args (echo $zargs |jj _lineargs_)
        return 0
    else if [ $argv[1] = --has ]
        #if test -z "$keydefault"; and test -z "$(echo  $zargs |jj $argv[2])"
        #return -1
        #end
        set xres (args $argv[2..])
        #set -S xres
        return (test -n "$xres")
    end
    if test -z "$zargs"
        #echo2 setting vargs....
        set -g zzva (random)
    end
    if [ $argv[1] = --words ]
        #set ogtoks (echo "$zargs"|jj _og_argv_)
        _.filter_argv_opts $__og_argv__
        #fset rwords ogtoks
        #_.filter_argv_opts
        return
    end
    set spl (string split '=' -- $argv[1])
    set keyprop $spl[1]
    set keydefault $spl[2]
    function printwrap -a res
        if [ "$argv[-2]" = --format ]
            echo $res | _.rwrap $argv[-1]
        else
            echo $res
        end
    end
    if not test -z "$keyprop"
        #echo "propget $zargs $keyprop"
        #set rtn (propget "$zargs" $keyprop |§ $keydefault)
        #echo yessay
        for k in (string split '/' -- "$keyprop")
            #echo spl
            if string match --entire -qr '\d' -- "$k"
                #echo yaeee
                set k "_.$k"
            end
            #set -S key
            #if not string match -rq '[^\d\-\.\_]+' -- "$key"
            set rtn (echo $zargs | jj $k)
            if not test -z "$rtn"
                printwrap $rtn
                return 0
            end
            #return -1
        end
    end
    if not test -z "$keydefault"
        printwrap $keydefault
    end
end
