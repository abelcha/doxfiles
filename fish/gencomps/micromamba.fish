complete -c micromamba -n __fish_no_arguments -l version
complete -c micromamba -l rc-file -d 'TEXT ...          Paths to the configuration files to use'
complete -c micromamba -l no-rc -d 'Disable the use of configuration files'
complete -c micromamba -l no-env -d 'Disable the use of environment variables'
complete -c micromamba -l log-level -d 'ENUM:value in {critical->5,debug->1,error->4,info->2,off->6,trace->0,warning->3} OR {5,1,4,2,6,0,3}'
complete -c micromamba -l json -d 'Report all output as json'
complete -c micromamba -l offline -d 'Force use cached repodata'
complete -c micromamba -l dry-run -d 'Only display what would have been done'
complete -c micromamba -l download-only -d 'Only download and extract packages, do not link them into environment.'
complete -c micromamba -l experimental -d 'Enable experimental features'
complete -c micromamba -l relocate-prefix -d 'TEXT      Path to the relocation prefix'
complete -f -c micromamba -n __fish_use_subcommand -a env -d 'List environments'
complete -f -c micromamba -n __fish_use_subcommand -a activate -d 'Activate an environment'
complete -f -c micromamba -n __fish_use_subcommand -a run -d 'Run an executable in an environment'
complete -f -c micromamba -n __fish_use_subcommand -a ps -d 'Show, inspect or kill running processes'
complete -f -c micromamba -n __fish_use_subcommand -a auth -d 'Login or logout of a given host'
complete -f -c micromamba -n __fish_use_subcommand -a search -d 'Find packages in active environment or channels'
