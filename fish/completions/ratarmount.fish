complete -c ratarmount -l password -d 'PASSWORD   Specify a single password which shall be used for RAR'
complete -c ratarmount -s P -d 'PARALLELIZATION, --parallelization PARALLELIZATION'
complete -c ratarmount -s h -l help -d 'Show this help message and exit.'
complete -c ratarmount -s r -l recursive -d 'Mount archives inside archives recursively. Same as'
complete -c ratarmount -l recursion-depth -d '-1. (default: False)'
complete -c ratarmount -s u -l unmount -d 'Unmount the given mount point. Equivalent to calling'
complete -c ratarmount -n __fish_no_arguments -s v -l version -d 'Print version information and exit.'
complete -c ratarmount -l index-file -d INDEX_FILE
complete -c ratarmount -l index-folders -d INDEX_FOLDERS
complete -c ratarmount -l index-folders -d '\'["~/.ratarmount", "foo,9000"]\' will'
complete -c ratarmount -l verify-mtime -d 'By default, only the TAR file size is checked to match'
complete -c ratarmount -s c -l recreate-index -d 'If specified, pre-existing .index files will be'
complete -c ratarmount -l recursion-depth -d RECURSION_DEPTH
complete -c ratarmount -l transform-recursive-mount-point -d 'REGEX_PATTERN REPLACEMENT'
complete -c ratarmount -s l -l lazy -d 'When used with recursively bind-mounted folders, TAR'
complete -c ratarmount -l gnu-incremental -d 'Will strip octal modification time prefixes from file'
complete -c ratarmount -l no-gnu-incremental -d 'If specified, will never strip octal modification'
complete -c ratarmount -s e -d 'ENCODING, --encoding ENCODING'
complete -c ratarmount -s i -l ignore-zeros -d 'Ignore zeroed blocks in archive. Normally, two'
complete -c ratarmount -l commit-overlay -d 'Apply deletions and content modifications done in the'
complete -c ratarmount -s w -d 'WRITE_OVERLAY, --write-overlay WRITE_OVERLAY'
complete -c ratarmount -l index-minimum-file-count -d INDEX_MINIMUM_FILE_COUNT
complete -c ratarmount -l oss-attributions -d 'Show licenses of used libraries.'
complete -c ratarmount -l password-file -d PASSWORD_FILE
complete -c ratarmount -l transform -d 'REGEX_PATTERN REPLACEMENT'
complete -c ratarmount -l union-mount-cache-max-depth -d UNION_MOUNT_CACHE_MAX_DEPTH
complete -c ratarmount -l union-mount-cache-max-entries -d UNION_MOUNT_CACHE_MAX_ENTRIES
complete -c ratarmount -l union-mount-cache-timeout -d UNION_MOUNT_CACHE_TIMEOUT
complete -c ratarmount -l use-backend -d USE_BACKEND
complete -c ratarmount -s d -d 'DEBUG, --debug DEBUG'
complete -c ratarmount -s f -l foreground -d 'Keeps the python program in foreground so it can print'
complete -c ratarmount -s gs -d 'GZIP_SEEK_POINT_SPACING, --gzip-seek-point-spacing GZIP_SEEK_POINT_SPACING'
complete -c ratarmount -s o -d 'FUSE, --fuse FUSE  Comma separated FUSE options. See "man mount.fuse" for'
complete -c ratarmount -s p -d 'PREFIX, --prefix PREFIX'
