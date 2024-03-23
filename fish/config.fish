set -x XDG_CONFIG_HOME ~/.config
set -x XDG_DATA_HOME ~/.local
set -x LLVM_PATH /opt/homebrew/opt/llvm
set -x GOPATH ~/.golang
set -x BUN_INSTALL ~/.bun
set -x NVM_DIR ~/config/nvm
set -x PIPX_HOME ~/.local/pipx/

set -x AICHAT_CONFIG_DIR ~/.config/aichat
set -x PNPM_HOME ~/Library/pnpm
set -x EDITOR hx
set -x PKG_CONFIG_PATH /usr/local/lib/pkgconfig/lib
set -x N_PREFIX ~/.local/
set -x ANDROID_HOME ~/Library/Android/sdk

pyenv init - | source
rbenv init - | source

fish_add_path $ANDROID_HOME/emulator
fish_add_path $ANDROID_HOME/platform-tools
fish_add_path /Applications/Transporter.app/Contents/itms/bin/
fish_add_path /Users/abelchalier/.rbenv/versions/3.3.0/bin/


fish_add_path ~/.cargo/bin
fish_add_path ~/.iterm2
fish_add_path ~/.cargo/bin
fish_add_path /Applications/VLC.app/Contents/MacOS
fish_add_path /opt/homebrew/opt/mysql@5.7/bin
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/opt/llvm
fish_add_path $GOPATH/bin
fish_add_path ~/abin
fish_add_path ~/.clib/bin
fish_add_path ~/.bun/bin
fish_add_path ~/.jenv/bin
fish_add_path ~/.npm-global/bin
fish_add_path ~/.local/bin
fish_add_path ~/.rbenv/bin
fish_add_path $LLVM_PATH/bin
fish_add_path ~/.local/nvim/mason/bin

function unexpand-home-tilde
    /bin/cat - | string replace $HOME '~'
end

function trim-trailing-slash
    read str
    string replace -r '/$' '' -- $str
end
function last-download
    echo ~/Downloads/(ls -t ~/Downloads/ | head -1)
end

# function adbbr
#     echo "===> $argv"
#     set cleaned_args (echo $argv | unexpand-home-tilde | trim-trailing-slash)
#     echo "CLEANED $cleaned_args toto"
#     abbr -a (echo $cleaned_args | string split ' ')

#     set abbr_file "$HOME/.config/fish/conf.d/abbrs.fish"
#     abbr >$abbr_file
# end



if status is-interactive
    # Commands to run in interactive sessions can go here
    # source ~/config/fish/atuin.fish
end
