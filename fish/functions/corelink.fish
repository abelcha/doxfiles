function corelink
    for argp in $argv
        set -l ogpath (which "$argp")
        set -l ogrp (readlink -f  $ogpath)
        set -l final "$(dirname $ogpath)/$(string sub -s 2 "$argp")"
        set -S ogpath
        set -S ogrp
        set  -S final
        #path basename 
        #set realp (readlink $gcpath)
        fexec ln -sfn "$ogrp"  "$final"
    end
end
