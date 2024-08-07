complete -c show-coords -s b -d 'Merges overlapping alignments regardless of match dir or frame and does not display any idenitity information.'
complete -c show-coords -s B -d 'Switch output to btab format'
complete -c show-coords -s c -d 'Include percent coverage information in the output'
complete -c show-coords -s d -d 'Display the alignment direction in the additional FRM columns (default for promer)'
complete -c show-coords -s g -d 'Deprecated option.'
complete -c show-coords -s h -d 'Display help information'
complete -c show-coords -s H -d 'Do not print the output header'
complete -c show-coords -s I -d 'Set minimum percent identity to display' -x
complete -c show-coords -s k -d 'Knockout (do not display) alignments that overlap another alignment in a different frame by more than 50% of their length, AND have a smaller percent similarity or are less than 75% of the size of the other alignment (promer only)'
complete -c show-coords -s l -d 'Include the sequence length information in the output'
complete -c show-coords -s L -d 'Set minimum alignment length to display' -x
complete -c show-coords -s o -d 'Annotate maximal alignments between two sequences, i.e. overlaps between reference and query sequences'
complete -c show-coords -s q -d 'Sort output lines by query IDs and coordinates'
complete -c show-coords -s r -d 'Sort output lines by reference IDs and coordinates'
complete -c show-coords -s T -d 'Switch output to tab-delimited format'
