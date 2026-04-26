function __fish_seen_subcommand_from
    set -l regex (string escape --style=regex -- (commandline -pxc)[2..] | string join '|')
    string match -rq -- "^$regex"'$' $argv
end
