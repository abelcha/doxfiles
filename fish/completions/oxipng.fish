complete -c "oxipng" -s "o" -l "opt" -d "Set the optimization level preset." -xa "0 1 2 3 4 5 6 max" # global
complete -c "oxipng" -s "r" -l "recursive" -d "When directories are given as input, traverse the directory trees and optimize all PNG files found." # global
complete -c "oxipng" -l "dir" -d "Write output file(s) to <directory>." -xa "{}" # global
complete -c "oxipng" -l "out" -d "Write output file to <file>" -xa "{}" # global
complete -c "oxipng" -l "stdout" -d "Write output to stdout" # global
complete -c "oxipng" -s "p" -l "preserve" -d "Preserve file permissions and timestamps if possible" # global
complete -c "oxipng" -s "P" -l "pretend" -d "Do not write any files, only show compression results" # global
complete -c "oxipng" -s "s" -d "Strip safely-removable chunks, same as '--strip safe'" # global
complete -c "oxipng" -l "strip" -d "Strip metadata chunks, where <mode> is one of safe, all, <list>." -xa "safe all" # global
complete -c "oxipng" -l "keep" -d "Strip all metadata chunks except those in the comma-separated list." -xa "{}" # global
complete -c "oxipng" -s "a" -l "alpha" -d "Perform additional optimization on images with an alpha channel." # global
complete -c "oxipng" -s "i" -l "interlace" -d "Set the PNG interlacing type, where <type> is one of:" -xa "0 1 keep" # global
complete -c "oxipng" -l "scale16" -d "Forcibly reduce images with 16 bits per channel to 8 bits per channel." # global
complete -c "oxipng" -s "v" -l "verbose" -d "Run in verbose mode (use twice to increase verbosity)" # global
complete -c "oxipng" -s "q" -l "quiet" -d "Run in quiet mode" # global
complete -c "oxipng" -s "f" -l "filters" -d "Perform compression trials with each of the given filter types." -xa "0 1 2 3 4 5 6 7 8 9" # global
complete -c "oxipng" -l "fast" -d "Perform a fast compression evaluation of each enabled filter." # global
complete -c "oxipng" -l "zc" -d "Deflate compression level (0-12) for main compression trials." -xa "{}" # global
complete -c "oxipng" -l "nb" -d "Do not change bit depth" # global
complete -c "oxipng" -l "nc" -d "Do not change color type" # global
complete -c "oxipng" -l "np" -d "Do not change color palette" # global
complete -c "oxipng" -l "ng" -d "Do not change to or from grayscale" # global
complete -c "oxipng" -l "nx" -d "Do not perform any transformations and do not deinterlace by default." # global
complete -c "oxipng" -l "nz" -d "Do not recompress IDAT unless required due to transformations." # global
complete -c "oxipng" -l "fix" -d "Do not perform checksum validation of PNG chunks." # global
complete -c "oxipng" -l "force" -d "Write the output even if it is larger than the input" # global
complete -c "oxipng" -s "Z" -l "zopfli" -d "Use the much slower but stronger Zopfli compressor for main compression trials." # global
complete -c "oxipng" -l "zi" -d "Set the number of iterations to use for Zopfli compression." -xa "{}" # global
complete -c "oxipng" -l "timeout" -d "Maximum amount of time, in seconds, to spend on optimizations." -xa "{}" # global
complete -c "oxipng" -s "t" -l "threads" -d "Set the maximum number of threads to use." -xa "{}" # global
complete -c "oxipng" -l "sequential" -d "Process multiple files sequentially rather than in parallel." # global
complete -c "oxipng" -s "h" -l "help" -d "Print help" # global
complete -c "oxipng" -s "V" -l "version" -d "Print version" # global