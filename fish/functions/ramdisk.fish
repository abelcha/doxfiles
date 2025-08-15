function ramdisk
    if diskutil info ramdisk &>/dev/null
        echo please eject:
        echo diskutil eject ramdisk
        return -1
    end
    args --init $argv
    set -l sizebytes (math  "2^21 * $(args size=6)")
    #fset sizebytes
    set -l rtndisk (confirm hdiutil attach -nomount ram://$sizebytes || return -1)
    set targetdisk (path basename $rtndisk|string trim )
    #fset rtndisk targetdisk
    confirm diskutil eraseDisk APFS ramdisk $targetdisk || return -1
    diskutil mountDisk $targetdisk
end
