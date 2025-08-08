function lx --wraps=eza
    # lla $argv
    # return
    #set -l ex (path extension $argv[1])
    if [ $DX_STRATEGY="live" ]
        eza --long -F --total-size --no-user $argv --all
    else if echo $argv[1] | rg '(.zip|.7z|.dmg|.tar)$' -q
        #7ll $argv[1]
        l7z $argv[1]
        #else if test (path_depth) -lt 3; and test -z "$DX_STRATEGY"
        #eza --long -F --no-user $argv
    else if test -n "$EZA_NOSIZE"
        EZA_COLORS="da=38" eza --long -F --no-user $argv
    else
        timeout --foreground 3s leza --long --total-size --no-user $argv
        test $status = 124; and EZA_NOSIZE=TRUE lx $argv
        #echo lex
    end
end
