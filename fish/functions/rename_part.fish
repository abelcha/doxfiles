function rename_part --argument file
    argparse "p/prefix=" -- $argv; or exit
    set -l prefix $_flag_prefix
    set -l dest (ghead -n 1 $file | rg '`([\w_]+)`' -r '$1' --only-matching)".sql"
    echo "|dest : $dest"
    if test -e $dest
        #echo "FILE EXISTSD:::"
        set -l num (echo $dest|rg --only-matching '\d+')
        set -l dest (echo $dest | sd '.sql$' "$num.sql")
        #echo $num "==>" $dest
        dryrun mv $file "$prefix.$dest"
    else
        #echo NOEXISTSSSS
        dryrun mv $file "$prefix.$dest"
    end
end
