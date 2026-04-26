complete -c "bak" -s "v" -l "verbose" -d "use up to 3 times to increase verbosity ('-vvv')" # global
complete -c "bak" -s "q" -l "quiet" -d "suppress confirmation prompts (will NOT suppress verbosity or errors)" # global
complete -c "bak" -s "Q" -l "noquiet" -d "overrides 'quiet' setting in bak config" # global
complete -c "bak" -s "h" -l "help" -d "Print help" # global
complete -c "bak" -s "V" -l "version" -d "Print version" # global
complete -f -c "bak" -n "__fish_use_subcommand" -a "off" -d "Use when finished to delete .bakfiles" # sub
complete -f -c "bak" -n "__fish_use_subcommand" -a "down" -d "Restores a parent file from a bakfile (.bakfiles deleted without '--keep')" # sub
complete -f -c "bak" -n "__fish_use_subcommand" -a "diff" -d "diff a file against its .bakfile" # sub
complete -f -c "bak" -n "__fish_use_subcommand" -a "list" -d "List all .bakfiles, or a particular parent file's" # sub
complete -f -c "bak" -n "__fish_use_subcommand" -a "up" -d "Replace a bakfile with a fresh copy of the parent file" # sub
complete -f -c "bak" -n "__fish_use_subcommand" -a "open" -d "View or edit a .bakfile in an external program (editing not recommended, but it's your data to mangle) [aliases: show]" # sub
complete -f -c "bak" -n "__fish_use_subcommand" -a "where" -d "Outputs the real path of a .bakfile. Useful for piping, and not much else." # sub
complete -f -c "bak" -n "__fish_use_subcommand" -a "del" -d "Delete a single .bakfile by number (see `bak list FILENAME`)" # sub
complete -f -c "bak" -n "__fish_use_subcommand" -a "config" -d "Print bak's current configuration to stdout" # sub
complete -f -c "bak" -n "__fish_use_subcommand" -a "help" -d "Print this message or the help of the given subcommand(s)" # sub
complete -c "bak" -n "__fish_seen_subcommand_from 'off'" -s "v" -l "verbose" -d "use up to 3 times to increase verbosity ('-vvv')" # subcommands flags
complete -c "bak" -n "__fish_seen_subcommand_from 'off'" -s "q" -l "quiet" -d "suppress confirmation prompts (will NOT suppress verbosity or errors)" # subcommands flags
complete -c "bak" -n "__fish_seen_subcommand_from 'off'" -s "Q" -l "noquiet" -d "overrides 'quiet' setting in bak config" # subcommands flags
complete -c "bak" -n "__fish_seen_subcommand_from 'down'" -s "v" -l "verbose" -d "use up to 3 times to increase verbosity ('-vvv')" # subcommands flags
complete -c "bak" -n "__fish_seen_subcommand_from 'down'" -s "q" -l "quiet" -d "suppress confirmation prompts (will NOT suppress verbosity or errors)" # subcommands flags
complete -c "bak" -n "__fish_seen_subcommand_from 'down'" -s "Q" -l "noquiet" -d "overrides 'quiet' setting in bak config" # subcommands flags
complete -c "bak" -n "__fish_seen_subcommand_from 'diff'" -s "v" -l "verbose" -d "use up to 3 times to increase verbosity ('-vvv')" # subcommands flags
complete -c "bak" -n "__fish_seen_subcommand_from 'diff'" -s "q" -l "quiet" -d "suppress confirmation prompts (will NOT suppress verbosity or errors)" # subcommands flags
complete -c "bak" -n "__fish_seen_subcommand_from 'diff'" -s "Q" -l "noquiet" -d "overrides 'quiet' setting in bak config" # subcommands flags
complete -c "bak" -n "__fish_seen_subcommand_from 'list'" -s "v" -l "verbose" -d "use up to 3 times to increase verbosity ('-vvv')" # subcommands flags
complete -c "bak" -n "__fish_seen_subcommand_from 'list'" -s "q" -l "quiet" -d "suppress confirmation prompts (will NOT suppress verbosity or errors)" # subcommands flags
complete -c "bak" -n "__fish_seen_subcommand_from 'list'" -s "Q" -l "noquiet" -d "overrides 'quiet' setting in bak config" # subcommands flags
complete -c "bak" -n "__fish_seen_subcommand_from 'up'" -s "v" -l "verbose" -d "use up to 3 times to increase verbosity ('-vvv')" # subcommands flags
complete -c "bak" -n "__fish_seen_subcommand_from 'up'" -s "q" -l "quiet" -d "suppress confirmation prompts (will NOT suppress verbosity or errors)" # subcommands flags
complete -c "bak" -n "__fish_seen_subcommand_from 'up'" -s "Q" -l "noquiet" -d "overrides 'quiet' setting in bak config" # subcommands flags
complete -c "bak" -n "__fish_seen_subcommand_from 'open'" -s "v" -l "verbose" -d "use up to 3 times to increase verbosity ('-vvv')" # subcommands flags
complete -c "bak" -n "__fish_seen_subcommand_from 'open'" -s "q" -l "quiet" -d "suppress confirmation prompts (will NOT suppress verbosity or errors)" # subcommands flags
complete -c "bak" -n "__fish_seen_subcommand_from 'open'" -s "Q" -l "noquiet" -d "overrides 'quiet' setting in bak config" # subcommands flags
complete -c "bak" -n "__fish_seen_subcommand_from 'where'" -s "v" -l "verbose" -d "use up to 3 times to increase verbosity ('-vvv')" # subcommands flags
complete -c "bak" -n "__fish_seen_subcommand_from 'where'" -s "q" -l "quiet" -d "suppress confirmation prompts (will NOT suppress verbosity or errors)" # subcommands flags
complete -c "bak" -n "__fish_seen_subcommand_from 'where'" -s "Q" -l "noquiet" -d "overrides 'quiet' setting in bak config" # subcommands flags
complete -c "bak" -n "__fish_seen_subcommand_from 'del'" -s "v" -l "verbose" -d "use up to 3 times to increase verbosity ('-vvv')" # subcommands flags
complete -c "bak" -n "__fish_seen_subcommand_from 'del'" -s "q" -l "quiet" -d "suppress confirmation prompts (will NOT suppress verbosity or errors)" # subcommands flags
complete -c "bak" -n "__fish_seen_subcommand_from 'del'" -s "Q" -l "noquiet" -d "overrides 'quiet' setting in bak config" # subcommands flags
complete -c "bak" -n "__fish_seen_subcommand_from 'config'" -s "v" -l "verbose" -d "use up to 3 times to increase verbosity ('-vvv')" # subcommands flags
complete -c "bak" -n "__fish_seen_subcommand_from 'config'" -s "q" -l "quiet" -d "suppress confirmation prompts (will NOT suppress verbosity or errors)" # subcommands flags
complete -c "bak" -n "__fish_seen_subcommand_from 'config'" -s "Q" -l "noquiet" -d "overrides 'quiet' setting in bak config" # subcommands flags
complete -c "bak" -n "__fish_seen_subcommand_from 'help'" -s "v" -l "verbose" -d "use up to 3 times to increase verbosity ('-vvv')" # subcommands flags
complete -c "bak" -n "__fish_seen_subcommand_from 'help'" -s "q" -l "quiet" -d "suppress confirmation prompts (will NOT suppress verbosity or errors)" # subcommands flags
complete -c "bak" -n "__fish_seen_subcommand_from 'help'" -s "Q" -l "noquiet" -d "overrides 'quiet' setting in bak config" # subcommands flags
complete -c "bak" -n "__fish_seen_subcommand_from 'off'" -s "v" -l "verbose" -d "use up to 3 times to increase verbosity ('-vvv')" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'off'" -s "q" -l "quiet" -d "suppress confirmation prompts (will NOT suppress verbosity or errors)" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'off'" -s "Q" -l "noquiet" -d "overrides 'quiet' setting in bak config" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'off'" -s "h" -l "help" -d "Print help" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'off'" -s "V" -l "version" -d "Print version" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'down'" -s "c" -l "color" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'down'" -s "C" -l "nocolor" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'down'" -s "d" -l "diff" -d "Indicate changed bakfiles (may be slow if large .bakfiles are present)" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'down'" -s "D" -l "nodiff" -d "Overrides 'always diff' setting in bak config" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'down'" -s "v" -l "verbose" -d "use up to 3 times to increase verbosity ('-vvv')" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'down'" -s "q" -l "quiet" -d "suppress confirmation prompts (will NOT suppress verbosity or errors)" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'down'" -s "Q" -l "noquiet" -d "overrides 'quiet' setting in bak config" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'down'" -s "h" -l "help" -d "Print help" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'down'" -s "V" -l "version" -d "Print version" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'diff'" -s "c" -l "color" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'diff'" -s "C" -l "nocolor" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'diff'" -s "d" -l "diff" -d "Indicate changed bakfiles (may be slow if large .bakfiles are present)" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'diff'" -s "D" -l "nodiff" -d "Overrides 'always diff' setting in bak config" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'diff'" -s "v" -l "verbose" -d "use up to 3 times to increase verbosity ('-vvv')" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'diff'" -s "q" -l "quiet" -d "suppress confirmation prompts (will NOT suppress verbosity or errors)" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'diff'" -s "Q" -l "noquiet" -d "overrides 'quiet' setting in bak config" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'diff'" -s "h" -l "help" -d "Print help" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'diff'" -s "V" -l "version" -d "Print version" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'list'" -s "c" -l "color" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'list'" -s "C" -l "nocolor" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'list'" -s "d" -l "diff" -d "Indicate changed bakfiles (may be slow if large .bakfiles are present)" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'list'" -s "D" -l "nodiff" -d "Overrides 'always diff' setting in bak config" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'list'" -s "v" -l "verbose" -d "use up to 3 times to increase verbosity ('-vvv')" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'list'" -s "q" -l "quiet" -d "suppress confirmation prompts (will NOT suppress verbosity or errors)" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'list'" -s "Q" -l "noquiet" -d "overrides 'quiet' setting in bak config" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'list'" -s "h" -l "help" -d "Print help" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'list'" -s "V" -l "version" -d "Print version" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'up'" -s "c" -l "color" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'up'" -s "C" -l "nocolor" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'up'" -s "d" -l "diff" -d "Indicate changed bakfiles (may be slow if large .bakfiles are present)" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'up'" -s "D" -l "nodiff" -d "Overrides 'always diff' setting in bak config" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'up'" -s "v" -l "verbose" -d "use up to 3 times to increase verbosity ('-vvv')" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'up'" -s "q" -l "quiet" -d "suppress confirmation prompts (will NOT suppress verbosity or errors)" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'up'" -s "Q" -l "noquiet" -d "overrides 'quiet' setting in bak config" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'up'" -s "h" -l "help" -d "Print help" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'up'" -s "V" -l "version" -d "Print version" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'open'" -s "c" -l "color" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'open'" -s "C" -l "nocolor" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'open'" -s "d" -l "diff" -d "Indicate changed bakfiles (may be slow if large .bakfiles are present)" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'open'" -s "D" -l "nodiff" -d "Overrides 'always diff' setting in bak config" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'open'" -l "in" -d "program to open .bakfile with (bakfile will be passed as arg) default: ＄PAGER or from config" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'open'" -s "v" -l "verbose" -d "use up to 3 times to increase verbosity ('-vvv')" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'open'" -s "q" -l "quiet" -d "suppress confirmation prompts (will NOT suppress verbosity or errors)" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'open'" -s "Q" -l "noquiet" -d "overrides 'quiet' setting in bak config" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'open'" -s "h" -l "help" -d "Print help" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'open'" -s "V" -l "version" -d "Print version" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'where'" -s "c" -l "color" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'where'" -s "C" -l "nocolor" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'where'" -s "d" -l "diff" -d "Indicate changed bakfiles (may be slow if large .bakfiles are present)" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'where'" -s "D" -l "nodiff" -d "Overrides 'always diff' setting in bak config" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'where'" -s "v" -l "verbose" -d "use up to 3 times to increase verbosity" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'where'" -s "q" -l "quiet" -d "suppress confirmation prompts (will NOT suppress verbosity or errors)" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'where'" -s "Q" -l "noquiet" -d "overrides 'quiet' setting in bak config" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'where'" -s "h" -l "help" -d "Print help" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'where'" -s "V" -l "version" -d "Print version" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'del'" -s "c" -l "color" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'del'" -s "C" -l "nocolor" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'del'" -s "d" -l "diff" -d "Indicate changed bakfiles (may be slow if large .bakfiles are present)" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'del'" -s "D" -l "nodiff" -d "Overrides 'always diff' setting in bak config" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'del'" -s "v" -l "verbose" -d "use up to 3 times to increase verbosity ('-vvv')" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'del'" -s "q" -l "quiet" -d "suppress confirmation prompts (will NOT suppress verbosity or errors)" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'del'" -s "Q" -l "noquiet" -d "overrides 'quiet' setting in bak config" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'del'" -s "h" -l "help" -d "Print help" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'del'" -s "V" -l "version" -d "Print version" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'config'" -s "v" -l "verbose" -d "use up to 3 times to increase verbosity ('-vvv')" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'config'" -s "q" -l "quiet" -d "suppress confirmation prompts (will NOT suppress verbosity or errors)" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'config'" -s "Q" -l "noquiet" -d "overrides 'quiet' setting in bak config" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'config'" -s "h" -l "help" -d "Print help" # global
complete -c "bak" -n "__fish_seen_subcommand_from 'config'" -s "V" -l "version" -d "Print version" # global