complete -c "bsdtar" -s "c" -o "cr" -d "Create a new archive containing the specified items." # global
complete -c "bsdtar" -s "r" -o "rr" -d "Like -c, but new entries are appended to the archive. The -f option is required." # global
complete -c "bsdtar" -s "t" -o "tt" -d "List archive contents to stdout." # global
complete -c "bsdtar" -s "u" -o "uu" -d "Like -r, but new entries are added only if they have a modification date newer than the corresponding entry in the archive. The -f option is required." # global
complete -c "bsdtar" -s "x" -o "xx" -d "Extract to disk from the archive." # global
complete -c "bsdtar" -s "a" -o "aa" -d "Use the archive suffix to decide a set of the format and the compressions." # global
complete -c "bsdtar" -l "acls" -d "Archive or extract POSIX.1e or NFSv4 ACLs." # global
complete -c "bsdtar" -s "B" -l "read-full-blocks" -d "Ignored for compatibility with other tar implementations." # global
complete -c "bsdtar" -s "b" -l "block-size" -d "Specify the block size, in 512-byte records, for tape drive I/O." -xa "{}" # global
complete -c "bsdtar" -s "C" -o "cd,dir" -d "In c and r mode, this changes the directory before adding the following files. In x mode, change directory before extracting entries." -xa "{}" # global
complete -c "bsdtar" -l "chroot" -d "cchroot() to the current directory after processing any -C options and before extracting any files." # global
complete -c "bsdtar" -l "clear-nochange-flags" -d "Before removing file system objects to replace them, clear platform-specific file attributes or file flags that might prevent removal." # global
complete -c "bsdtar" -l "exclude" -d "Do not process files or directories that match the specified pattern." -xa "{}" # global
complete -c "bsdtar" -l "exclude-vcs" -d "Do not process files or directories used by version control systems." # global
complete -c "bsdtar" -l "flags" -d "Archive or extract platform-specific file attributes or file flags." # global
complete -c "bsdtar" -l "format" -d "Use the specified format for the created archive." -xa "cpio pax shar ustar" # global
complete -c "bsdtar" -s "f" -l "file" -d "Read the archive from or write the archive to the specified file." -xa "{}" # global
complete -c "bsdtar" -l "gid" -d "Use the provided group id number." -xa "{}" # global
complete -c "bsdtar" -l "gname" -d "Use the provided group name." -xa "{}" # global
complete -c "bsdtar" -l "group" -d "Use the provided group, if gid is not provided, name can be either a group name or numeric id." -xa "{}" # global
complete -c "bsdtar" -s "H" -d "Symbolic links named on the command line will be followed; the target of the link will be archived, not the link itself." # global
complete -c "bsdtar" -s "h" -d "Synonym for -L." # global
complete -c "bsdtar" -s "I" -d "Synonym for -T." # global
complete -c "bsdtar" -l "help" -d "Show usage." # global
complete -c "bsdtar" -l "hfsCompression" -d "Mac OS X specific compress extracted files with HFS+ compression." # global
complete -c "bsdtar" -l "ignore-zeros" -d "An alias of --options read_concatenated_archives for compatibility with GNU tar." # global
complete -c "bsdtar" -l "include" -d "Process only files or directories that match the specified pattern." -xa "{}" # global
complete -c "bsdtar" -s "J" -l "xz" -d "Compress the resulting archive with xz." # global
complete -c "bsdtar" -s "j" -o "bzip2,bunzip2" -d "Compress the resulting archive with bzip2." # global
complete -c "bsdtar" -s "k" -l "keep-old-files" -d "Do not overwrite existing files." # global
complete -c "bsdtar" -l "keep-newer-files" -d "Do not overwrite existing files that are newer than the versions in the archive." # global
complete -c "bsdtar" -s "L" -o "LL" -d "All symbolic links will be followed." # global
complete -c "bsdtar" -s "l" -l "check-links" -d "Issue a warning message unless all links to each file are archived." # global
complete -c "bsdtar" -l "lrzip" -d "Compress the resulting archive with lrzip." # global
complete -c "bsdtar" -l "lz4" -d "Compress the archive with lz4-compatible compression before writing it." # global
complete -c "bsdtar" -l "zstd" -d "Compress the archive with zstd-compatible compression before writing it." # global
complete -c "bsdtar" -l "lzma" -d "Compress the resulting archive with the original LZMA algorithm." # global
complete -c "bsdtar" -l "lzop" -d "Compress the resulting archive with lzop." # global
complete -c "bsdtar" -s "m" -l "modification-time" -d "Do not extract modification time." # global
complete -c "bsdtar" -l "mac-metadata" -d "Mac OS X specific. Archive or extract extended ACLs and extended file attributes using AppleDouble format." # global
complete -c "bsdtar" -s "n" -o "no-recursion" -d "Do not operate recursively on the content of directories." # global
complete -c "bsdtar" -l "newer" -d "Only include files and directories newer than the specified date." -xa "{}" # global
complete -c "bsdtar" -l "no-acls" -d "Do not archive or extract POSIX.1e or NFSv4 ACLs." # global
complete -c "bsdtar" -l "no-flags" -d "Do not archive or extract file attributes or file flags." # global
complete -c "bsdtar" -l "no-mac-metadata" -d "Do not archive or extract ACLs and extended file attributes using AppleDouble format." # global
complete -c "bsdtar" -l "no-read-sparse" -d "Do not read sparse file information from disk." # global
complete -c "bsdtar" -l "no-same-owner" -d "Do not extract owner and group IDs." # global
complete -c "bsdtar" -l "no-same-permissions" -d "Do not extract full permissions." # global
complete -c "bsdtar" -l "no-xattrs" -d "Do not archive or extract extended file attributes." # global
complete -c "bsdtar" -l "numeric-owner" -d "User and group names in the archive are ignored in favor of the numeric user and group ids." # global
complete -c "bsdtar" -s "O" -l "to-stdout" -d "Files will be written to standard out rather than being extracted to disk." # global
complete -c "bsdtar" -s "o" -l "older" -d "Only include files and directories older than the specified date." -xa "{}" # global
complete -c "bsdtar" -l "one-file-system" -d "Do not cross mount points." # global
complete -c "bsdtar" -l "options" -d "Select optional behaviors for particular modules." -xa "{}" # global
complete -c "bsdtar" -s "P" -l "absolute-paths" -d "Preserve pathnames." # global
complete -c "bsdtar" -s "p" -o "insecur preserve" -d "Preserve file permissions." # global
complete -c "bsdtar" -l "passphrase" -d "The passphrase is used to extract or create an encrypted archive. Currently, zip is the only supported format that supports encryption." -xa "{}" # global
complete -c "bsdtar" -l "posix" -d "Synonym for -format pax." # global
complete -c "bsdtar" -s "q" -l "fast-read" -d "Extract or list only the first archive entry that matches each pattern or filename operand." # global
complete -c "bsdtar" -l "read-sparse" -d "Read sparse file information from disk. Default behavior." # global
complete -c "bsdtar" -s "S" -d "Extract files as sparse files." # global
complete -c "bsdtar" -s "s" -d "Modify file or archive member names according to pattern." -xa "{}" # global
complete -c "bsdtar" -l "safe-writes" -d "Extract files atomically, ensuring applications never see incomplete results." # global
complete -c "bsdtar" -l "same-owner" -d "Extract owner and group IDs. Default if running as root." # global
complete -c "bsdtar" -l "strip-components" -d "Remove the specified number of leading path elements." -xa "{}" # global
complete -c "bsdtar" -s "T" -l "files-from" -d "Read the list of names to be extracted from filename." -xa "{}" # global
complete -c "bsdtar" -l "totals" -d "After archiving all files, print a summary to stderr." # global
complete -c "bsdtar" -s "U" -o "unlink-first" -d "Unlink files before creating them." # global
complete -c "bsdtar" -l "uid" -d "Use the provided user id number and ignore the user name from the archive." -xa "{}" # global
complete -c "bsdtar" -l "uname" -d "Use the provided user name." -xa "{}" # global
complete -c "bsdtar" -l "use-compress-program" -d "Pipe the input or the output through program." -xa "{}" # global
complete -c "bsdtar" -l "owner" -d "Use the provided user, if uid is not provided, name can be either an username or numeric id." -xa "{}" # global
complete -c "bsdtar" -s "v" -l "verbose" -d "Produce verbose output." # global
complete -c "bsdtar" -l "version" -d "Print version and exit." # global
complete -c "bsdtar" -s "w" -o "interactive" -d "Ask for confirmation for every action." # global
complete -c "bsdtar" -s "X" -l "exclude-from" -d "Read a list of exclusion patterns from the specified file." # global
complete -c "bsdtar" -l "xattrs" -d "Archive or extract extended file attributes." # global
complete -c "bsdtar" -s "y" -d "Compress the resulting archive with bzip2." # global
complete -c "bsdtar" -s "Z" -o "uncompress" -d "Compress the resulting archive with compress." # global
complete -c "bsdtar" -s "z" -o "gzip" -d "Compress the resulting archive with gzip." # global