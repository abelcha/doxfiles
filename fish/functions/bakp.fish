function bakp --argument pp
    set file (path basename  $pp)
    set dir (realpath (path dirname $pp)|anon| sd '/me/' '')
    set date '' # (gdate --reference $pp  +%Y-%M-%dT%H:%m:%S)
    mkdir -p "/me/backup/$dir"
    #set ext (extension "$pp")
    test -e $pp; and ucp --verbose -p --backup "$pp" "/me/backup/$dir/"
    #--no-progress
    #echo "$dir/$file"
end
