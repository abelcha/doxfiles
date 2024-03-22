
set -g dmap
dict dmap set a "~/"
dict dmap set d "~/dev/"
dict dmap set da "~/dev/awesome-find/"

dict dmap set h "$HOME/"
dict dmap set c "~/config/"
dict dmap set ca "~/config/aichat/config.yaml"
dict dmap set f "~/config/fish/"
dict dmap set ch "~/config/helix/"
dict dmap set hc "~/config/helix/config.toml"
dict dmap set fc "~/config/fish/config.fish"
dict dmap set fp "~/config/fish/ports.fish"
dict dmap set fa "~/config/fish/aliases.fish"
dict dmap set fb "~/config/fish/conf.d/abbr.fish"

dict dmap set cm "~/config/micro/"
dict dmap set z "~/config/zsh/"
dict dmap set za "~/config/zsh/aliases.zsh"
dict dmap set zf "~/config/zsh/functions.zsh"
dict dmap set zrc "~/config/zsh/.zshrc"
dict dmap set zh "~/config/zsh/.zsh_history"



dict dmap set t "~/dev/toklore/"
dict dmap set tm "~/dev/toklore/monorepo"
dict dmap set ta "~/dev/toklore/monorepo/apps/native/"
dict dmap set tb "~/dev/toklore/monorepo/packages/backend/"
dict dmap set tw "~/dev/toklore/monorepo/apps/web/"




# https://github.com/pynappo/dotfiles/blob/ebc81db4a96575b053a9ff1eebd0b8a73c8ce703/.config/fish/config.fish#L65

# abbr -a --position anywhere -- status 'status .'
abbr -a -- \.1 awk '{ print \$1 }'
abbr -a -- \.2 awk '{ print \$2 }'
abbr -a -- \.3 awk '{ print \$3 }'
abbr -a -- \.4 awk '{ print \$4 }'
abbr -a -- \.5 awk '{ print \$5 }'
abbr -a -- dr 'dx -s=live'
abbr -a -- gs 'git status .'
abbr -a -- abr 'mi ~/config/fish/conf.d/abbr.fish && fish'
abbr -a -- gsm 'git status .'
abbr -a -- mtr 'sudo mtr'
abbr -a -- bung 'bun --global install'
abbr -a -- chx "sudo chmod -R +x"
abbr -a rf --position anywhere --set-cursor "rrg -w % ../../node_modules"

# abbr -a --position anywhere --set-cursor :d "~/dev/%" 
# abbr -a --position anywhere --set-cursor :h "$HOME/%" 
# abbr -a --position anywhere --set-cursor :a "~/%" 
# abbr -a --position anywhere --set-cursor :c "~/config/%" 
# abbr -a --position anywhere --set-cursor :t "~/dev/toklore/%" 
# abbr -a --position anywhere --set-cursor :dtn "~/dev/toklore/monorepo/apps/native/%" 
# abbr -a --position anywhere --set-cursor :dtb "~/dev/toklore/monorepo/packages/backend/%" 
# abbr -a --position anywhere --set-cursor :f "~/config/fish/%" 
# abbr -a --position anywhere --set-cursor :z "~/config/zsh/%" 

function strFirst
    set -l text $argv[1]
    echo (string sub -l 1 -- $text)
end

function strLast
    set -l text $argv[1]
    set -l length (string length -- $text)
    echo (string sub -s $length -- $text)
end

function strNth
    set -l text $argv[1]
    set -l index $argv[2]
    echo (string sub -s $index -l 1 -- $text)
end

function checkFirstCharType
    set -l first_char (string sub -l 1 -- $argv[1])

    switch $first_char
        case '*[0-9]*'
            echo numeric

        case '*[a-zA-Z]*'
            echo alpha
        case '*'
            echo other
    end
end

abbr -a --position anywhere lastdl (last-downloaded)
abbr -a --set-cursor f 'fd . % | fzf'



# set shortcuts["py"] "Python"
# set shortcuts["rs"] "Rust"


# dict dmap


function parse_key
    set -l key (string sub --start 2 $argv | string lower)
    # echo $key
    set -l value (dict dmap get $key)
    echo $value
end

function is_dir
    echo (string match -r '/$' $argv)
end
function dot_start
    set value (parse_key $argv)
    test -z "$value" && return 1
    if test -n (is_dir $value)
        command echo "cd $value%"
    else
        command echo "% $value"
    end
end
function dot_middle
    set value (parse_key $argv)
    test -z "$value" && return 1

    if test -n (is_dir $value)
        command echo "$value%"
    else
        command echo "$value %"
    end
end

abbr -a dostart --position anywhere --set-cursor --regex "[\.\:]\w+" --function dot_middle
abbr -a docmd --position command --set-cursor --regex "[\.\:]\w+" --function dot_start


function _last_history_item_nth_word
    set -l cmd (string split " " $history[1])
    set -l idx -(echo $argv[1] | string split '!')[3]
    echo $cmd[$idx]
end

abbr -a last_history_item_nth_word_abbr --position anywhere --regex "!![0-9]+" --function _last_history_item_nth_word


function git_add_mono
    echo "~/dev/toklore/monorepo/$argv"
end


abbr -a gitmonoadd --position anywhere --regex "apps/native/[\w\/\.\_\-]*" --function git_add_mono
function last_history_cached
    echo $history[1] ' | %'
    # echo "lol"
end
abbr -a --set-cursor !c --position anywhere --function last_history_exec


function last_history_exec
    set -l position (commandline -C)
    # if 
    #if test $position -lt 5 
    #  echo $history[1] ' | %'
    #else
    set -l resp (eval $history[1])
    echo "$resp"
    #end
    # echo "lol"
end
abbr -a --set-cursor !x --position anywhere --function last_history_exec
abbr -a --set-cursor :x --position anywhere --function last_history_exec

function last_history_item
    echo $history[1]
end

abbr -a !! --position anywhere --function last_history_item
abbr -a ga --position command --function _fzf_search_git_status

function multicd
    echo cd (string repeat -n (math (string length -- $argv[1]) - 1) ../)
end
abbr --add dotdot --regex '^\.\.+$' --function multicd


function escape_url_arg
    echo "'$argv[1]'"
end
abbr -a url_safe --position anywhere --regex "http.+[\&\?].+" --function escape_url_arg

function ecx
    echo lol
end

#abbr -a gsm --position anywhere status --function ecx
