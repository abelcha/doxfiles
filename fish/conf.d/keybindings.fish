







bind \cv __smart-ctrl-v.fish::paste

bind \e\h __fish_man_page
bind \e\? _help_page


bind \ec _aichat_fish

bind \e- history-token-search-forward
bind \e_ history-token-search-backward

# bind \e\[A 'history --merge ; up-or-search'
# . ~/.config/fish/aliases.fish
# . ~/.config/fish/ports.fish

# set -U fifc_keybinding \e\[Z
# set -U fifc_keybinding \e\[Z

bind \eOR complete-and-search
bind \eOQ history-pager
bind \eOS help

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
