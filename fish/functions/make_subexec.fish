function make_subexec
    for elem in $argv[2..]
        set -l filename "/opt/bin/_$argv[1]_$elem"
        echo $filename
        echo "#!/bin/sh
 $argv[1] $elem \$@
" | tee $filename
        chmod 777 $filename
        #echo $argv[1] $argv[2] \$@ >> _$argv[1]_$elem
        # echo $argv
    end
end
