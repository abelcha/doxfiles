function __gt_command_completions
    set -lx SHELL (type -p fish)
    set -l command (commandline -opc)
    # uncomment to include options, e.g. -q, --help
    # $command --get-yargs-completions
    # uncomment to exclude options (default)
    $command --get-yargs-completions | string replace -r '\-.*' ''
end
