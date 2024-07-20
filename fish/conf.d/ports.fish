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

function fzf-preview-file
    rg --files | fzf --reverse --preview 'bat --color=always {}'
end


function pak --wraps tar
    set -l dir (echo $argv[1] | sd '/$' '')
    tar --create --gzip --file "$dir.tar.gz" $dir
end



function pax --wraps tar
    set -l dir (echo $argv[1] | sd '/$' '')
    # tar --create --xz --file "$dir.tar.xz" $dir
    # tar -I/opt/homebrew/bin/pixz -cf output.tar.xz $dir
    echo "creating tar"
    tar --create --file "$dir.tar" $dir
    echo compression
    pixz "$dir.tar"
    # trash $argv[1]

end

function pack --wraps tar
    pak $argv[1]
    trash $argv[1]
end

function zipy
    set -l folder "$argv[1]"
    dx -s=live "$folder"
    zip -qrm "$folder.zip" "$folder" && trash "$folder"
    dx -s=live "$folder.zip"
end
