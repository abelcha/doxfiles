function _fzf_configure_bindings_help --description "Prints the help message for fzf_configure_bindings."
    echo "\
USAGE:
    fzf_configure_bindings [--COMMAND=[KEY_SEQUENCE]...]

DESCRIPTION
    fzf_configure_bindings installs key bindings for fzf.fish's commands and erases any bindings it
    previously installed. It installs bindings for both default and insert modes. fzf.fish executes
    it without options on fish startup to install the out-of-the-box key bindings.

    By default, commands are bound to a mnemonic key sequence, shown below. Each command's binding
    can be configured using a namesake corresponding option:
        COMMAND            |  DEFAULT KEY SEQUENCE         |  CORRESPONDING OPTION
        Search Directory   |  Ctrl+Alt+F (F for file)      |  --directory
        Search Git Log     |  Ctrl+Alt+L (L for log)       |  --git_log
        Search Git Status  |  Ctrl+Alt+S (S for status)    |  --git_status
        Search History     |  Ctrl+R     (R for reverse)   |  --history
        Search Processes   |  Ctrl+Alt+P (P for process)   |  --processes
        Search Variables   |  Ctrl+V     (V for variable)  |  --variables
    Override a command's binding by specifying its corresponding option with the desired key
    sequence. Disable a command's binding by specifying its corresponding option with no value.

    Because fzf_configure_bindings erases bindings it previously installed, it can be cleanly
    executed multiple times. Once the desired fzf_configure_bindings command has been found, add it
    to your config.fish in order to persist the customized bindings.

    In terms of validation, fzf_configure_bindings fails if passed unknown options. It expects an
    equals sign between an option's name and value. However, it does not validate key sequences.

    Pass -h or --help to print this help message and exit.

EXAMPLES
    Default bindings but bind Search Directory to Ctrl+F and Search Variables to Ctrl+Alt+V
        \$ fzf_configure_bindings --directory=\cf --variables=\e\cv
    Default bindings but disable Search History
        \$ fzf_configure_bindings --history=
    An agglomeration of different options
        \$ fzf_configure_bindings --git_status=\cg --history=\ch --variables= --processes=

SEE Also
    To learn more about fish key bindings, see bind(1) and fish_key_reader(1).
"
end
# helper function for _fzf_search_variables
function _fzf_extract_var_info --argument-names variable_name set_show_output --description "Extract and reformat lines pertaining to \$variable_name from \$set_show_output."
    # Extract only the lines about the variable, all of which begin with either
    # $variable_name: ...or... $variable_name[
    string match --regex "^\\\$$variable_name(?::|\[).*" <$set_show_output |

        # Strip the variable name prefix, including ": " for scope info lines
        string replace --regex "^\\\$$variable_name(?:: )?" '' |

        # Distill the lines of values, replacing...
        #   [1]: |value|
        # ...with...
        #   [1] value
        string replace --regex ": \|(.*)\|" ' $1'
end
# helper for _fzf_search_git_status
# arg should be a line from git status --short, e.g.
# MM functions/_fzf_preview_changed_file.fish
#  D README.md
# R  LICENSE -> "New License"
function _fzf_preview_changed_file --argument-names path_status --description "Show the git diff of the given file."
    # remove quotes because they'll be interpreted literally by git diff
    # no need to requote when referencing $path because fish does not perform word splitting
    # https://fishshell.com/docs/current/fish_for_bash_users.html
    set -f path (string unescape (string sub --start 4 $path_status))
    # first letter of short format shows index, second letter shows working tree
    # https://git-scm.com/docs/git-status/2.35.0#_short_format
    set -f index_status (string sub --length 1 $path_status)
    set -f working_tree_status (string sub --start 2 --length 1 $path_status)

    set -f diff_opts --color=always

    if test $index_status = '?'
        _fzf_report_diff_type Untracked
        _fzf_preview_file $path
    else if contains {$index_status}$working_tree_status DD AU UD UA DU AA UU
        # Unmerged statuses taken directly from git status help's short format table
        # Unmerged statuses are mutually exclusive with other statuses, so if we see
        # these, then safe to assume the path is unmerged
        _fzf_report_diff_type Unmerged
        git diff $diff_opts -- $path
    else
        if test $index_status != ' '
            _fzf_report_diff_type Staged

            # renames are only detected in the index, never working tree, so only need to test for it here
            # https://stackoverflow.com/questions/73954214
            if test $index_status = R
                # diff the post-rename path with the original path, otherwise the diff will show the entire file as being added
                set -f orig_and_new_path (string split --max 1 -- ' -> ' $path)
                git diff --staged $diff_opts -- $orig_and_new_path[1] $orig_and_new_path[2]
                # path currently has the form of "original -> current", so we need to correct it before it's used below
                set path $orig_and_new_path[2]
            else
                git diff --staged $diff_opts -- $path
            end
        end

        if test $working_tree_status != ' '
            _fzf_report_diff_type Unstaged
            git diff $diff_opts -- $path
        end
    end
end
# helper function for _fzf_search_directory and _fzf_search_git_status
function _fzf_preview_file --description "Print a preview for the given file based on its file type."
    # because there's no way to guarantee that _fzf_search_directory passes the path to _fzf_preview_file
    # as one argument, we collect all the arguments into one single variable and treat that as the path
    set -f file_path $argv

    if test -L "$file_path" # symlink
        # notify user and recurse on the target of the symlink, which can be any of these file types
        set -l target_path (realpath "$file_path")

        set_color yellow
        echo "'$file_path' is a symlink to '$target_path'."
        set_color normal

        _fzf_preview_file "$target_path"
    else if test -f "$file_path" # regular file
        if set --query fzf_preview_file_cmd
            # need to escape quotes to make sure eval receives file_path as a single arg
            eval "$fzf_preview_file_cmd '$file_path'"
        else
            bat --style=numbers --color=always "$file_path"
        end
    else if test -d "$file_path" # directory
        if set --query fzf_preview_dir_cmd
            # see above
            eval "$fzf_preview_dir_cmd '$file_path'"
        else
            # -A list hidden files as well, except for . and ..
            # -F helps classify files by appending symbols after the file name
            command ls -A -F "$file_path"
        end
    else if test -c "$file_path"
        _fzf_report_file_type "$file_path" "character device file"
    else if test -b "$file_path"
        _fzf_report_file_type "$file_path" "block device file"
    else if test -S "$file_path"
        _fzf_report_file_type "$file_path" socket
    else if test -p "$file_path"
        _fzf_report_file_type "$file_path" "named pipe"
    else
        echo "$file_path doesn't exist." >&2
    end
end
# helper for _fzf_preview_changed_file
# prints out something like
# ╭────────╮
# │ Staged │
# ╰────────╯
function _fzf_report_diff_type --argument-names diff_type --description "Print a distinct colored header meant to preface a git patch."
    # number of "-" to draw is the length of the string to box + 2 for padding
    set -f repeat_count (math 2 + (string length $diff_type))
    set -f line (string repeat --count $repeat_count ─)
    set -f top_border ╭$line╮
    set -f btm_border ╰$line╯

    set_color yellow
    echo $top_border
    echo "│ $diff_type │"
    echo $btm_border
    set_color normal
end
# helper function for _fzf_preview_file
function _fzf_report_file_type --argument-names file_path file_type --description "Explain the file type for a file."
    set_color red
    echo "Cannot preview '$file_path': it is a $file_type."
    set_color normal
end
function _fzf_search_directory --description "Search the current directory. Replace the current token with the selected file paths."
    # Directly use fd binary to avoid output buffering delay caused by a fd alias, if any.
    # Debian-based distros install fd as fdfind and the fd package is something else, so
    # check for fdfind first. Fall back to "fd" for a clear error message.
    set -f fd_cmd (command -v fdfind || command -v fd  || echo "fd")
    set -f --append fd_cmd --color=always $fzf_fd_opts

    set -f fzf_arguments --multi --ansi $fzf_directory_opts
    set -f token (commandline --current-token)
    # expand any variables or leading tilde (~) in the token
    set -f expanded_token (eval echo -- $token)
    # unescape token because it's already quoted so backslashes will mess up the path
    set -f unescaped_exp_token (string unescape -- $expanded_token)

    # If the current token is a directory and has a trailing slash,
    # then use it as fd's base directory.
    if string match --quiet -- "*/" $unescaped_exp_token && test -d "$unescaped_exp_token"
        set --append fd_cmd --base-directory=$unescaped_exp_token
        # use the directory name as fzf's prompt to indicate the search is limited to that directory
        set --prepend fzf_arguments --prompt="Directory $unescaped_exp_token> " --preview="_fzf_preview_file $expanded_token{}"
        set -f file_paths_selected $unescaped_exp_token($fd_cmd 2>/dev/null | _fzf_wrapper $fzf_arguments)
    else
        set --prepend fzf_arguments --prompt="Directory> " --query="$unescaped_exp_token" --preview='_fzf_preview_file {}'
        set -f file_paths_selected ($fd_cmd 2>/dev/null | _fzf_wrapper $fzf_arguments)
    end


    if test $status -eq 0
        commandline --current-token --replace -- (string escape -- $file_paths_selected | string join ' ')
    end

    commandline --function repaint
end
function _fzf_search_git_log --description "Search the output of git log and preview commits. Replace the current token with the selected commit hash."
    if not git rev-parse --git-dir >/dev/null 2>&1
        echo '_fzf_search_git_log: Not in a git repository.' >&2
    else
        if not set --query fzf_git_log_format
            # %h gives you the abbreviated commit hash, which is useful for saving screen space, but we will have to expand it later below
            set -f fzf_git_log_format '%C(bold blue)%h%C(reset) - %C(cyan)%ad%C(reset) %C(yellow)%d%C(reset) %C(normal)%s%C(reset)  %C(dim normal)[%an]%C(reset)'
        end

        set -f preview_cmd 'git show --color=always --stat --patch {1}'
        if set --query fzf_diff_highlighter
            set preview_cmd "$preview_cmd | $fzf_diff_highlighter"
        end

        set -f selected_log_lines (
            git log --no-show-signature --color=always --format=format:$fzf_git_log_format --date=short | \
            _fzf_wrapper --ansi \
                --multi \
                --scheme=history \
                --prompt="Git Log> " \
                --preview=$preview_cmd \
                --query=(commandline --current-token) \
                $fzf_git_log_opts
        )
        if test $status -eq 0
            for line in $selected_log_lines
                set -f abbreviated_commit_hash (string split --field 1 " " $line)
                set -f full_commit_hash (git rev-parse $abbreviated_commit_hash)
                set -f --append commit_hashes $full_commit_hash
            end
            commandline --current-token --replace (string join ' ' $commit_hashes)
        end
    end

    commandline --function repaint
end
function _fzf_search_git_status --description 'Search the output of git status. Replace the current token with the selected file paths.'
    if not git rev-parse --git-dir >/dev/null 2>&1
        echo '_fzf_search_git_status: Not in a git repository.' >&2
    else
        set -f preview_cmd '_fzf_preview_changed_file {}'
        if set --query fzf_diff_highlighter
            set preview_cmd "$preview_cmd | $fzf_diff_highlighter"
        end
        
        set -f selected_paths (
                        # Pass configuration color.status=always to force status to use colors even though output is sent to a pipe
                        git -c color.status=always status --short . |
                            _fzf_wrapper --ansi \
                                    --multi \
                                    --prompt="Git Status> " \
                                    --query=(commandline --current-token) \
                                    --preview=$preview_cmd \
                                    --nth="2.." \
                                    $fzf_git_status_opts
                    )
        if test $status -eq 0
            # git status --short automatically escapes the paths of most files for us so not going to bother trying to handle
            # the few edges cases of weird file names that should be extremely rare (e.g. "this;needs;escaping")
            set -f cleaned_paths
            
            for path in $selected_paths
                if test (string sub --length 1 $path) = R
                    # path has been renamed and looks like "R LICENSE -> LICENSE.md"
                    # extract the path to use from after the arrow
                    set --append cleaned_paths (string split -- "-> " $path)[-1]
                else
                    set --append cleaned_paths (string sub --start=4 $path)
                end
            end
            
            commandline --current-token --replace -- "git add $(string join ' ' $cleaned_paths)"
        end
    end
    
    commandline --function repaint
end
function _fzf_search_history --description "Search command history. Replace the command line with the selected command."
    # history merge incorporates history changes from other fish sessions
    # it errors out if called in private mode
    if test -z "$fish_private_mode"
        builtin history merge
    end

    if not set --query fzf_history_time_format
        # Reference https://devhints.io/strftime to understand strftime format symbols
        set -f fzf_history_time_format "%m-%d %H:%M:%S"
    end

    # Delinate time from command in history entries using the vertical box drawing char (U+2502).
    # Then, to get raw command from history entries, delete everything up to it. The ? on regex is
    # necessary to make regex non-greedy so it won't match into commands containing the char.
    set -f time_prefix_regex '^.*? │ '
    # Delinate commands throughout pipeline using null rather than newlines because commands can be multi-line
    set -f commands_selected (
        builtin history --null --show-time="$fzf_history_time_format │ " |
        _fzf_wrapper --read0 \
            --print0 \
            --multi \
            --scheme=history \
            --prompt="History> " \
            --query=(commandline) \
            --preview="string replace --regex '$time_prefix_regex' '' -- {} | fish_indent --ansi" \
            --preview-window="bottom:3:wrap" \
            $fzf_history_opts |
        string split0 |
        # remove timestamps from commands selected
        string replace --regex $time_prefix_regex ''
    )

    if test $status -eq 0
        commandline --replace -- $commands_selected
    end

    commandline --function repaint
end
function _fzf_search_processes --description "Search all running processes. Replace the current token with the pid of the selected process."
    # Directly use ps command because it is often aliased to a different command entirely
    # or with options that dirty the search results and preview output
    set -f ps_cmd (command -v ps || echo "ps")
    # use all caps to be consistent with ps default format
    # snake_case because ps doesn't seem to allow spaces in the field names
    set -f ps_preview_fmt (string join ',' 'pid' 'ppid=PARENT' 'user' '%cpu' 'rss=RSS_IN_KB' 'start=START_TIME' 'command')
    set -f processes_selected (
        $ps_cmd -A -opid,command | \
        _fzf_wrapper --multi \
                    --prompt="Processes> " \
                    --query (commandline --current-token) \
                    --ansi \
                    # first line outputted by ps is a header, so we need to mark it as so
                    --header-lines=1 \
                    # ps uses exit code 1 if the process was not found, in which case show an message explaining so
                    --preview="$ps_cmd -o '$ps_preview_fmt' -p {1} || echo 'Cannot preview {1} because it exited.'" \
                    --preview-window="bottom:4:wrap" \
                    $fzf_processes_opts
    )

    if test $status -eq 0
        for process in $processes_selected
            set -f --append pids_selected (string split --no-empty --field=1 -- " " $process)
        end

        # string join to replace the newlines outputted by string split with spaces
        commandline --current-token --replace -- (string join ' ' $pids_selected)
    end

    commandline --function repaint
end
# This function expects the following two arguments:
# argument 1 = output of (set --show | psub), i.e. a file with the scope info and values of all variables
# argument 2 = output of (set --names | psub), i.e. a file with all variable names
function _fzf_search_variables --argument-names set_show_output set_names_output --description "Search and preview shell variables. Replace the current token with the selected variable."
    if test -z "$set_names_output"
        printf '%s\n' '_fzf_search_variables requires 2 arguments.' >&2

        commandline --function repaint
        return 22 # 22 means invalid argument in POSIX
    end

    # Exclude the history variable from being piped into fzf because
    # 1. it's not included in $set_names_output
    # 2. it tends to be a very large value => increases computation time
    # 3._fzf_search_history is a much better way to examine history anyway
    set -f all_variable_names (string match --invert history <$set_names_output)

    set -f current_token (commandline --current-token)
    # Use the current token to pre-populate fzf's query. If the current token begins
    # with a $, remove it from the query so that it will better match the variable names
    set -f cleaned_curr_token (string replace -- '$' '' $current_token)

    set -f variable_names_selected (
        printf '%s\n' $all_variable_names |
        _fzf_wrapper --preview "_fzf_extract_var_info {} $set_show_output" \
            --prompt="Variables> " \
            --preview-window="wrap" \
            --multi \
            --query=$cleaned_curr_token \
            $fzf_variables_opts
    )

    if test $status -eq 0
        # If the current token begins with a $, do not overwrite the $ when
        # replacing the current token with the selected variable.
        # Uses brace expansion to prepend $ to each variable name.
        commandline --current-token --replace (
            if string match --quiet -- '$*' $current_token
                string join " " \${$variable_names_selected}
            else
                string join " " $variable_names_selected
            end
        )
    end

    commandline --function repaint
end
function _fzf_wrapper --description "Prepares some environment variables before executing fzf."
    # Make sure fzf uses fish to execute preview commands, some of which
    # are autoloaded fish functions so don't exist in other shells.
    # Use --function so that it doesn't clobber SHELL outside this function.
    set -f --export SHELL (command --search fish)

    # If neither FZF_DEFAULT_OPTS nor FZF_DEFAULT_OPTS_FILE are set, then set some sane defaults.
    # See https://github.com/junegunn/fzf#environment-variables
    set --query FZF_DEFAULT_OPTS FZF_DEFAULT_OPTS_FILE
    if test $status -eq 2
        # cycle allows jumping between the first and last results, making scrolling faster
        # layout=reverse lists results top to bottom, mimicking the familiar layouts of git log, history, and env
        # border shows where the fzf window begins and ends
        # height=90% leaves space to see the current command and some scrollback, maintaining context of work
        # preview-window=wrap wraps long lines in the preview window, making reading easier
        # marker=* makes the multi-select marker more distinguishable from the pointer (since both default to >)
        set --export FZF_DEFAULT_OPTS '--cycle --layout=reverse --border --height=90% --preview-window=wrap --marker="*"'
    end

    fzf $argv
end
# fzf.fish is only meant to be used in interactive mode. If not in interactive mode and not in CI, skip the config to speed up shell startup
if not status is-interactive && test "$CI" != true
    exit
end

# Because of scoping rules, to capture the shell variables exactly as they are, we must read
# them before even executing _fzf_search_variables. We use psub to store the
# variables' info in temporary files and pass in the filenames as arguments.
# This variable is global so that it can be referenced by fzf_configure_bindings and in tests
set --global _fzf_search_vars_command '_fzf_search_variables (set --show | psub) (set --names | psub)'

# Install the default bindings, which are mnemonic and minimally conflict with fish's preset bindings
# fzf_configure_bindings

# Doesn't erase autoloaded _fzf_* functions because they are not easily accessible once key bindings are erased
function _fzf_uninstall --on-event fzf_uninstall
    _fzf_uninstall_bindings

    set --erase _fzf_search_vars_command
    functions --erase _fzf_uninstall _fzf_migration_message _fzf_uninstall_bindings fzf_configure_bindings
    complete --erase fzf_configure_bindings

    set_color cyan
    echo "fzf.fish uninstalled."
    echo "You may need to manually remove fzf_configure_bindings from your config.fish if you were using custom key bindings."
    set_color normal
end

