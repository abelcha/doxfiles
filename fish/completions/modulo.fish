# complete -c modulo -f
function __fish_use_whatever
    set -l cmd (commandline -poc)
    # xh console.log/toto data=="$cmd" > /dev/null 2>&1
    set -e cmd[1]
    if test -z "$cmd"
        return 1
    end
    return 0
end

function __modulo_complete 
    modulo --complete (commandline -poc)
    # set -lx SHELL (type -p fish)
    # set -l command (commandline -poc)
    # uncomment to include options, e.g. -q, --help
    # $command --get-yargs-completions
    # uncomment to exclude options (default)
    # $command --get-yargs-completions | string replace -r '\-.*' ''
end

# complete -c modulo -a "(modulo --complete)"
complete -c modulo -n '__fish_use_whatever' -f -a '(__modulo_complete )'

