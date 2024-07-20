function tsdate
    jh --raw --map "e.replace(/1[67][0-9]{8}/img, e => JSON.stringify(new Date(parseInt(e*1000)).toISOString().slice(0, 19)))"
end
function tsdate1601
    jh --raw --map "e.replace(/13[0-9]{15}/img, e => Math.round((parseInt(e) - 11644473600000000)/1000000))"
end


function edit
    /usr/bin/which $argv[1]; or return
    command $EDITOR (/usr/bin/which  $argv[1])
end


function clib
    if test $argv[1] = install
        /opt/homebrew/bin/clib $argv --prefix ~/.clib
    else
        /opt/homebrew/bin/clib $argv
    end
end

function ghdoc
    readme $argv | mdcat -p
end


function lk
    set source $argv[1]
    set dest $argv[2]
    set namesource (basename $source)
    set namedest (basename $dest)
    # echo "source: $source vs  dest: $dest"
    # if not test -e "$dest"
    # set destdir (dirname $dest)
    echo "ln -s  $(realpath $source) $(realpath $destdir)"
end

function abin
    if test -z "$argv[1]"
        echo "Usage: abin <path/to/bin>"
        return 1
    end
    set cmd "ln -s (realpath $argv[1]) (realpath ~/abin)/(basename $argv[1])"
    echo $cmd
    eval $cmd
end

