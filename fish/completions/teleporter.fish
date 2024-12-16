#string replace -a -- {} teleporter  {} --help
complete -f -c teleporter -n __fish_use_subcommand -a listen -d 'Start a teleporter in server (receiving) mode'
#string replace -a -- {} teleporter listen {} --help
complete -c teleporter -n '__fish_seen_subcommand_from listen' -l allow-dangerous-filepath -d 'Allow absolute and relative file paths for transfers (server only) [WARNING: potentially dangerous option, use at your own risk!]'
complete -c teleporter -n '__fish_seen_subcommand_from listen' -s m -l must-encrypt -d 'Require encryption for incoming connections to the server'
complete -c teleporter -n '__fish_seen_subcommand_from listen' -s p -l port -d '<PORT>               Port to listen on [default: 9001]'
complete -c teleporter -n '__fish_seen_subcommand_from listen' -s h -l help -d 'Print help'
complete -f -c teleporter -n __fish_use_subcommand -a send -d 'Start a teleporter in client (sending) mode'
#string replace -a -- {} teleporter send {} --help
complete -c teleporter -n '__fish_seen_subcommand_from send' -s i -l input -d '[<INPUT>...]  List of filepaths to files that will be teleported'
complete -c teleporter -n '__fish_seen_subcommand_from send' -s d -l dest -d '<DEST>         Destination teleporter host [default: localhost]'
complete -c teleporter -n '__fish_seen_subcommand_from send' -s p -l port -d '<PORT>         Destination teleporter port [default: 9001]'
complete -c teleporter -n '__fish_seen_subcommand_from send' -s o -l overwrite -d 'Overwrite remote file'
complete -c teleporter -n '__fish_seen_subcommand_from send' -s r -l recursive -d 'Recurse into directories on send'
complete -c teleporter -n '__fish_seen_subcommand_from send' -s e -l encrypt -d 'Encrypt the file transfer using ECDH key-exchange and random keys'
complete -c teleporter -n '__fish_seen_subcommand_from send' -s n -l no-delta -d 'Disable delta transfer (overwrite will transfer entire file)'
complete -c teleporter -n '__fish_seen_subcommand_from send' -s k -l keep-path -d 'Keep path info (recreate directory path on remote server)'
complete -c teleporter -n '__fish_seen_subcommand_from send' -s b -l backup -d 'Backup the destination file to a ".bak" extension if it exists and is being overwritten (consecutive runs will replace the *.bak file)'
complete -c teleporter -n '__fish_seen_subcommand_from send' -s f -l filename-append -d 'If the destination file exists, append a ".1" (or next available number) to the filename instead of overwriting'
complete -c teleporter -n '__fish_seen_subcommand_from send' -s h -l help -d 'Print help'
complete -f -c teleporter -n __fish_use_subcommand -a scan -d 'Scan all network devices for any reachable Teleport listeners'
#string replace -a -- {} teleporter scan {} --help
complete -c teleporter -n '__fish_seen_subcommand_from scan' -s p -l port -d '<PORT>  Port to scan for [default: 9001]'
complete -c teleporter -n '__fish_seen_subcommand_from scan' -s h -l help -d 'Print help'
complete -f -c teleporter -n __fish_use_subcommand -a help -d 'Print this message or the help of the given subcommand(s)'
#string replace -a -- {} teleporter help {} --help
complete -c teleporter -s h -l help -d 'Print help'
complete -c teleporter -n __fish_no_arguments -s V -l version -d 'Print version'
