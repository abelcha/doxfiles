# set -gx base16_fish_shell_disable_prompt_colors TRUE
if test -e /opt/homebrew/bin/brew
    eval ( /opt/homebrew/bin/brew shellenv)
else if test -e /usr/local/bin/brew
    eval ( /usr/local/bin/brew shellenv)
else if test -e /home/linuxbrew/.linuxbrew/bin/brew
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
end

string replace --regex '^(\w+)=(.+)$' 'set -gx $1 "$2"' < ~/.config/.env | source

fish_add_path (command cat $XDG_CONFIG_HOME/.paths)

if test -f "~/.paths"
    fish_add_path (command cat $HOME/.paths)
end

if type -q batpipe
    batpipe | source
end

# set -x HOMEBREW_AUTO_UPDATE_SECS "42e10"

set regphonefr '(0033|\+33|0)[6-7](\d\d[^\-\.\s]?){4}'
set regphone2 '(33|0033|\+33|0)\W?[67](\d{8}|(\.\d\d){4}|(\s\d\d){4})'
set regfr 'fr(ance|ench)?'
set regemail '[\w\d\-\_\.]+@\w+\.\w{2,3}'

set BREW_COMPLETE_PATH $HOMEBREW_PREFIX/share/fish/vendor_completions.d

if not contains -- $BREW_COMPLETE_PATH $fish_complete_path
    set --append fish_complete_path $BREW_COMPLETE_PATH
end

if [ "$(uname -s)" != Darwin ]
    functions --erase ramdisk diskattach diskimage bundleids fbundleid xcodebuild ulfo md qlmanage container ass
end
