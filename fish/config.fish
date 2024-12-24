set -gx base16_fish_shell_disable_prompt_colors TRUE
# set -gx fish_term24bit 1

# alias emsdk_setup ". $PHOME/dev/perspective/.emsdk/emsdk_env.fish"
# set -gx EMSDK_QUIET 1

set -gx BKT_TTL 10m
# source "/Users/abelchalier/dev/p2/.emsdk/emsdk_env.fish"

set -gx HOME /me
set -gx PHOME /me

set -x FZF_DEFAULT_OPTS --exact
set -x SKIM_DEFAULT_OPTIONS "--algo clangd"
set -x LESSOPEN "|/opt/a/abin/lesspipe.sh %s"

set -x CGO_CPPFLAGS -w

set -x EZA_COLORS "da=0"

set -x DENO_REPL_HISTORY ON
set -x DENO_FUTURE ON
set -x DENO_DEFAULT_OPTS "--allow-all --unstable-*"
set -x EGET_BIN /opt/bin

set -x XDG_CONFIG_HOME $PHOME/.config
set -x XDG_DATA_HOME $PHOME/.local
set -x LLVM_PATH /opt/homebrew/opt/llvm
set -x GOPATH $PHOME/.golang
set -x BUN_INSTALL $PHOME/.bun
set -x NVM_DIR $PHOME/config/nvm
set -x PIPX_HOME $PHOME/.local/pipx/

set -gx LDFLAGS -L/opt/homebrew/lib
set -gx CPPFLAGS -I/opt/homebrew/include
set -gx CFLAGS -I/opt/homebrew/include

set -x AICHAT_CONFIG_DIR $PHOME/.config/aichat
set -x PNPM_HOME $PHOME/Library/pnpm
set -x EDITOR hx
set -x PKG_CONFIG_PATH /usr/local/lib/pkgconfig/lib
set -x N_PREFIX $PHOME/.local/
set -x ANDROID_HOME $PHOME/Library/Android/sdk
set -g fish_function_path $fish_function_path $fisher_path/functions

set --append fish_complete_path /opt/homebrew/completions/fish/
set --append fish_complete_path /opt/homebrew/share/fish/vendor_completions.d/

set MAP_MAX_ARGS 1
set regphonefr '(0033|\+33|0)[6-7](\d\d[^\-\.\s]?){4}'
set regphone2 '(33|0033|\+33|0)\W?[67](\d{8}|(\.\d\d){4}|(\s\d\d){4})'
set regemail '[\w\d\-\_\.]+@\w+\.\w{2,3}'
set -x PAGER less2
set -x MANPAGER less2
set -x LESS "-j.5 -I -R"
# set c-x MANPAGER "sh -c 'col -bx | bat -l man -p --theme 'Monokai Extended''"
# set -gx MANPAGER "sh -c 'col -bx | bat -l man -p --theme 'Monokai Extended''"
# set -gx MANROFFOPT -- -c
# set -x MAN_PAGER most
# set -x BROWSER elinks
source $PHOME/.venv/bin/activate.fish
set -x VCPKG_ROOT "$PHOME/.local/vcpkg"
#fish_add_path
fish_add_path /me/.deno/bin/
fish_add_path /usr/local/arangodb/bin/
fish_add_path $VCPKG_ROOT
fish_add_path $PHOME/.rbenv/versions/3.3.0/bin/
# fish_add_path /Applications/Proxyman.app/Contents/MacOS/
fish_add_path /opt/homebrew/Cellar/moreutils/0.69/bin/
fish_add_path /opt/homebrew/opt/openvpn/sbin
fish_add_path $PHOME/.iterm2
fish_add_path $PHOME/.cargo/bin
fish_add_path /Applications/VLC.app/Contents/MacOS
# fish_add_path /opt/homebrew/opt/mysql@5.7/bin
fish_add_path /System/Library/Filesystems/apfs.fs/Contents/Resources/
fish_add_path /opt/homebrew/bin
# fish_add_path /opt/homebrew/opt/llvm
fish_add_path $GOPATH/bin
fish_add_path $PHOME/abin
fish_add_path $PHOME/.clib/bin
fish_add_path $PHOME/.bun/bin
fish_add_path $PHOME/.npm-global/bin/
fish_add_path $PHOME/.npm-global/bin
fish_add_path $PHOME/.local/bin
fish_add_path $PHOME/.rbenv/bin
fish_add_path $LLVM_PATH/bin
fish_add_path $PHOME/.local/nvim/mason/bin
fish_add_path $PHOME/.deno/bin
fish_add_path $PHOME/.mint/bin
set -gx PNPM_HOME /me/Library/pnpm
fish_add_path PATH "$PNPM_HOME" $PATH
# fish_add_path /opt/homebrew/Cellar/llvm/19.1.5/bin/

# fish_add_path /opt/homebrew/opt/llvm
fish_add_path /opt/homebrew/opt/llvm/bin/
# type -q pyenv; and pyenv init - | source
# type -q rbenv; and rbenv init - | source
#register-python-argcomplete --shell fish pipx > ~/.config/fish/completions/pipx.fish
# fnm env --use-on-cd | source
# command bun run /opt/c/fish/runtime.ts init
function fish_command_not_found

    # echo "WHATIS xxd $NEXT_CMD " >/tmp/fifo
    if string match -q --regex '^\$\w+' -- "$NEXT_CMD"
        set cmd "set -S $(string replace '$' '' -- "$NEXT_CMD")"
        # commandline -f expand-abbr
        # echo $cmd >/tmp/fifo
        eval $cmd
        set -S >/tmp/fifo

        # set argv ls
        # echo set -S (string replace '$' '' -- "$argv[1]") | fish
        return 1
    end

    #if
    #  if test -z "$HOME/.config/fish/functions/$argv[1].fish"
    #      echo "function js exists"
    #      return
    #  end

    __fish_default_command_not_found_handler $argv
end

function unexpand-home-tilde
    /bin/cat - | string replace $HOME '~'
end

function anhome
    if isatty stdin
        echo $argv | string replace -a $HOME /opt/a
    else
        /bin/cat - | string replace -a $HOME /opt/a
    end
end
function trim-trailing-slash
    read str
    string replace -r '/$' '' -- $str
end

function last-download
    echo $PHOME/Downloads/(ls -t $PHOME/Downloads/ | head -1)
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
    function prexxxx --on-event fish_preexec
        set -g NEXT_CMD "$argv"
        # set -S LAST_COMMANDLINE >/tmp/fifo
        # set -S argv >/tmp/fifo
        # echo $argv rg --quiet '^\$'
    end

    function postxxxxx --on-event fish_postexec
        set -g PREV_CMD $NEXT_CMD
        # echo ">>>>> prev: $PREV_CMD|nex:$NEXT_CMD " >/tmp/fifo
        # set -S argv >/tmp/fifo
        # echo -n \e\[\?1004h
    end
    # function __fish_disable_focus --on-event fish_preexec
    #     echo -n \e\[\?1004l
    # end

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
    # source $PHOME/config/fish/atuin.fish
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
