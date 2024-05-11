complete -c rapidgzip -s d -l decompress -d 'Force decompression. Only for compatibility. No'
complete -c rapidgzip -l import-index -d 'arg  Uses an existing gzip index.'
complete -c rapidgzip -l export-index -d 'arg  Write out a gzip index file.'
complete -c rapidgzip -l count -d 'Prints the decompressed size.'
complete -c rapidgzip -s l -l count-lines -d 'Prints the number of newline characters in the'
complete -c rapidgzip -l analyze -d 'Print output about the internal file format'
complete -c rapidgzip -l chunk-size -d 'arg      The chunk size decoded by the parallel workers'
complete -c rapidgzip -l verify -d 'Verify CRC32 checksum. Will slow down'
complete -c rapidgzip -l no-verify -d 'Do not verify CRC32 checksum. Might speed up'
complete -c rapidgzip -l io-read-method -d 'arg  Option to force a certain I/O method for'
complete -c rapidgzip -s c -l stdout -d 'Output to standard output. This is the'
complete -c rapidgzip -s f -l force -d 'Force overwriting existing output files.'
complete -c rapidgzip -s o -l output -d 'arg              Output file. If none is given, use the'
complete -c rapidgzip -s k -l keep -d 'Keep (do not delete) input file. Only for'
complete -c rapidgzip -s P -l decoder-parallelism -d arg
complete -c rapidgzip -s h -l help -d 'Print this help message.'
complete -c rapidgzip -s q -l quiet -d 'Suppress noncritical error messages.'
complete -c rapidgzip -s v -l verbose -d 'Print debug output and profiling statistics.'
complete -c rapidgzip -n __fish_no_arguments -s V -l version -d 'Display software version.'
complete -c rapidgzip -l oss-attributions -d 'Display open-source software licenses.'
complete -c rapidgzip -l oss-attributions-yaml -d 'Display open-source software licenses in'