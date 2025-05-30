# Print an optspec for argparse to handle cmd's options that are independent of any subcommand.
function __fish_git_ignore_global_optspecs
	string join \n l/list u/update s/simple a/auto w/write f/force h/help V/version
end

function __fish_git_ignore_needs_command
	# Figure out if the current invocation already has a command.
	set -l cmd (commandline -opc)
	set -e cmd[1]
	argparse -s (__fish_git_ignore_global_optspecs) -- $cmd 2>/dev/null
	or return
	if set -q argv[1]
		# Also print the command, so this can be used to figure out what it is.
		echo $argv[1]
		return 1
	end
	return 0
end

function __fish_git_ignore_using_subcommand
	set -l cmd (__fish_git_ignore_needs_command)
	test -z "$cmd"
	and return 1
	contains -- $cmd[1] $argv
end

complete -c git-ignore -n "__fish_git_ignore_needs_command" -s l -l list -d 'List <templates> or all available templates'
complete -c git-ignore -n "__fish_git_ignore_needs_command" -s u -l update -d 'Update templates by fetching them from gitignore.io'
complete -c git-ignore -n "__fish_git_ignore_needs_command" -s s -l simple -d 'Ignore all user defined aliases and templates'
complete -c git-ignore -n "__fish_git_ignore_needs_command" -s a -l auto -d 'Autodetect templates based on the existing files'
complete -c git-ignore -n "__fish_git_ignore_needs_command" -s w -l write -d 'Write to `.gitignore` file instead of stdout'
complete -c git-ignore -n "__fish_git_ignore_needs_command" -s f -l force -d 'Forcefully overwrite existing `.gitignore` file'
complete -c git-ignore -n "__fish_git_ignore_needs_command" -s h -l help -d 'Print help'
complete -c git-ignore -n "__fish_git_ignore_needs_command" -s V -l version -d 'Print version'
complete -c git-ignore -n "__fish_git_ignore_needs_command" -a "alias" -d 'Manage local templates'
complete -c git-ignore -n "__fish_git_ignore_needs_command" -a "template" -d 'Manage local aliases'
complete -c git-ignore -n "__fish_git_ignore_needs_command" -a "init" -d 'Initialize user configuration'
complete -c git-ignore -n "__fish_git_ignore_needs_command" -a "completion" -d 'Generate shell completion'
complete -c git-ignore -n "__fish_git_ignore_needs_command" -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand alias; and not __fish_seen_subcommand_from list ls add remove rm help" -s h -l help -d 'Print help'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand alias; and not __fish_seen_subcommand_from list ls add remove rm help" -f -a "list" -d 'List available aliases'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand alias; and not __fish_seen_subcommand_from list ls add remove rm help" -f -a "ls" -d 'List available aliases'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand alias; and not __fish_seen_subcommand_from list ls add remove rm help" -f -a "add" -d 'Add a new alias'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand alias; and not __fish_seen_subcommand_from list ls add remove rm help" -f -a "remove" -d 'Remove an alias'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand alias; and not __fish_seen_subcommand_from list ls add remove rm help" -f -a "rm" -d 'Remove an alias'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand alias; and not __fish_seen_subcommand_from list ls add remove rm help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand alias; and __fish_seen_subcommand_from list" -s h -l help -d 'Print help'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand alias; and __fish_seen_subcommand_from ls" -s h -l help -d 'Print help'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand alias; and __fish_seen_subcommand_from add" -s h -l help -d 'Print help'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand alias; and __fish_seen_subcommand_from remove" -s h -l help -d 'Print help'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand alias; and __fish_seen_subcommand_from rm" -s h -l help -d 'Print help'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand alias; and __fish_seen_subcommand_from help" -f -a "list" -d 'List available aliases'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand alias; and __fish_seen_subcommand_from help" -f -a "add" -d 'Add a new alias'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand alias; and __fish_seen_subcommand_from help" -f -a "remove" -d 'Remove an alias'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand alias; and __fish_seen_subcommand_from help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand template; and not __fish_seen_subcommand_from list ls add remove rm help" -s h -l help -d 'Print help'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand template; and not __fish_seen_subcommand_from list ls add remove rm help" -f -a "list" -d 'List available templates'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand template; and not __fish_seen_subcommand_from list ls add remove rm help" -f -a "ls" -d 'List available templates'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand template; and not __fish_seen_subcommand_from list ls add remove rm help" -f -a "add" -d 'Add a new template'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand template; and not __fish_seen_subcommand_from list ls add remove rm help" -f -a "remove" -d 'Remove a template'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand template; and not __fish_seen_subcommand_from list ls add remove rm help" -f -a "rm" -d 'Remove a template'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand template; and not __fish_seen_subcommand_from list ls add remove rm help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand template; and __fish_seen_subcommand_from list" -s h -l help -d 'Print help'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand template; and __fish_seen_subcommand_from ls" -s h -l help -d 'Print help'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand template; and __fish_seen_subcommand_from add" -s h -l help -d 'Print help'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand template; and __fish_seen_subcommand_from remove" -s h -l help -d 'Print help'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand template; and __fish_seen_subcommand_from rm" -s h -l help -d 'Print help'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand template; and __fish_seen_subcommand_from help" -f -a "list" -d 'List available templates'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand template; and __fish_seen_subcommand_from help" -f -a "add" -d 'Add a new template'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand template; and __fish_seen_subcommand_from help" -f -a "remove" -d 'Remove a template'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand template; and __fish_seen_subcommand_from help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand init" -l force -d 'Forcefully create config, possibly overwrite existing'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand init" -l migrate -d 'Migrate from old config path to new'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand init" -s h -l help -d 'Print help'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand completion" -s h -l help -d 'Print help'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand help; and not __fish_seen_subcommand_from alias template init completion help" -f -a "alias" -d 'Manage local templates'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand help; and not __fish_seen_subcommand_from alias template init completion help" -f -a "template" -d 'Manage local aliases'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand help; and not __fish_seen_subcommand_from alias template init completion help" -f -a "init" -d 'Initialize user configuration'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand help; and not __fish_seen_subcommand_from alias template init completion help" -f -a "completion" -d 'Generate shell completion'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand help; and not __fish_seen_subcommand_from alias template init completion help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand help; and __fish_seen_subcommand_from alias" -f -a "list" -d 'List available aliases'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand help; and __fish_seen_subcommand_from alias" -f -a "add" -d 'Add a new alias'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand help; and __fish_seen_subcommand_from alias" -f -a "remove" -d 'Remove an alias'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand help; and __fish_seen_subcommand_from template" -f -a "list" -d 'List available templates'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand help; and __fish_seen_subcommand_from template" -f -a "add" -d 'Add a new template'
complete -c git-ignore -n "__fish_git_ignore_using_subcommand help; and __fish_seen_subcommand_from template" -f -a "remove" -d 'Remove a template'
