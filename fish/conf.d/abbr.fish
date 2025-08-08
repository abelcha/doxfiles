abbr --add ghc --position anywhere --regex 'https?(.+)' --function gclone

abbr --add gda --position anywhere --regex '[ba]\/.+\.\w+' --function git_diff_abr
# https://github.com/pynappo/dotfiles/blob/ebc81db4a96575b053a9ff1eebd0b8a73c8ce703/.config/fish/config.fish#L65
abbr -p anywhere /mo --set-cursor '/mods/%'
abbr -p anywhere /m --set-cursor '/me/%'
abbr -p anywhere /me --set-cursor '/me/%'

abbr -a --set-cursor wl -- while read -l line\n echo %\nend\n
abbr -a -- mc mods --continue-last
abbr -a -- ms mods --show-last
abbr -a -p anywhere -- \:3 'http://localhost:3000'
abbr -a -p anywhere -- \:3 'http://localhost:3000'
abbr -a -- \.1 awk '{ print \$1 }'
abbr -a -- \.2 awk '{ print \$2 }'
abbr -a -- \.3 awk '{ print \$3 }'
abbr -a -- \.4 awk '{ print \$4 }'
abbr -a -- \.5 awk '{ print \$5 }'
abbr -a -- dr 'dx -s=live'
abbr -a -- sqb sqlitebiter
abbr -a -- pi 'pip install -r requirements.txt'
abbr -a -- ss 'set -S'
abbr -a -- bs 'brew search --eval-all --desc'
abbr -a -- bi 'brew info'
abbr -a -- do doctl
abbr -a -- bn 'brew install'

abbr -a -- abr 'mi /fish/conf.d/abbr.fish && _reload_fish'
abbr -a -- als 'mi /fish/conf.d/aliases.fish && _reload_fish'
abbr -a -- kb 'mi /fish/functions/fish_user_key_bindings.fish && _reload_fish'
abbr -a -- pipi 'uv pip install -r requirements.txt'
abbr -a -- fc 'mi /fish/config.fish && _reload_fish'
abbr -a -- gsm 'git status .'
abbr -a -- co 'git checkout'
abbr -a -- bu 'bun install'
abbr -a -- mtr 'sudo mtr'
abbr -a -- bung 'bun --global install'
abbr -a -- chx "sudo chmod -R +x"
# abbr -a -- pir "pip install -r ./requirements.txt"
abbr -a -- cl csvlens
abbr -a -- dsk diskutil

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

abbr -a --position anywhere lastdl --function last_download_file #'ls -U ~/Downloads |head -n 1'

abbr -a --set-cursor f 'fd . % | fzf'

# rf
# set shortcuts["py"] "Python"
# set shortcuts["rs"] "Rust"

# dict dmap
abbr -a gs git status
abbr -a ga git add
abbr --add dotdot --regex '^\.\.+$' --function multicd

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

function __dollar -a key
    # set -q (echo $key); and echo __ $key
    # set -l nxt -- "set \-\-show $key"
    # commandline --replace ""

    # echo (string replace '$' '' --  "set --show $key")
    echo set --show $key | sd --fixed-strings '$' ''
end

abbr -a dolz --regex '\$\w+' -f __dollar
# abbr -a dolx --set-cursor --regex '\$[\w\[\]]+' -f __dollar
# abbr -a dolx -p anywhere --set-cursor --regex "\\\$\w+" -f __dollar

function _last_history_item_nth_word
    set -l cmd (string split " " $history[1])
    set -l idx -(echo $argv[1] | string split '!')[3]
    echo $cmd[$idx]
end

abbr -a last_history_item_nth_word_abbr --position anywhere --regex "!![0-9]+" --function _last_history_item_nth_word

abbr -a gitmonoadd --position anywhere --regex "apps/native/[\w\/\.\_\-]*" --function git_add_mono

function last_history_cached
    echo $history[1] ' | %'
end
abbr -a --set-cursor !c --position anywhere --function last_history_exec

function last_history_exec
    set -l position (commandline -C)
    set -l resp (eval $history[1])
end
# abbr -a --set-cursor !x --position anywhere --function last_history_exec
# abbr -a --set-cursor :x --position anywhere --function last_history_exec

function last_history_item
    echo $history[1]
end

abbr -a !! --position anywhere --function last_history_item

function multicd
    echo cd (string repeat -n (math (string length -- $argv[1]) - 1) ../)
end
abbr --add dotdot --regex '^\.\.+$' --function multicd

function diff_expand
    set -l split (string split '^' $argv[1])
    set -l p1 "HEAD$(echo '^' | string repeat -n $split[1])"
    set -l p2 "HEAD$(echo '^' | string repeat -n $split[2])"
    echo "$p1 $p2"
end
function diff_expand2
    set -l split (string split '^' $argv[1])
    echo "Hghc(echo '^' | string repeat -n $split[2])"
end

# abbr --add diffxp --position anywhere --regex '^[0-9]{1,2}\^[0-9]{1,2}$' --function diff_expand

# abbr --add diffxwp --position anywhere --regex '^\^[0-9]{1,2}$' --function diff_expand2

function escape_url_arg
    echo "'$argv[1]'"
end

function raw_github_url
    echo $argv[1] | sd /blob/ /raw/
end

function anon_url
    echo $argv[1] | sd /\d/ /X/
end

function clonable_github
    # echo "CLONAME GITHUB"
    # c  echo $argv[1] | sd /blob/ /raw/
    string replace -r '/tree.+' '' -- $argv[1]
end

function fix_clone
    string replace -r '^git\sclone\s(\w+\/\w+)$' 'git clone https://github.com/$1'
end

abbr -a ghclone_safe --position anywhere --regex "http.+github.com/.+/.+/tree/.+" --function clonable_github
abbr -a gh_safe --position anywhere --regex "http.+github.com.+/blob/.+" --function raw_github_url
# abbr -a gh_clone --position anywhere clone --function fix_clone

abbr -a path_anon --position anywhere --regex "/Users/a\w{9}r/" --function anon
abbr -a url_safe --position anywhere --regex "[a-z]{3,10}://.+[\&\?].+" --function escape_url_arg
abbr -a url_safe --position anywhere --regex "[a-z\-]+\.[a-z]{2,5}[\&\?].+" --function escape_url_arg
function dict --argument-names id action key value
    set --local id (string escape --style=var $id)
    set --local keys_ref _dict_{$id}_keys
    set --local values_ref _dict_{$id}_values
    set --query --global $keys_ref || set --global $keys_ref
    set --query --global $values_ref || set --global $values_ref
    set --local keys $$keys_ref
    set --local values $$values_ref
    contains $key $keys && set --local index (contains --index $key $keys)
    switch $action
        case set
            if set --query --local index
                set {$values_ref}[$index] $value
            else
                set --append $keys_ref $key
                set --append $values_ref $value
            end
        case get
            set --query --local index && echo $values[$index]
        case delete
            set --query --local index \
                && set --erase {$keys_ref}[$index] \
                && set --erase {$values_ref}[$index]
        case \*
            test -n "$keys" || return
            for i in (seq (count $keys))
                echo $keys[$i] $values[$i]
            end
    end
end

set -g dmap

dict dmap set d /me/dev/
dict dmap set da /me/dev/awesome-find/

dict dmap set dl /me/Downloads/
dict dmap set dd /me/Desktop/
dict dmap set h /me
dict dmap set c /me/config/
dict dmap set ca "/me/config/aichat/config.yaml"
dict dmap set f /fish/
dict dmap set m /me/
dict dmap set ch /me/config/helix/
dict dmap set b /mods/builds/
dict dmap set hc "/me/config/helix/config.toml"
dict dmap set fc "/me/config/fish/config.fish"
dict dmap set cf "/me/config/fish/conf.d/"
dict dmap set fd "/me/config/fish/conf.d/"
dict dmap set ff /me/config/fish/functions/
dict dmap set fg /me/config/fish/completions/
dict dmap set fa "/me/config/fish/conf.d/aliases.fish"
dict dmap set fb "/me/config/fish/conf.d/abbr.fish"
dict dmap set ch /me/config/hammerspoon
dict dmap set a /me/
# dict dmap set cm "/me/config/micro/"
# dict dmap set e /Volumes/explore/
dict dmap set z /me/config/zsh/
dict dmap set za "/me/config/zsh/aliases.zsh"
dict dmap set zf "/me/config/zsh/functions.zsh"
dict dmap set zrc "/me/config/zsh/.zshrc"
dict dmap set zh "/me/config/zsh/.zsh_history"
dict dmap set ds /me/datasets/
dict dmap set dc /me/Documents/
# dict dmap set xx /me/XDL/
dict dmap set x /me/XDL/
dict dmap set t /tmp/
dict dmap set p /me/projects/
dict dmap set w /me/dev/P2/examples/corewar/
dict dmap set v /Volumes/
dict dmap set l /Volumes/datalake/
dict dmap set tt /Volumes/T9
dict dmap set s /me/datasets/sherlock/
dict dmap set e /me/datasets/entreprise/
dict dmap set se /dev/stderr
dict dmap set so /dev/stdout
dict dmap set su /dev/null
dict dmap set va /opt/v/
dict dmap set cl /opt/homebrew/Cellar/
dict dmap set br /opt/homebrew/
