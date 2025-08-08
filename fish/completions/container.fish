# gencomp: reading from `container  --help `
complete -c container -l debug -d 'Enable debug output [environment: CONTAINER_DEBUG]'
complete -c container -n __fish_no_arguments -l version -d 'Show the version.'
complete -c container -s h -l help -d 'Show help information.'
complete -f -c container -n __fish_use_subcommand -a inspect -d 'Display information about one or more containers'
complete -f -c container -n __fish_use_subcommand -a kill -d 'Kill one or more running containers'
complete -f -c container -n __fish_use_subcommand -a list -d 'ls                List containers'
complete -f -c container -n __fish_use_subcommand -a logs -d 'Fetch container stdio or boot logs'
complete -f -c container -n __fish_use_subcommand -a run -d 'Run a container'
complete -f -c container -n __fish_use_subcommand -a start -d 'Start a container'
complete -f -c container -n __fish_use_subcommand -a stop -d 'Stop one or more running containers'
# gencomp: reading from `container create --help `
complete -c container -n '__fish_seen_subcommand_from create' -s e -l env -d '<env>         Set environment variables'
complete -c container -n '__fish_seen_subcommand_from create' -l env-file -d '<env-file>   Read in a file of environment variables'
complete -c container -n '__fish_seen_subcommand_from create' -l uid -d '<uid>             Set the uid for the process'
complete -c container -n '__fish_seen_subcommand_from create' -l gid -d '<gid>             Set the gid for the process'
complete -c container -n '__fish_seen_subcommand_from create' -s i -l interactive -d 'Keep Stdin open even if not attached'
complete -c container -n '__fish_seen_subcommand_from create' -s t -l tty -d 'Open a tty with the process'
complete -c container -n '__fish_seen_subcommand_from create' -s u -l user -d '<user>       Set the user for the process'
complete -c container -n '__fish_seen_subcommand_from create' -s c -l cpus -d '<cpus>       Number of CPUs to allocate to the container'
complete -c container -n '__fish_seen_subcommand_from create' -s m -l memory -d '<memory>   Amount of memory in bytes, kilobytes (K), megabytes'
complete -c container -n '__fish_seen_subcommand_from create' -s d -l detach -d 'Run the container and detach from the process'
complete -c container -n '__fish_seen_subcommand_from create' -l entrypoint -d '<entrypoint>'
complete -c container -n '__fish_seen_subcommand_from create' -l mount -d '<mount>         Add a mount to the container'
complete -c container -n '__fish_seen_subcommand_from create' -l tmpfs -d '<tmpfs>         Add a tmpfs mount to the container at the given path'
complete -c container -n '__fish_seen_subcommand_from create' -l name -d '<name>           Assign a name to the container. If excluded will be a'
complete -c container -n '__fish_seen_subcommand_from create' -l os -d '<os>               Set OS if image can target multiple operating systems'
complete -c container -n '__fish_seen_subcommand_from create' -s a -l arch -d '<arch>       Set arch if image can target multiple architectures'
complete -c container -n '__fish_seen_subcommand_from create' -s v -l volume -d '<volume>   Bind mount a volume into the container'
complete -c container -n '__fish_seen_subcommand_from create' -s k -l kernel -d '<kernel>   Set a custom kernel path'
complete -c container -n '__fish_seen_subcommand_from create' -l cidfile -d '<cidfile>     Write the container ID to the path provided'
complete -c container -n '__fish_seen_subcommand_from create' -l no-dns -d 'Do not configure DNS in the container'
complete -c container -n '__fish_seen_subcommand_from create' -l dns -d '<dns>             DNS nameserver IP address'
complete -c container -n '__fish_seen_subcommand_from create' -l dns-domain -d '<dns-domain>'
complete -c container -n '__fish_seen_subcommand_from create' -l dns-search -d '<dns-search>'
complete -c container -n '__fish_seen_subcommand_from create' -l dns-option -d '<dns-option>'
complete -c container -n '__fish_seen_subcommand_from create' -s l -l label -d '<label>     Add a key=value label to the container'
complete -c container -n '__fish_seen_subcommand_from create' -l scheme -d '<scheme>       Scheme to use when conntecting to the container'
complete -c container -n '__fish_seen_subcommand_from create' -l debug -d 'Enable debug output [environment: CONTAINER_DEBUG]'
complete -c container -n __fish_no_arguments -l version -d 'Show the version.'
complete -c container -n '__fish_seen_subcommand_from create' -s h -l help -d 'Show help information.'
# gencomp: reading from `container delete --help `
complete -c container -n '__fish_seen_subcommand_from delete' -s f -l force -d 'Force the removal of one or more running containers'
complete -c container -n '__fish_seen_subcommand_from delete' -s a -l all -d 'Remove all containers'
complete -c container -n '__fish_seen_subcommand_from delete' -l debug -d 'Enable debug output [environment: CONTAINER_DEBUG]'
complete -c container -n __fish_no_arguments -l version -d 'Show the version.'
complete -c container -n '__fish_seen_subcommand_from delete' -s h -l help -d 'Show help information.'
# gencomp: reading from `container rm --help `
complete -c container -n '__fish_seen_subcommand_from rm' -s f -l force -d 'Force the removal of one or more running containers'
complete -c container -n '__fish_seen_subcommand_from rm' -s a -l all -d 'Remove all containers'
complete -c container -n '__fish_seen_subcommand_from rm' -l debug -d 'Enable debug output [environment: CONTAINER_DEBUG]'
complete -c container -n __fish_no_arguments -l version -d 'Show the version.'
complete -c container -n '__fish_seen_subcommand_from rm' -s h -l help -d 'Show help information.'
# gencomp: reading from `container exec --help `
complete -c container -n '__fish_seen_subcommand_from exec' -s e -l env -d '<env>         Set environment variables'
complete -c container -n '__fish_seen_subcommand_from exec' -l env-file -d '<env-file>   Read in a file of environment variables'
complete -c container -n '__fish_seen_subcommand_from exec' -l uid -d '<uid>             Set the uid for the process'
complete -c container -n '__fish_seen_subcommand_from exec' -l gid -d '<gid>             Set the gid for the process'
complete -c container -n '__fish_seen_subcommand_from exec' -s i -l interactive -d 'Keep Stdin open even if not attached'
complete -c container -n '__fish_seen_subcommand_from exec' -s t -l tty -d 'Open a tty with the process'
complete -c container -n '__fish_seen_subcommand_from exec' -s u -l user -d '<user>       Set the user for the process'
complete -c container -n '__fish_seen_subcommand_from exec' -l debug -d 'Enable debug output [environment: CONTAINER_DEBUG]'
complete -c container -n __fish_no_arguments -l version -d 'Show the version.'
complete -c container -n '__fish_seen_subcommand_from exec' -s h -l help -d 'Show help information.'
# gencomp: reading from `container inspect --help `
complete -c container -n '__fish_seen_subcommand_from inspect' -l debug -d 'Enable debug output [environment: CONTAINER_DEBUG]'
complete -c container -n __fish_no_arguments -l version -d 'Show the version.'
complete -c container -n '__fish_seen_subcommand_from inspect' -s h -l help -d 'Show help information.'
# gencomp: reading from `container kill --help `
complete -c container -n '__fish_seen_subcommand_from kill' -s s -l signal -d '<signal>   Signal to send the container(s) (default: KILL)'
complete -c container -n '__fish_seen_subcommand_from kill' -s a -l all -d 'Kill all running containers'
complete -c container -n '__fish_seen_subcommand_from kill' -l debug -d 'Enable debug output [environment: CONTAINER_DEBUG]'
complete -c container -n __fish_no_arguments -l version -d 'Show the version.'
complete -c container -n '__fish_seen_subcommand_from kill' -s h -l help -d 'Show help information.'
# gencomp: reading from `container list --help `
complete -c container -n '__fish_seen_subcommand_from list' -s a -l all -d 'Show stopped containers as well'
complete -c container -n '__fish_seen_subcommand_from list' -s q -l quiet -d 'Only output the container ID'
complete -c container -n '__fish_seen_subcommand_from list' -l format -d '<format>       Format of the output (values: json, table; default:'
complete -c container -n '__fish_seen_subcommand_from list' -l debug -d 'Enable debug output [environment: CONTAINER_DEBUG]'
complete -c container -n __fish_no_arguments -l version -d 'Show the version.'
complete -c container -n '__fish_seen_subcommand_from list' -s h -l help -d 'Show help information.'
# gencomp: reading from `container ls --help `
complete -c container -n '__fish_seen_subcommand_from ls' -s a -l all -d 'Show stopped containers as well'
complete -c container -n '__fish_seen_subcommand_from ls' -s q -l quiet -d 'Only output the container ID'
complete -c container -n '__fish_seen_subcommand_from ls' -l format -d '<format>       Format of the output (values: json, table; default:'
complete -c container -n '__fish_seen_subcommand_from ls' -l debug -d 'Enable debug output [environment: CONTAINER_DEBUG]'
complete -c container -n __fish_no_arguments -l version -d 'Show the version.'
complete -c container -n '__fish_seen_subcommand_from ls' -s h -l help -d 'Show help information.'
# gencomp: reading from `container logs --help `
complete -c container -n '__fish_seen_subcommand_from logs' -l debug -d 'Enable debug output [environment: CONTAINER_DEBUG]'
complete -c container -n '__fish_seen_subcommand_from logs' -s f -l follow -d 'Follow log output'
complete -c container -n '__fish_seen_subcommand_from logs' -l boot -d 'Display the boot log for the container instead of'
complete -c container -n '__fish_seen_subcommand_from logs' -s n -d '<n>                  Number of lines to show from the end of the logs. If'
complete -c container -n __fish_no_arguments -l version -d 'Show the version.'
complete -c container -n '__fish_seen_subcommand_from logs' -s h -l help -d 'Show help information.'
# gencomp: reading from `container run --help `
complete -c container -n '__fish_seen_subcommand_from run' -s e -l env -d '<env>         Set environment variables'
complete -c container -n '__fish_seen_subcommand_from run' -l env-file -d '<env-file>   Read in a file of environment variables'
complete -c container -n '__fish_seen_subcommand_from run' -l uid -d '<uid>             Set the uid for the process'
complete -c container -n '__fish_seen_subcommand_from run' -l gid -d '<gid>             Set the gid for the process'
complete -c container -n '__fish_seen_subcommand_from run' -s i -l interactive -d 'Keep Stdin open even if not attached'
complete -c container -n '__fish_seen_subcommand_from run' -s t -l tty -d 'Open a tty with the process'
complete -c container -n '__fish_seen_subcommand_from run' -s u -l user -d '<user>       Set the user for the process'
complete -c container -n '__fish_seen_subcommand_from run' -s c -l cpus -d '<cpus>       Number of CPUs to allocate to the container'
complete -c container -n '__fish_seen_subcommand_from run' -s m -l memory -d '<memory>   Amount of memory in bytes, kilobytes (K), megabytes'
complete -c container -n '__fish_seen_subcommand_from run' -s d -l detach -d 'Run the container and detach from the process'
complete -c container -n '__fish_seen_subcommand_from run' -l entrypoint -d '<entrypoint>'
complete -c container -n '__fish_seen_subcommand_from run' -l mount -d '<mount>         Add a mount to the container'
complete -c container -n '__fish_seen_subcommand_from run' -l tmpfs -d '<tmpfs>         Add a tmpfs mount to the container at the given path'
complete -c container -n '__fish_seen_subcommand_from run' -l name -d '<name>           Assign a name to the container. If excluded will be a'
complete -c container -n '__fish_seen_subcommand_from run' -l os -d '<os>               Set OS if image can target multiple operating systems'
complete -c container -n '__fish_seen_subcommand_from run' -s a -l arch -d '<arch>       Set arch if image can target multiple architectures'
complete -c container -n '__fish_seen_subcommand_from run' -s v -l volume -d '<volume>   Bind mount a volume into the container'
complete -c container -n '__fish_seen_subcommand_from run' -s k -l kernel -d '<kernel>   Set a custom kernel path'
complete -c container -n '__fish_seen_subcommand_from run' -l cidfile -d '<cidfile>     Write the container ID to the path provided'
complete -c container -n '__fish_seen_subcommand_from run' -l no-dns -d 'Do not configure DNS in the container'
complete -c container -n '__fish_seen_subcommand_from run' -l dns -d '<dns>             DNS nameserver IP address'
complete -c container -n '__fish_seen_subcommand_from run' -l dns-domain -d '<dns-domain>'
complete -c container -n '__fish_seen_subcommand_from run' -l dns-search -d '<dns-search>'
complete -c container -n '__fish_seen_subcommand_from run' -l dns-option -d '<dns-option>'
complete -c container -n '__fish_seen_subcommand_from run' -s l -l label -d '<label>     Add a key=value label to the container'
complete -c container -n '__fish_seen_subcommand_from run' -l scheme -d '<scheme>       Scheme to use when conntecting to the container'
complete -c container -n '__fish_seen_subcommand_from run' -l debug -d 'Enable debug output [environment: CONTAINER_DEBUG]'
complete -c container -n __fish_no_arguments -l version -d 'Show the version.'
complete -c container -n '__fish_seen_subcommand_from run' -s h -l help -d 'Show help information.'
# gencomp: reading from `container start --help `
complete -c container -n '__fish_seen_subcommand_from start' -s a -l attach -d 'Attach STDOUT/STDERR'
complete -c container -n '__fish_seen_subcommand_from start' -s i -l interactive -d "Attach container's STDIN"
complete -c container -n '__fish_seen_subcommand_from start' -l debug -d 'Enable debug output [environment: CONTAINER_DEBUG]'
complete -c container -n __fish_no_arguments -l version -d 'Show the version.'
complete -c container -n '__fish_seen_subcommand_from start' -s h -l help -d 'Show help information.'
# gencomp: reading from `container stop --help `
complete -c container -n '__fish_seen_subcommand_from stop' -s a -l all -d 'Stop all running containers'
complete -c container -n '__fish_seen_subcommand_from stop' -s s -l signal -d '<signal>   Signal to send the container(s) (default: SIGTERM)'
complete -c container -n '__fish_seen_subcommand_from stop' -s t -l time -d '<time>       Seconds to wait before killing the container(s)'
complete -c container -n '__fish_seen_subcommand_from stop' -l debug -d 'Enable debug output [environment: CONTAINER_DEBUG]'
complete -c container -n __fish_no_arguments -l version -d 'Show the version.'
complete -c container -n '__fish_seen_subcommand_from stop' -s h -l help -d 'Show help information.'
# gencomp: reading from `container build --help `
complete -c container -n '__fish_seen_subcommand_from build' -s c -l cpus -d '<cpus>       Number of CPUs to allocate to the container (default:'
complete -c container -n '__fish_seen_subcommand_from build' -s m -l memory -d '<memory>   Amount of memory in bytes, kilobytes (K), megabytes'
complete -c container -n '__fish_seen_subcommand_from build' -l build-arg -d '<key=val>   Set build-time variables'
complete -c container -n '__fish_seen_subcommand_from build' -s f -l file -d '<path>       Path to Dockerfile (default: Dockerfile)'
complete -c container -n '__fish_seen_subcommand_from build' -s l -l label -d '<key=val>   Set a label'
complete -c container -n '__fish_seen_subcommand_from build' -l no-cache -d 'Do not use cache'
complete -c container -n '__fish_seen_subcommand_from build' -s o -l output -d '<value>    Output configuration for the build (default: type=oci)'
complete -c container -n '__fish_seen_subcommand_from build' -l arch -d '<value>          set the build architecture (default: arm64)'
complete -c container -n '__fish_seen_subcommand_from build' -l os -d '<value>            set the build os (default: linux)'
complete -c container -n '__fish_seen_subcommand_from build' -l progress -d '<type>       Progress type - one of [auto|plain|tty] (default:'
complete -c container -n '__fish_seen_subcommand_from build' -l vsock-port -d '<port>     Builder-shim vsock port (default: 8088)'
complete -c container -n '__fish_seen_subcommand_from build' -s t -l tag -d '<name>        Name for the built image (default:'
complete -c container -n '__fish_seen_subcommand_from build' -l target -d '<stage>        Set the target build stage'
complete -c container -n '__fish_seen_subcommand_from build' -s q -l quiet -d 'Suppress build output'
complete -c container -n __fish_no_arguments -l version -d 'Show the version.'
complete -c container -n '__fish_seen_subcommand_from build' -s h -l help -d 'Show help information.'
# gencomp: reading from `container images --help `
complete -c container -n __fish_no_arguments -l version -d 'Show the version.'
complete -c container -n '__fish_seen_subcommand_from images' -s h -l help -d 'Show help information.'
# gencomp: reading from `container image --help `
complete -c container -n __fish_no_arguments -l version -d 'Show the version.'
complete -c container -n '__fish_seen_subcommand_from image' -s h -l help -d 'Show help information.'
# gencomp: reading from `container i --help `
complete -c container -n __fish_no_arguments -l version -d 'Show the version.'
complete -c container -n '__fish_seen_subcommand_from i' -s h -l help -d 'Show help information.'
# gencomp: reading from `container registry --help `
complete -c container -n __fish_no_arguments -l version -d 'Show the version.'
complete -c container -n '__fish_seen_subcommand_from registry' -s h -l help -d 'Show help information.'
# gencomp: reading from `container r --help `
complete -c container -n __fish_no_arguments -l version -d 'Show the version.'
complete -c container -n '__fish_seen_subcommand_from r' -s h -l help -d 'Show help information.'
# gencomp: reading from `container builder --help `
complete -c container -n __fish_no_arguments -l version -d 'Show the version.'
complete -c container -n '__fish_seen_subcommand_from builder' -s h -l help -d 'Show help information.'
# gencomp: reading from `container system --help `
complete -c container -n __fish_no_arguments -l version -d 'Show the version.'
complete -c container -n '__fish_seen_subcommand_from system' -s h -l help -d 'Show help information.'
# gencomp: reading from `container s --help `
complete -c container -n __fish_no_arguments -l version -d 'Show the version.'
complete -c container -n '__fish_seen_subcommand_from s' -s h -l help -d 'Show help information.'

# container.fish

complete -c container -n __fish_use_subcommand -l debug -d "Enable debug output"
complete -c container -n __fish_use_subcommand -l version -d "Show the version"
complete -c container -n __fish_use_subcommand -s h -l help -d "Show help information"

# Container subcommands
complete -c container -n __fish_use_subcommand -a create -d "Create a new container"
complete -c container -n __fish_use_subcommand -a delete -d "Delete one or more containers"
complete -c container -n __fish_use_subcommand -a rm -d "Delete one or more containers"
complete -c container -n __fish_use_subcommand -a exec -d "Run a new command in a running container"
complete -c container -n __fish_use_subcommand -a inspect -d "Display information about one or more containers"
complete -c container -n __fish_use_subcommand -a kill -d "Kill one or more running containers"
complete -c container -n __fish_use_subcommand -a list -d "List containers"
complete -c container -n __fish_use_subcommand -a ls -d "List containers"
complete -c container -n __fish_use_subcommand -a logs -d "Fetch container stdio or boot logs"
complete -c container -n __fish_use_subcommand -a run -d "Run a container"
complete -c container -n __fish_use_subcommand -a start -d "Start a container"
complete -c container -n __fish_use_subcommand -a stop -d "Stop one or more running containers"

# Image subcommands
complete -c container -n __fish_use_subcommand -a build -d "Build an image from a Dockerfile"
complete -c container -n __fish_use_subcommand -a images -d "Manage images"
complete -c container -n __fish_use_subcommand -a image -d "Manage images"
complete -c container -n __fish_use_subcommand -a i -d "Manage images"
complete -c container -n __fish_use_subcommand -a registry -d "Manage registry configurations"
complete -c container -n __fish_use_subcommand -a r -d "Manage registry configurations"

# System subcommands
complete -c container -n __fish_use_subcommand -a builder -d "Manage an image builder instance"
complete -c container -n __fish_use_subcommand -a system -d "Manage system components"
complete -c container -n __fish_use_subcommand -a s -d "Manage system components"



















# __fish_git_ready
# build.fish
# Completions for container build

complete -c container -n "__fish_seen_subcommand_from build" -s f -l file -d "Specify a Dockerfile"
complete -c container -n "__fish_seen_subcommand_from build" -s t -l tag -d "Name and optionally a tag"
complete -c container -n "__fish_seen_subcommand_from build" -l target -d "Set the target build stage"
complete -c container -n "__fish_seen_subcommand_from build" -l build-arg -d "Set build-time variables"
complete -c container -n "__fish_seen_subcommand_from build" -l no-cache -d "Do not use cache"
complete -c container -n "__fish_seen_subcommand_from build" -l pull -d "Always attempt to pull newer version"
complete -c container -n "__fish_seen_subcommand_from build" -l quiet -d "Suppress the build output"
complete -c container -n "__fish_seen_subcommand_from build" -l progress -x -a "auto plain tty" -d "Set type of progress output"
complete -c container -n "__fish_seen_subcommand_from build" -l ssh -d "SSH agent socket or keys to expose"
complete -c container -n "__fish_seen_subcommand_from build" -l platform -d "Set platform if server is multi-platform capable"

# Path completion for build context
complete -c container -n "__fish_seen_subcommand_from build" -k -a "(__fish_complete_directories)"
# builder.fish
# Completions for container builder

complete -c container -n "__fish_seen_subcommand_from builder" -xa "build" -d "Build a container"
complete -c container -n "__fish_seen_subcommand_from builder" -xa "list" -d "List available builders"
complete -c container -n "__fish_seen_subcommand_from builder" -xa "inspect" -d "Inspect a builder"
complete -c container -n "__fish_seen_subcommand_from builder" -xa "remove" -d "Remove a builder"
complete -c container -n "__fish_seen_subcommand_from builder" -xa "prune" -d "Remove unused builders"

# Build-specific completions
complete -c container -n "__fish_seen_subcommand_from builder; and __fish_seen_subcommand_from build" -l tag -d "Name and optionally a tag in the 'name:tag' format"
complete -c container -n "__fish_seen_subcommand_from builder; and __fish_seen_subcommand_from build" -l file -d "Name of the Dockerfile"
complete -c container -n "__fish_seen_subcommand_from builder; and __fish_seen_subcommand_from build" -l progress -xa "auto plain tty" -d "Set type of progress output"

# Inspect/remove completions
complete -c container -n "__fish_seen_subcommand_from builder; and __fish_seen_subcommand_from inspect remove" -xa "(container builder list -q)" -d "Builder name"

# Common flags
complete -c container -n "__fish_seen_subcommand_from builder" -l help -d "Show help for command"
# create.fish
complete -c your_command -n "__fish_seen_subcommand_from container" -a "create" -d "Create a new container"

complete -c your_command -n "__fish_seen_subcommand_from container create" -s n -l name -d "Set container name" -x
complete -c your_command -n "__fish_seen_subcommand_from container create" -s i -l image -d "Specify container image" -x
complete -c your_command -n "__fish_seen_subcommand_from container create" -s p -l port -d "Publish container port" -x
complete -c your_command -n "__fish_seen_subcommand_from container create" -s e -l env -d "Set environment variable" -x
complete -c your_command -n "__fish_seen_subcommand_from container create" -s v -l volume -d "Mount volume" -x
complete -c your_command -n "__fish_seen_subcommand_from container create" -l restart -d "Restart policy" -x -a "no always on-failure unless-stopped"
complete -c your_command -n "__fish_seen_subcommand_from container create" -l network -d "Connect to network" -x
complete -c your_command -n "__fish_seen_subcommand_from container create" -s d -l detach -d "Run container in background"
complete -c your_command -n "__fish_seen_subcommand_from container create" -s t -l tty -d "Allocate a pseudo-TTY"
complete -c your_command -n "__fish_seen_subcommand_from container create" -s h -l help -d "Show help"
# delete.fish
# Completions for container delete

complete -c container -n "__fish_seen_subcommand_from delete" -xa "(__fish_complete_containers)"
complete -c container -n "__fish_seen_subcommand_from delete" -s f -l force -d "Force deletion"
complete -c container -n "__fish_seen_subcommand_from delete" -s h -l help -d "Show help message"
# exec.fish
# Completions for container exec

complete -c container -n "__fish_seen_subcommand_from exec" -xa "(__fish_complete_subcommand)"
complete -c container -n "__fish_seen_subcommand_from exec" -s h -l help -d "Show help for exec command"
complete -c container -n "__fish_seen_subcommand_from exec" -l detach -d "Run command in background"
complete -c container -n "__fish_seen_subcommand_from exec" -l interactive -d "Keep STDIN open"
complete -c container -n "__fish_seen_subcommand_from exec" -l tty -d "Allocate a pseudo-TTY"

# Complete container names after exec
complete -c container -n "__fish_seen_subcommand_from exec" -xa "(__fish_complete_containers)"

# Complete commands inside container
complete -c container -n "__fish_seen_subcommand_from exec; and __fish_contains_opt -s c command" -xa "(__fish_complete_commands_in_container (commandline -ot))"
# i.fish
# Completions for `container i` subcommand
complete -c container -n "__fish_seen_subcommand_from i" -xa "(
    # List possible completions for the 'i' subcommand
    # Replace this with actual commands or logic to generate completions
    echo list
    echo inspect
    echo info
    echo images
)"

# Example completions for specific sub-subcommands
complete -c container -n "__fish_seen_subcommand_from i; and __fish_seen_subcommand_from inspect" -xa "(
    # List containers to inspect
    # Replace with actual container list command
    docker ps --format '{{.Names}}' 2>/dev/null
)"

complete -c container -n "__fish_seen_subcommand_from i; and __fish_seen_subcommand_from list" -l all -d "Show all containers"
complete -c container -n "__fish_seen_subcommand_from i; and __fish_seen_subcommand_from list" -l quiet -d "Only display IDs"
# image.fish
complete -c container -n "__fish_seen_subcommand_from image" -xa "build pull push rm ls inspect tag"
complete -c container -n "__fish_seen_subcommand_from image build" -s f -l file -d "Specify Dockerfile"
complete -c container -n "__fish_seen_subcommand_from image build" -s t -l tag -d "Name and optionally a tag"
complete -c container -n "__fish_seen_subcommand_from image pull" -d "Pull an image from a registry"
complete -c container -n "__fish_seen_subcommand_from image push" -d "Push an image to a registry"
complete -c container -n "__fish_seen_subcommand_from image rm" -d "Remove one or more images"
complete -c container -n "__fish_seen_subcommand_from image ls" -d "List images"
complete -c container -n "__fish_seen_subcommand_from image inspect" -d "Display detailed image information"
complete -c container -n "__fish_seen_subcommand_from image tag" -d "Create a tag for an image"
# images.fish
# Completions for container images

complete -c container -n "__fish_seen_subcommand_from images" -a "list" -d "List available images"
complete -c container -n "__fish_seen_subcommand_from images" -a "pull" -d "Pull an image from a registry"
complete -c container -n "__fish_seen_subcommand_from images" -a "push" -d "Push an image to a registry"
complete -c container -n "__fish_seen_subcommand_from images" -a "remove" -d "Remove one or more images"
complete -c container -n "__fish_seen_subcommand_from images" -a "inspect" -d "Display detailed image information"
complete -c container -n "__fish_seen_subcommand_from images" -a "tag" -d "Create a tag for an image"
complete -c container -n "__fish_seen_subcommand_from images" -a "prune" -d "Remove unused images"

# Completion for image names after certain subcommands
complete -c container -n "__fish_seen_subcommand_from images; and __fish_seen_subcommand_from pull push remove inspect tag" -a "(container images list --format '{{.Repository}}:{{.Tag}}')" -d "Image name"

# Common options
complete -c container -n "__fish_seen_subcommand_from images" -s h -l help -d "Show help for the images command"
complete -c container -n "__fish_seen_subcommand_from images" -s f -l filter -d "Filter output based on conditions provided" -x
complete -c container -n "__fish_seen_subcommand_from images" -l format -d "Format output using a custom template" -x
# inspect.fish
complete -c container -n "__fish_seen_subcommand_from inspect" -a "(__fish_complete_containers)" -d "Container to inspect"
complete -c container -n "__fish_seen_subcommand_from inspect" -s f -l format -d "Format the output using the given Go template"
complete -c container -n "__fish_seen_subcommand_from inspect" -s s -l size -d "Display total file sizes if the type is container"
complete -c container -n "__fish_seen_subcommand_from inspect" -l type -d "Return JSON for specified type" -xa "container image"
complete -c container -n "__fish_seen_subcommand_from inspect" -s h -l help -d "Show help for inspect command"

function __fish_complete_containers
    # Replace this with actual command to list containers
    # Example for Docker: docker ps --format '{{.Names}}'
    command docker ps --format '{{.Names}}' 2>/dev/null
end
# kill.fish
complete -c container -n "__fish_seen_subcommand_from kill" -xa "(__fish_complete_pids)"
complete -c container -n "__fish_seen_subcommand_from kill" -s s -l signal -d "Signal to send to the container" -xa "(__fish_complete_spec signals)"
complete -c container -n "__fish_seen_subcommand_from kill" -s h -l help -d "Show help for kill command"
# list.fish
complete -c your_command -n "__fish_seen_subcommand_from container list" -s f -l filter -d "Filter output based on conditions provided"
complete -c your_command -n "__fish_seen_subcommand_from container list" -l format -d "Format output using a custom template"
complete -c your_command -n "__fish_seen_subcommand_from container list" -s n -l last -d "Show n last created containers (includes all states)"
complete -c your_command -n "__fish_seen_subcommand_from container list" -s l -l latest -d "Show the latest created container (includes all states)"
complete -c your_command -n "__fish_seen_subcommand_from container list" -l no-trunc -d "Don't truncate output"
complete -c your_command -n "__fish_seen_subcommand_from container list" -s q -l quiet -d "Only display container IDs"
complete -c your_command -n "__fish_seen_subcommand_from container list" -l size -d "Display total file sizes"
# logs.fish
complete -c container -n "__fish_seen_subcommand_from logs" -s f -l follow -d "Follow log output"
complete -c container -n "__fish_seen_subcommand_from logs" -l since -d "Show logs since timestamp"
complete -c container -n "__fish_seen_subcommand_from logs" -l until -d "Show logs before timestamp"
complete -c container -n "__fish_seen_subcommand_from logs" -s t -l timestamps -d "Show timestamps"
complete -c container -n "__fish_seen_subcommand_from logs" -l tail -d "Number of lines to show from the end"
complete -c container -n "__fish_seen_subcommand_from logs" -s h -l help -d "Show help for the logs command"
complete -c container -n "__fish_seen_subcommand_from logs" -a "(__fish_complete_containers)" -d "Container"
# ls.fish
# Completions for container ls
complete -c container -n "__fish_seen_subcommand_from ls" -s a -l all -d "Show all containers (default shows just running)"
complete -c container -n "__fish_seen_subcommand_from ls" -s f -l filter -d "Filter output based on conditions provided" -x
complete -c container -n "__fish_seen_subcommand_from ls" -l format -d "Format output using a custom template" -x
complete -c container -n "__fish_seen_subcommand_from ls" -s n -l last -d "Show n last created containers (includes all states)" -x
complete -c container -n "__fish_seen_subcommand_from ls" -s l -l latest -d "Show the latest created container (includes all states)"
complete -c container -n "__fish_seen_subcommand_from ls" -l no-trunc -d "Don't truncate output"
complete -c container -n "__fish_seen_subcommand_from ls" -s q -l quiet -d "Only display container IDs"
complete -c container -n "__fish_seen_subcommand_from ls" -s s -l size -d "Display total file sizes"
# r.fish
# Completions for container r
complete -c container -n "__fish_seen_subcommand_from r" -xa "(__fish_complete_subcommand)"
complete -c container -n "__fish_seen_subcommand_from r" -l help -d "Show help for the r subcommand"
complete -c container -n "__fish_seen_subcommand_from r" -l verbose -d "Enable verbose output"
complete -c container -n "__fish_seen_subcommand_from r" -l force -d "Force the operation"
complete -c container -n "__fish_seen_subcommand_from r" -l all -d "Apply to all containers"
# registry.fish
# Completions for container registry subcommand
complete -c container -n "__fish_seen_subcommand_from registry" -xa "list create delete show update"
complete -c container -n "__fish_seen_subcommand_from registry; and __fish_seen_subcommand_from create" -l name -d "Registry name"
complete -c container -n "__fish_seen_subcommand_from registry; and __fish_seen_subcommand_from create" -l location -d "Registry location"
complete -c container -n "__fish_seen_subcommand_from registry; and __fish_seen_subcommand_from delete show update" -xa "(__fish_complete_registries)"

function __fish_complete_registries
    # Replace this with actual command to list registries
    container registry list --format=json | jq -r '.[].name'
end
# rm.fish
complete -c container -n "__fish_seen_subcommand_from rm" -xa "(__fish_complete_containers)" -d "Remove container"
complete -c container -n "__fish_seen_subcommand_from rm" -s f -l force -d "Force removal"
complete -c container -n "__fish_seen_subcommand_from rm" -s v -l volumes -d "Remove volumes"
complete -c container -n "__fish_seen_subcommand_from rm" -s l -l link -d "Remove link"
# run.fish
complete -c your_command -n "__fish_seen_subcommand_from container run" -s n -l name -d "Assign a name to the container"
complete -c your_command -n "__fish_seen_subcommand_from container run" -s d -l detach -d "Run container in background and print container ID"
complete -c your_command -n "__fish_seen_subcommand_from container run" -s p -l publish -d "Publish a container's port(s) to the host" -x
complete -c your_command -n "__fish_seen_subcommand_from container run" -s v -l volume -d "Bind mount a volume" -x
complete -c your_command -n "__fish_seen_subcommand_from container run" -s e -l env -d "Set environment variables" -x
complete -c your_command -n "__fish_seen_subcommand_from container run" -l rm -d "Automatically remove the container when it exits"
complete -c your_command -n "__fish_seen_subcommand_from container run" -l entrypoint -d "Overwrite the default ENTRYPOINT of the image" -x
complete -c your_command -n "__fish_seen_subcommand_from container run" -l help -d "Show help for run command"
complete -c your_command -n "__fish_seen_subcommand_from container run" -a "(__fish_complete_subcommand --fcs-skip=2)"
# s.fish
# Container completions
complete -c container -n "__fish_seen_subcommand_from s" -xa "start stop status"
complete -c container -n "__fish_seen_subcommand_from s start" -xa "(__fish_complete_containers)"
complete -c container -n "__fish_seen_subcommand_from s stop" -xa "(__fish_complete_running_containers)"
complete -c container -n "__fish_seen_subcommand_from s status" -xa "(__fish_complete_containers)"

# Helper functions (would need to be defined or replaced with actual implementations)
function __fish_complete_containers
    # Replace with actual command that lists all containers
    docker ps -a --format '{{.Names}}' 2>/dev/null
end

function __fish_complete_running_containers
    # Replace with actual command that lists running containers
    docker ps --format '{{.Names}}' 2>/dev/null
end
# start.fish
complete -c container -n "__fish_seen_subcommand_from start" -a "(__fish_complete_subcommand)"
complete -c container -n "__fish_seen_subcommand_from start" -s h -l help -d "Show help for start command"
complete -c container -n "__fish_seen_subcommand_from start" -s d -l detach -d "Start container in detached mode"
complete -c container -n "__fish_seen_subcommand_from start" -s i -l interactive -d "Attach container's STDIN"
complete -c container -n "__fish_seen_subcommand_from start" -s t -l tty -d "Allocate a pseudo-TTY"
complete -c container -n "__fish_seen_subcommand_from start" -l name -d "Assign a name to the container" -x
complete -c container -n "__fish_seen_subcommand_from start" -l restart -d "Restart policy (no, on-failure, always, unless-stopped)" -x -a "no on-failure always unless-stopped"
# stop.fish
# Completions for `container stop`

complete -c container -n "__fish_seen_subcommand_from stop" -xa "(__fish_complete_containers running)" -d "Stop a running container"
complete -c container -n "__fish_seen_subcommand_from stop" -s t -l time -x -d "Seconds to wait before killing the container"
complete -c container -n "__fish_seen_subcommand_from stop" -s h -l help -d "Show help for stop command"

# Helper function to list running containers (if needed)
function __fish_complete_containers -a state
    # Implement logic to get containers in the specified state
    # For example, if using Docker:
    # docker ps --filter "status=$state" --format '{{.Names}}'
end
# system.fish
# Completions for container system

complete -c container -n "__fish_seen_subcommand_from system" -xa "info prune"
complete -c container -n "__fish_seen_subcommand_from system info" -l format -d "Format the output using the given Go template"
complete -c container -n "__fish_seen_subcommand_from system prune" -l all -d "Remove all unused containers, not just anonymous ones"
complete -c container -n "__fish_seen_subcommand_from system prune" -l force -s f -d "Do not prompt for confirmation"
complete -c container -n "__fish_seen_subcommand_from system prune" -l filter -d "Provide filter values (e.g. 'until=24h')"
complete -c container -n "__fish_seen_subcommand_from system prune" -l verbose -s v -d "Show what is being deleted"
