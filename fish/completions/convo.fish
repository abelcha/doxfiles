function __fish_convo_global_optspecs
    string join \n h/help a/all here t/tool= n/limit= json cwd=
end

function __fish_convo_needs_command
    set -l cmd (commandline -xpc)
    set -e cmd[1]
    argparse -s (__fish_convo_global_optspecs) -- $cmd 2>/dev/null
    or return
    if set -q argv[1]
        echo $argv[1]
        return 1
    end
    return 0
end

function __fish_convo_using_subcommand
    set -l cmd (__fish_convo_needs_command)
    test -z "$cmd"; and return 1
    contains -- $cmd[1] $argv
end

complete -c convo -e
complete -c convo -f

complete -c convo -n __fish_convo_needs_command -a list -d 'Print merged sessions'
complete -c convo -n __fish_convo_needs_command -a preview -d 'Show conversation transcript'
complete -c convo -n __fish_convo_needs_command -a resume -d 'Open session in its CLI'
complete -c convo -n __fish_convo_needs_command -a print -d 'Print resume command'

complete -c convo -s a -l all -d 'Every directory'
complete -c convo -l here -d 'Exact cwd only'
complete -c convo -s t -l tool -x -a "grok claude codex pi" -d 'Filter by tool'
complete -c convo -s n -l limit -x -d 'Max sessions'
complete -c convo -l json -d 'List as JSON'
complete -c convo -l cwd -x -a "(__fish_complete_directories)" -d 'Project directory'
complete -c convo -s h -l help -d 'Print help'
