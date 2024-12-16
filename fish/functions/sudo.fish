function sudo --wraps=command
    #
    if test (type -t  "$argv[1]" |grep  function)
        echo (set_color --dim ) rewrote to:(set_color --dim brcyan ) "$argv[1].fish" >/dev/stderr
        set -l temp (gmktemp --suffix "$argv[1].fish")
        #echo $temp
        echo "#!$(which fish)" >$temp
        #echo type -p "$argv[1]"
        set funcpath (type -p "$argv[1]")
        if test -e "$funcpath"
            ucat "$funcpath" >>$temp
        else
            type "$argv[1]" | tail -n +2 >>$temp
        end
        echo "PATH=$PATH" $argv >>$temp
        test -z "$DEBUG"; or cat $temp
        #echo "========$tempscript=========" >/dev/stderr
        chmod 777 $temp
        command sudo $temp
    else if test (type -t "$argv[1]"  |grep   file )
        #echo sss
        echo "$(set_color --dim)rewrote to:$(set_color --dim brcyan) sudo $(which $argv[1] ) $argv[2..]" >/dev/stderr
        command sudo (which $argv[1]) $argv[2..]
    else
        command sudo $argv
    end
end
