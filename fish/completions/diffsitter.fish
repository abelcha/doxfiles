# Print an optspec for argparse to handle cmd's options that are independent of any subcommand.
function __fish_diffsitter_global_optspecs
	string join \n d/debug t/file-type= c/config= color= n/no-config r/renderer= h/help V/version
end

function __fish_diffsitter_needs_command
	# Figure out if the current invocation already has a command.
	set -l cmd (commandline -opc)
	set -e cmd[1]
	argparse -s (__fish_diffsitter_global_optspecs) -- $cmd 2>/dev/null
	or return
	if set -q argv[1]
		# Also print the command, so this can be used to figure out what it is.
		echo $argv[1]
		return 1
	end
	return 0
end

function __fish_diffsitter_using_subcommand
	set -l cmd (__fish_diffsitter_needs_command)
	test -z "$cmd"
	and return 1
	contains -- $cmd[1] $argv
end

complete -c diffsitter -n "__fish_diffsitter_needs_command" -s t -l file-type -d 'Manually set the file type for the given files' -r
complete -c diffsitter -n "__fish_diffsitter_needs_command" -s c -l config -d 'Use the config provided at the given path' -r -F
complete -c diffsitter -n "__fish_diffsitter_needs_command" -l color -d 'Set the color output policy. Valid values are: "auto", "on", "off"' -r
complete -c diffsitter -n "__fish_diffsitter_needs_command" -s r -l renderer -d 'Specify which renderer tag to use' -r
complete -c diffsitter -n "__fish_diffsitter_needs_command" -s d -l debug -d 'Print debug output'
complete -c diffsitter -n "__fish_diffsitter_needs_command" -s n -l no-config -d 'Ignore any config files and use the default config'
complete -c diffsitter -n "__fish_diffsitter_needs_command" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c diffsitter -n "__fish_diffsitter_needs_command" -s V -l version -d 'Print version'
complete -c diffsitter -n "__fish_diffsitter_needs_command" -a "list" -d 'List the languages that this program was compiled for'
complete -c diffsitter -n "__fish_diffsitter_needs_command" -a "dump-default-config" -d 'Dump the default config to stdout'
complete -c diffsitter -n "__fish_diffsitter_needs_command" -a "gen-completion" -d 'Generate shell completion scripts for diffsitter'
complete -c diffsitter -n "__fish_diffsitter_needs_command" -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c diffsitter -n "__fish_diffsitter_using_subcommand list" -s h -l help -d 'Print help'
complete -c diffsitter -n "__fish_diffsitter_using_subcommand dump-default-config" -s h -l help -d 'Print help'
complete -c diffsitter -n "__fish_diffsitter_using_subcommand gen-completion" -s h -l help -d 'Print help (see more with \'--help\')'
complete -c diffsitter -n "__fish_diffsitter_using_subcommand help; and not __fish_seen_subcommand_from list dump-default-config gen-completion help" -f -a "list" -d 'List the languages that this program was compiled for'
complete -c diffsitter -n "__fish_diffsitter_using_subcommand help; and not __fish_seen_subcommand_from list dump-default-config gen-completion help" -f -a "dump-default-config" -d 'Dump the default config to stdout'
complete -c diffsitter -n "__fish_diffsitter_using_subcommand help; and not __fish_seen_subcommand_from list dump-default-config gen-completion help" -f -a "gen-completion" -d 'Generate shell completion scripts for diffsitter'
complete -c diffsitter -n "__fish_diffsitter_using_subcommand help; and not __fish_seen_subcommand_from list dump-default-config gen-completion help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
