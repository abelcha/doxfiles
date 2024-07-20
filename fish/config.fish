# set -g LANG en_EN.UTF-8

set -x LESSOPEN "|/opt/a/abin/lesspipe.sh %s"

set -x CGO_CPPFLAGS -w

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
set -g fish_function_path $fish_function_path $fisher_path/functions

set regphonefr "'(0033|\+33|0)[6-7](\d\d[^\-\.\s]?){4}'"



# type -q pyenv; and pyenv init - | source
# type -q rbenv; and rbenv init - | source

fnm env --use-on-cd | source

# source ~/dev/abel/'bunfish'.fish


source ~/.venv/bin/activate.fish

set -x VCPKG_ROOT "/opt/a/.local/vcpkg"
#fish_add_path
fish_add_path $VCPKG_ROOT
fish_add_path $ANDROID_HOME/emulator
fish_add_path $ANDROID_HOME/platform-tools
fish_add_path /Applications/Transporter.app/Contents/itms/bin/
fish_add_path ~/.rbenv/versions/3.3.0/bin/
# fish_add_path /Applications/Proxyman.app/Contents/MacOS/

fish_add_path /opt/homebrew/opt/openvpn/sbin
fish_add_path ~/.iterm2
fish_add_path ~/.cargo/bin
fish_add_path /Applications/VLC.app/Contents/MacOS
# fish_add_path /opt/homebrew/opt/mysql@5.7/bin
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

function anhome
    /bin/cat - | string replace $HOME /opt/a
end
function trim-trailing-slash
    read str
    string replace -r '/$' '' -- $str
end

function last-download
    echo ~/Downloads/(ls -t ~/Downloads/ | head -1)
end

function setRunner

    if test -f ./Cargo.toml
        set project_runner cargo
    else if test -f ./go.mod
        set project_runner go
    else if test -f ./build.zig
        set project_runner zig
    end
    set project_runner bun

end
if status is-interactive
    function __fish_enable_focus --on-event fish_postexec
        echo -n \e\[\?1004h
    end
    function __fish_disable_focus --on-event fish_preexec
        echo -n \e\[\?1004l
    end

    # setRunner
    function onDirChange --on-variable PWD
        # setRunner

        #xh :8081 > /dev/null 2>&1 &
        # if test -e "$PWD/wrangler.toml"
        # alias run="run_wrangler"
        # else
        # alias run="run"
        # end

        # if
    end
    # Commands to run in interactive sessions can go here
    # source ~/config/fish/atuin.fish
end

# begin -h completion#
#-h --completion-fish | source
# end -h completion

# begin wrangler completion
#wrangler --completion-fish | source
# end wrangler completion
# source /opt/d/abel/
function __gt_command_completions
    set -lx SHELL (type -p fish)
    set -l command (commandline -opc)
    # uncomment to include options, e.g. -q, --help
    # $command --get-yargs-completions
    # uncomment to exclude options (default)
    $command --get-yargs-completions | string replace -r '\-.*' ''
end
