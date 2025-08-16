# set -gx base16_fish_shell_disable_prompt_colors TRUE

string replace --regex '^(\w+)=(.+)$' 'set -gx $1 "$2"' <~/.env | source

# set -gx LESSOPEN "|/me/abin/lesspipe.sh %s"

# set -gx LESS_ADVANCED_PREPROCESSOR 1
# if type -q bat
# set BAT_PAGER '/opt/local/bin/less --buffers=10000000 -j.5 -I -R --search-options W'
set -gx PAGER less
set -gx MANPAGER bat

set -gx BLOCKSIZE 1024

set -gx LESS "-j.5 -I --search-options=W"
# set -gx LESSOPEN "|/opt/a/abin/lesspipe.sh %s"
# set -gx LESSCOLORIZER bat
if type -q batpipe
    batpipe | source
end
# end

set -gx BKT_TTL 10m

set -x FZF_DEFAULT_OPTS --exact
set -x SKIM_DEFAULT_OPTIONS "--algo clangd"

set -gx SDKROOT /Applications/Xcode-beta.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk

# set -x HOMEBREW_AUTO_UPDATE_SECS "42e10"
set -x HOMEBREW_NO_ENV_HINTS true
set -x HOMEBREW_NO_AUTO_UPDATE true
set -x CGO_CPPFLAGS -w
set -x EZA_COLORS "da=0"

set -x DENO_REPL_HISTORY ON
set -x DENO_FUTURE ON
set -x DENO_DEFAULT_OPTS "--allow-all --unstable-*"

set -gx LDFLAGS -L/opt/homebrew/lib
set -gx CPPFLAGS -I/opt/homebrew/include
set -gx CFLAGS -I/opt/homebrew/include

set -x EDITOR hx

set MAP_MAX_ARGS 1
set regphonefr '(0033|\+33|0)[6-7](\d\d[^\-\.\s]?){4}'
set regphone2 '(33|0033|\+33|0)\W?[67](\d{8}|(\.\d\d){4}|(\s\d\d){4})'
set regfr 'fr(ance|ench)?'
set regemail '[\w\d\-\_\.]+@\w+\.\w{2,3}'
fish_add_path /Applications/Trae.app/Contents/Resources/app/bin

if status is-interactive
    function prexxxx --on-event fish_preexec
        set -g NEXT_CMD "$argv"
    end

    function postxxxxx --on-event fish_postexec
        set -g PREV_CMD $NEXT_CMD
    end
end

# Added by LM Studio CLI (lms)
fish_add_path /me/.lmstudio/bin
fish_add_path /Applications/Xcode-beta.app/Contents/Developer/usr/bin/

# If you need to have ruby@3.3 first in your PATH, run:
fish_add_path /opt/homebrew/opt/ruby@3.3/bin

# For compilers to find ruby@3.3 you may need to set:
set -gx LDFLAGS "-L/opt/homebrew/opt/ruby@3.3/lib"
set -gx CPPFLAGS "-I/opt/homebrew/opt/ruby@3.3/include"

# For pkg-config to find ruby@3.3 you may need to set:
set -gx PKG_CONFIG_PATH "/opt/homebrew/opt/ruby@3.3/lib/pkgconfig"

# source (fnm env |psub -s fish)

if [ "$(uname -s)" != Darwin ]

    functions --erase ramdisk diskattach diskimage bundleids fbundleid xcodebuild ulfo md qlmanage container ass
end
