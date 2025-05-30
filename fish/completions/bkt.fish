function command_doubledash
    set -l fullcmdz (commandline --current-process --cut-at-cursor)
    set -l purecmd (string replace -r '.+?-- ' '' -- $fullcmdz)
    fset fullcmdz purecmd >/tmp/fifo
    complete -C $purecmd
end

complete -c bkt -l ttl -d '<DURATION>    Duration the cached result will be valid for [env: BKT_TTL=10m] [aliases:'
complete -c bkt -l stale -d '<DURATION>  Duration after which the result will be asynchronously refreshed'
complete -c bkt -l warm -d "Asynchronously execute and cache the given command, even if it's already"
complete -c bkt -l force -d "Execute and cache the given command, even if it's already cached"
complete -c bkt -l cwd -d 'Includes the current working directory in the cache key, so that the same'
complete -c bkt -l env -d '<NAME>        Includes the given environment variable in the cache key, so that the same'
complete -c bkt -l modtime -d '<FILE>    Includes the last modification time of the given file(s) in the cache key, so'
complete -f -c bkt -n __fish_use_subcommand -a separately -d '[aliases: use-file-modtime]'
complete -f -c bkt -n __fish_use_subcommand -a --discard-failures -d "Don't cache invocations that fail (non-zero exit code). USE CAUTION when"
complete -f -c bkt -n __fish_use_subcommand -a passing -d 'this flag, as unexpected failures can lead to a spike in invocations'
complete -f -c bkt -n __fish_use_subcommand -a which -d 'can exacerbate ongoing issues, effectively a DDoS'
complete -f -c bkt -n __fish_use_subcommand -a --scope -d '<NAME>      If set, all cached data will be scoped to this value, preventing collisions'
complete -f -c bkt -n __fish_use_subcommand -a --cache-dir -d '<DIR>   The directory under which to persist cached invocations; defaults to the'
complete -c bkt -s h -l help -d 'Print help'
complete -c bkt -n __fish_no_arguments -s V -l version -d 'Print version'
complete -c bkt -n '__fish_seen_subcommand_from --' -x -a '(command_doubledash)'
