# set -gx base16_fish_shell_disable_prompt_colors TRUE

set -gx BKT_TTL 10m
set -gx HOME /me
set -gx PHOME /me
set -x FZF_DEFAULT_OPTS --exact
set -x SKIM_DEFAULT_OPTIONS "--algo clangd"

# set -x HOMEBREW_AUTO_UPDATE_SECS "42e10"
set -x HOMEBREW_NO_ENV_HINTS true
set -x HOMEBREW_NO_AUTO_UPDATE true

set -x CGO_CPPFLAGS -w
set -x EZA_COLORS "da=0"

set -x DENO_REPL_HISTORY ON
set -x DENO_FUTURE ON
set -x DENO_DEFAULT_OPTS "--allow-all --unstable-*"
set -x EGET_BIN /opt/bin

set -gx LDFLAGS -L/opt/homebrew/lib
set -gx CPPFLAGS -I/opt/homebrew/include
set -gx CFLAGS -I/opt/homebrew/include

set -x AICHAT_CONFIG_DIR $PHOME/.config/aichat
set -x PNPM_HOME $PHOME/Library/pnpm
set -x EDITOR hx
set -x PKG_CONFIG_PATH /usr/local/lib/pkgconfig/lib
set -x N_PREFIX $PHOME/.local/
set -x ANDROID_HOME $PHOME/Library/Android/sdk

set MAP_MAX_ARGS 1
set regphonefr '(0033|\+33|0)[6-7](\d\d[^\-\.\s]?){4}'
set regphone2 '(33|0033|\+33|0)\W?[67](\d{8}|(\.\d\d){4}|(\s\d\d){4})'
set regemail '[\w\d\-\_\.]+@\w+\.\w{2,3}'
set PAGER less
set MANPAGER less
set LESS "-j.5 -I -R --search-options W"
set LESSOPEN "|/opt/a/abin/lesspipe.sh %s"

set -x XDG_CONFIG_HOME $PHOME/.config
set -x XDG_DATA_HOME $PHOME/.local
set -x LLVM_PATH /opt/homebrew/opt/llvm
set -x GOPATH $PHOME/.golang
set -x BUN_INSTALL $PHOME/.bun
set -x NVM_DIR $PHOME/config/nvm
set -x PIPX_HOME $PHOME/.local/pipx/

fish_add_path $VCPKG_ROOT
fish_add_path $PHOME/.rbenv/versions/3.3.0/bin/
fish_add_path /opt/homebrew/Cellar/moreutils/0.69/bin/
fish_add_path $PHOME/.cargo/bin
fish_add_path /System/Library/Filesystems/apfs.fs/Contents/Resources/
fish_add_path /opt/homebrew/bin
fish_add_path $GOPATH/bin
fish_add_path $PHOME/abin
fish_add_path $PHOME/.clib/bin
fish_add_path $PHOME/.bun/bin
fish_add_path $PHOME/.npm-global/bin/
fish_add_path $PHOME/.local/bin
fish_add_path $PHOME/.rbenv/bin
fish_add_path $PHOME/.local/nvim/mason/bin
fish_add_path $PHOME/.deno/bin
fish_add_path "$PNPM_HOME/$PATH"
fish_add_path /opt/bin

# set -g fish_function_path $fish_function_path $fisher_path/functions
# set --append fish_complete_path /opt/homebrew/completions/fish/
# set --append fish_complete_path /opt/homebrew/share/fish/vendor_completions.d/

set -x VCPKG_ROOT "$PHOME/.local/vcpkg"
set -gx PNPM_HOME /me/Library/pnpm

source $PHOME/.venv/bin/activate.fish

function fish_command_not_found

    if string match -q --regex '^\$\w+' -- "$NEXT_CMD"
        set cmd "set -S $(string replace '$' '' -- "$NEXT_CMD")"
        eval $cmd
        set -S >/tmp/fifo
        return 1
    end
    __fish_default_command_not_found_handler $argv
end
if status is-interactive
    function prexxxx --on-event fish_preexec
        set -g NEXT_CMD "$argv"
    end

    function postxxxxx --on-event fish_postexec
        set -g PREV_CMD $NEXT_CMD
    end

    function onDirChange --on-variable PWD
    end
end
