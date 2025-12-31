# set -gx base16_fish_shell_disable_prompt_colors TRUE
#
if [ "$ANTIGRAVITY_AGENT" = 1 ]
    exec zsh
end
if test -e /opt/homebrew/bin/brew
    eval (/opt/homebrew/bin/brew shellenv 2>&-)
else if test -e /usr/local/bin/brew
    eval (/usr/local/bin/brew shellenv 2>&-)
else if test -e /home/linuxbrew/.linuxbrew/bin/brew
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
end

set config_dir (path resolve "$(status dirname)/../")
set fish_dir $config_dir/fish
# set -S config_dir
fish_load_env "$config_dir/.env" -gx
fish_load_env ~/.env -gx
fish_load_env "$config_dir/.secrets" -g

fish_load_path "$config_dir/.paths"
fish_load_path ~/.paths

# if type -q batpipe
# batpipe | source
# end

# set -x HOMEBREW_AUTO_UPDATE_SECS "42e10"

set regphonefr '(0033|\+33|0)[6-7](\d\d[^\-\.\s]?){4}'
set regphone2 '(33|0033|\+33|0)\W?[67](\d{8}|(\.\d\d){4}|(\s\d\d){4})'
set regfr 'fr(ance|ench)?'
set regemail '[\w\d\-\_\.]+@\w+\.\w{2,3}'

set -gx --path fish_complete_path $__fish_data_dir/completions $config_dir/fish/completions $HOMEBREW_PREFIX/share/fish/vendor_completions.d
# if not contains -- $BREW_COMPLETE_PATH $fish_complete_path
# set --append fish_complete_path $BREW_COMPLETE_PATH
# end
complete -c abrew --wraps brew

if [ "$(uname -s)" != Darwin ]
    functions --erase ramdisk diskattach diskimage bundleids fbundleid xcodebuild ulfo md qlmanage container ass

    function trash
        rm -fr $argv
    end
end

function cools
    files={*.py,*.parquett} fset files
end

set --append noscope_cmds mods interpreter

# for fn in $noscope_cmds
#     set funcxx $fn
#     function $fn
#         fish_load_env -x ~/.config/.secrets
#         command $funcxx
#     end
# end

for ext in (string match -r 'fish_runtime_(.*)' -g (set -n))
    set runtime fish_runtime_$ext
    set runner $$runtime
    for script in $fish_dir/functions/*.$ext
        set fname (path basename $script --no-extension)
        alias $fname $script
    end
    for script in $fish_dir/functions/*/index.$ext
        set fname (path basename (path dirname $script))
        alias $fname $script
    end
end

complete --command bunx --wraps command
complete --command uvx --wraps command
complete --command duckdb@1.4 --wraps duckdb
complete -c bun -n "__fish_seen_subcommand_from run" --force-files
# complete -c bun -n --force-files
complete -c run --force-files
complete -c '*' -n __cursor_token_match_file_path --force-files

function preexec --on-event fish_preexec
    if test -d .
        return
    end
    if test -d (path resolve .)
        echo (set_color white --dim ) cd (path resolve .)
        cd (path resolve .)
    else
        echo (set_color red )'❌ DIR REMOVED'
    end
end

# Added by Antigravity
fish_add_path /Users/abel/.antigravity/antigravity/bin

# bun

# opencode
fish_add_path /me/.opencode/bin
