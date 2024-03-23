

function _aichat_fish
    set -l _old (commandline)
    if test -n $_old
        echo -n "⌛"
        commandline -f repaint
        commandline (aichat -e $_old)
    end
end



function list-bundle
    osascript -e 'tell application "System Events" to get bundle identifier of every process whose background only is false'
end



function w
    set resp (/usr/bin/which "$argv[1]")
    if test -f "$resp"
        echo "$resp"
    else
        functions $argv[1]
    end
end



function edit
    /usr/bin/which $argv[1]; or return
    command $EDITOR (/usr/bin/which  $argv[1])
end


function fexec --wraps fzf
    #set temp_file (mktemp)
    #/bin/cat > $temp_file
    #set cmd "bat $temp_file | gawk $argv {q}"
    # echo $cmd
    # return
    set resp (echo '' | fzf --query "echo 'lol'" --print0 --print-query --preview "eval {q}" $argv)

    echo "gawk $resp" | tr -d \\n | pbcopy
end

function fawk --wraps awk
    set temp_file (mktemp)
    /bin/cat >$temp_file
    set cmd "bat $temp_file | gawk $argv {q}"
    # echo $cmd
    # return
    set resp (echo '' | fzf --query "// { print \$0 }" --print0 --print-query --preview "$cmd")

    echo "gawk $resp" | tr -d \\n | pbcopy
end


function flogcat --wraps fzf
    set temp_file (mktemp)
    /bin/cat >$temp_file
    set cmd "/bin/cat $temp_file | gawk {q}"
    # echo $cmd
    # return
    set resp (echo '' | fzf --query "// { print \$0 }" --print0 --print-query --preview-window="down,95%" --preview "$cmd" )

    echo "gawk $resp" | tr -d \\n | pbcopy
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

function fzf_env
    env | column -t -s = | fzf --print0 --tac --layout=reverse --info=right
end

function fenv
    fzf_env | awk '{ print "$" $1 }' | tr -d '\n\0' | pbcopy
end

function fenval
    fzf_env | awk '{ print $2 }' | tr -d '\n\0' | pbcopy
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
