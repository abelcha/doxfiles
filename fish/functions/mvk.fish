function mvk
    for x in $argv
        string match -qr '^\-' -- "$x"; or echo $x
    end | read -za args
    #set tocopy $toto[..-2]
    #set -S args
    set destdir "$args[-1]"
    #echo "DESTDIRRR $destdir"
    mkdir -pv "$destdir"
    umv --progress $argv
end
