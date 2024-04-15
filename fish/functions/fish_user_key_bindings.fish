bind --preset \eb backward-word
bind --preset \ef forward-word

# bind \ek beginning-of-line kill-word

bind \eK beginning-of-line kill-word

bind \es _fzf_search_git_status


function gencomp_auto --wraps gencomp
    set cmd (commandline -op)
    commandline --replace (echo -n gencomp $cmd[1])

    # eval "echo; hr; gencomp $cmd[1]"
    # commandline -f repaint
end

function which_auto --wraps which
    set cmd (commandline -op)
    #commandline --replace -- "which $cmd[1]"
    eval "echo; hr; which $cmd[1]"
    commandline -f repaint
end


function help_auto
    set cmd (commandline -op)
    #commandline --replace -- "which $cmd[1]"
    eval "echo; hr; $cmd[1] --help|bat --language help --paging always"
    commandline -f repaint
end

function tldr_auto
    set cmd (commandline -op)
    eval "echo; hr; tldr $cmd[1]"
    commandline -f repaint
end

function fish_user_key_bindings
    bind \e\[1\;5A prevd
    bind \e\[1\;5B nextd
    # bind \ef --preset --erase
    bind \eF reload_fish
    bind \eH help_auto
    bind bind -k f4 help_auto
    bind \eG gencomp_auto

    bind \ek fish_key_reader
    bind \ej which_auto
    bind -k f4 'genfn '
    bind \em 'genfn man'
    bind \et tldr_auto

    bind \eƒ 'hx ~/config/fish'
end

function reload_fish
    set cmd (commandline -o)
    echo
    hr -
    fish
    # sleep 2
    # echo lol
    commandline -i repaint

    # commandline --replace fish
    # fish_prompt
end



function history_merge
    history merge
end


function history_save
    history save
end

function dump_commandline_test
    echo -----------
    # echo (commandline -j) # print only the full command 
    # echo (commandline -p) # print only pwd -l in: ls|cat| pwd -l
    echo (commandline -op) # print only pwd -l in: ls|cat| pwd -l
    echo -----d------
end

function current_command
    set z (commandline -op)
    echo $z[1]
end

bind \e\& current_command
bind \e\[O history_save
bind \e\[I history_merge


bind \cv __smart-ctrl-v.fish::paste

#bind \e\h __fish_man_page
#bind \e\? _help_page

function genfn -a cmd
    if eval "$cmd (current_command)" &>/dev/null
        eval "$cmd (current_command) | bat --paging always --language sh --theme Dracula"
    end
end

function genafter -a prepend
    # if eval "(current_command)c" &>/dev/null
    eval "$cmd (current_command) | bat --paging always --language sh --theme Dracula"
    # end
end


bind \ec 'genfn cheat'
bind \e- history-token-search-forward
bind \e_ history-token-search-backward

# bind \e\[A 'history --merge ; up-or-search'
# . ~/.config/fish/aliases.fish
# . ~/.config/fish/ports.fish

# set -U fifc_keybinding \e\[Z
# set -U fifc_keybinding \e\[Z

bind \eOR complete-and-search
bind \eOQ history-pager
#bind \eOS help

bind -k btab _fzf_search_directory

bind \eR _atuin_search
# bind -k up _atuin_bind_up
# bind \eOA _atuin_bind_up
# bind \e\[A _atuin_bind_up
# if bind -M insert > /dev/null 2>&1
# bind -M insert \cr _atuin_search
# bind -M insert -k up _atuin_bind_up
# bind -M insert \eOA _atuin_bind_up
# bind -M insert \e\[A _atuin_bind_up
# end
