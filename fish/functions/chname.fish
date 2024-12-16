function chname --argument file
    #argparse 'j/js=' --ignore-unknown -- $argv
    set dir (dirname $file)
    set name (basename $file )
    set -l cmd "echo $name | $argv[2..]"
    #echo "cmd:|$cmd|"
    #if set -q _flag_js
    #set resp (echo $name | plog "$_flag_js")
    #else
    set resp (eval $cmd)
    #end
    test -z "$resp"; and echo "failed: $cmd \n"; and return
    #set -q _flag_dry_run; and gum log --prefix "$name" $resp; and return
    gum log --prefix "$name" $resp
    set -l mvcmd "gmv $dir/$name $dir/$resp"
    dryrun $mvcmd
    # $mvcmd | shiki -l shell -t aurora-x
    #command $mvcmd
end
