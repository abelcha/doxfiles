function __actual_fullcmd_token
    set -l resp (commandline -op)
    string match -qr '^(ww|w|which|sudo|__|time|bkt)$' -- $resp[1]; and set --erase resp[1]

    echo $resp | sd '\s\-.+' ''
end

function __actual_cmd_token
    echo (__actual_fullcmd_token $argv )[1]
    # set -l resp (commandline -op)
    # string match -qr '^(sudo|__|time|bkt)$' -- $resp[1]; and set --erase resp[1]
    # if test (has_subcommand "$resp[1]" "$resp[2]")
    #     echo $resp[1] $resp[2]
    # else
    #     echo $resp[1]
    # end
end

function _fish_xxx_current_dir -d "List contents of token under the cursor if it is a directory, otherwise list the contents of the current directory" --no-scope-shadowing
    set -x val (commandline -t | string replace -r '^~' "$HOME")
    set -x cmd
    if test -d $val
        set cmd $argv[1] $val
        fset ffirst cmd >/tmp/fifo
    else
        set -l dir (dirname -- $val)
        if test $dir != . -a -d $dir
            set cmd $argv[1] $dir
            fset mid cmd >/tmp/fifo
        else
            set cmd $argv[1]
            fset last cmd >/tmp/fifo
        end
    end
    __fish_echo $cmd
end

function _fish_xxx_current_path -d "List contents of token under the cursor if it is a directory, otherwise list the contents of the current directory" --no-scope-shadowing
    #set cmd
    set cline (§ (commandline -t) |§ (commandline -op)[-1])
    fset cline >/tmp/fifo
    set -x val (echo $cline | string replace -r '^~' "$HOME")
    set -x cmd
    if test -f $val
        set cmd ll $val
        fset fffirst cmd >/tmp/fifo
    else if test -d $val
        set cmd ll --list-dirs $val
        # fset sssec cmd >/tmp/fifo
    else

        set cmd ll
        fset val >/tmp/fifo
        fset ttthird cmd >/tmp/fifo
        return
    end
    __fish_echo $cmd
end

function gencomp_auto --wraps gencomp
    set cmd (__actual_cmd_token)
    # if string match -q -r '..dry.run' -- "$cmd"
    #     set nwcmd (string replace '..dry.run' "$cmd")
    #     exec "$nwcmd"
    #     commandline -f repaint
    # end
    commandline --replace (echo -n gencomp3 $cmd --dry-run)
end

# https://gist.github.com/jamiew/40c66061b666272462c17f65addb14d5
function which_auto --wraps which
    set cmd (__actual_cmd_token)
    echo
    hr '★・・・・・・'
    w $cmd
    # commandline -f repaint
end

function help_auto
    set cmd (__actual_cmd_token)
    eval "$cmd --help|bat --language help --paging always"
    commandline -f repaint
end

# function mantldr -a argz

#     man $argz|col -b |sd --flags s '.+(EXAMP.+?)\n([A-Z].+)' '$1'

# end 

function tldr_manex
    set cmd (__actual_cmd_token)
    echo
    hr '★・・・'
    manex "$cmd"
    hr '・・・*'
    commandline -f repaint

end

function tldr_auto
    __actual_fullcmd_token | read --array xcmd
    # set -S xcmd
    echo
    hr '♦︎'
    if test (which $xcmd[1]|rg coreutils)
        tldr (string replace -r '^[gu]' '' -- "$xcmd[1] -p linux" )
        # set xcmd[1] "-p linux $xcmd[1]"
        #    set -S cmd
    else
        tldr $xcmd[1] $xcmd[2] 2>/dev/null; or tldr $xcmd[1]
    end
    # if test (tldr $xcmd[1]|rg )
    # set -S xcmd
    # hr '♦︎'
    # echo
    commandline -f repaint
end

function history_merge
    history merge
end

function run_preview
    # if commandline
    set -l cmd (__actual_cmd_token)
    # set -l fullbuff (commandline --current-buffer)
    # set -S fullbuff
    # if set -S fullbuff | rg '[^1]\selements'
    #     string join \n $fullbuff | fish
    #     # echo gt1111
    #     return
    # end
    # if [ "$cmd[1]" = while ]
    # echo reeeeeed
    # return
    # end
    if echo "$cmd" | rg -w 'rm|cp|mv|mkdir' --quiet
        # echo
        echo
        hr '⚠︎'
        echo command detected, doing nuthin
    else if test -n "$cmd"
        echo
        hr '•°•°•°•°°'
        # exec "echo; hr '✰'"
        # echo "|$(commandline --current-buffer)|"
        set fullcmd (commandline --current-buffer)
        if set -S fullcmd | rg '[^1]\selements' --quiet
            string join \n $fullcmd | fish
            commandline -f repaint
            echo '•°•°•°•°°'
            echo
        else
            eval "$fullcmd"
        end
    end
    commandline -f repaint
end

function history_save
    history save
end

function current_command
    set z (commandline -op)
    echo $z[1]
end
function geninline -a cmd
    commandline -f repaint
    echo
    hr '* . ﹢ ˖ ✦ ¸ . ﹢ °'
    echo $cmd (current_command) | fish
    commandline -f repaint
end
function genuine -a cmd
    eval $cmd (__actual_cmd_token)
end
function genfn -a cmd lang
    # if eval "$cmd (current_command)" &>/dev/null
    # set -l commandx (current_command)
    set z (commandline -op)

    if eval "$cmd $z[1]" &>/dev/null
        eval "$cmd $z[1] | bat --paging always --language sh --theme Dracula"
    else
        commandline -f repaint
    end
    # command $cmd $commandx
    # end

end

function genxcat -a cmd
    # dump_commandline_test
    xcat (commandline -C)
end
function genxmi -a cmd
    # dump_commandline_test
    hx (commandline --current-token)
end
function genbroot -a cmd
    # dump_commandline_test
    br (commandline --current-token)
end

function bekill

    if test -z "$(commandline -op)"
        # echo noline
        # _fzf_search_directory
        fish_key_reader -c
    else
        echo "cursor: $(commandline --cursor)" >>/tmp/whatever
        if test (commandline --cursor) -lt 5
            # commandline --insert POP THAT
            # return
            echo "before: $POP_CMD" >>/tmp/whatever
            set temp $POP_CMD[1]
            commandline -f kill-word
            sleep 0.1
            commandline --insert "$temp "
            commandline -f beginning-of-line
            set POP_CMD $POP_CMD[2..]
            set --append POP_CMD $temp
            echo "$temp" >>/tmp/whatever
            echo "now: $POP_CMD" >>/tmp/whatever
        else
            commandline -f beginning-of-line
            commandline -f kill-word

        end

    end
end
function insertnull
    commandline --insert "> /dev/null"
end

# function swap_args

function fish_user_key_bindings
    echo "mi cd mv cp cat codm" | read -g --export -a POP_CMD
    bind --preset alt-b backward-word
    bind --preset alt-f forward-word
    #   bind alt-k bekill #beginning-of-line kill-word
    #   bind alt-s _fzf_search_git_status
    #   bind alt-w 'geninline w'
    #   bind alt-W 'geninline ww'
    #   bind alt-t tldr_auto
    #   bind alt-S 'genfn sm csv'
    #   bind \e\$ transpose-words
    #   bind \cR _atuin_search
    #   bind alt-b genbroot
    #   bind alt-ƒ _fzf_search_directory
    #   bind alt-OR complete-and-search
    #   bind alt-OQ complete-and-search
    #   # bind alt-c genxcat
    #   bind alt-O genxmi
    #   bind alt-m 'genuine man'
    #   bind \e\# insertnull
    #   bind alt-K fish_key_reader
    #   bind alt-j which_auto
    #   bind alt-H help_auto
    #   bind alt-g 'genuine compedit'
    #   bind alt-G gencomp_auto
    #   bind alt-F _reload_fish
    #   bind alt-D dump_commandline_test
    #   bind alt-r run_preview
    #   bind alt-c 'genfn cheat ash'
    #   bind alt-C 'genuine compfind'
    #   bind alt-u 'genuine funcis'
    #   bind \e\e\[B history-prefix-search-forward
    #   bind \e\e\[A history-prefix-search-backward
    #   bind \e\& current_command
    #   bind \e\[O history_save
    #   bind \e\[I history_merge
    #   bind \e\[1\;5B nextd
    #   # bind \e\[1\;5B _atuin_bind_down
    #   bind \e\[1\;5A prevd
    #   bind \e\[1\;5A _atuin_bind_up
    #   bind alt-- history-token-search-forward
    #   bind alt-_ history-token-search-backward
    #   bind \cv '__smart-ctrl-v.fish::paste'
    #   bind \cF 'hx ~/config/fish/config.fish && _reload_fish'
    #   bind alt-backspace backward-kill-word
    #   bind -k f4 help_auto
    bind alt-j which_auto
    bind alt-k bekill
    bind alt-s _fzf_search_git_status
    bind alt-w 'geninline w'
    bind alt-W 'geninline ww'
    bind alt-t tldr_auto
    bind alt-T tldr_manex

    bind alt-S 'genfn sm csv'
    bind alt-\$ transpose-words
    bind ctrl-r _atuin_search
    bind ctrl-R _atuin_hist
    bind alt-ß '_fish_xxx_current_dir br'
    bind ctrl-alt-l '_fish_xxx_current_dir lls'
    bind ctrl-l '_fish_xxx_current_path ll'
    bind alt-l '_fish_xxx_current_dir lld'
    bind alt-ƒ _fzf_search_directory
    bind \eOR complete-and-search
    bind \eOQ complete-and-search
    bind alt-O genxmi
    bind alt-A 'commandline -f expand-abbr'
    bind alt-m 'genuine man'
    bind alt-\# insertnull
    bind alt-K fish_key_reader
    bind alt-H help_auto
    bind alt-g 'genuine compedit'
    bind alt-G gencomp_auto
    bind alt-F _reload_fish
    bind alt-D dump_commandline_test
    # bind alt-r run_preview
    bind alt-f2 run_preview
    bind alt-c 'genfn cheat ash'
    bind alt-C 'genuine compfind'
    bind alt-u 'genuine funcis'
    bind \e\e\[B history-prefix-search-forward
    bind \e\e\[A history-prefix-search-backward
    bind alt-\& current_command
    bind \e\[O history_save
    bind \e\[I history_merge
    bind \e\[1\;5B nextd
    bind \e\[1\;5A _atuin_ bind_up
    bind alt-minus history-token-search-forward
    bind alt-_ history-token-search-backward
    bind ctrl-f 'hx ~/config/fish/config.fish && _reload_fish'
    bind alt-backspace backward-kill-word
end
