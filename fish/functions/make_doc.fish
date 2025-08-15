function make_doc --wraps=fd
    #trash 
    set destdir "$(git remote get-url origin | sed 's#.*/##' | sed 's/.git$//')_doc"
    test -d "$destdir" && trash $destdir
    mkdir  $destdir
    fd -tf $argv | while read -l line
        set basename (path dirname $line )
        set spl (string split / $basename)
        set ext (path extension $line  )
        cat $line >$destdir/$(string replace -a  '/' '__' $line)
        for i in (seq 2 (count $spl) )
            echo $spl
            set daddyfile "$destdir/$(string join '__'  $spl[2..$i])$ext"
            echo \# $line >>$daddyfile
            cat $line >>$daddyfile
        end
    end
end
