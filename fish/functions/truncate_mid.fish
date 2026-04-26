function truncate_mid --description 'Truncate file. Usage: truncate_mid [-c CHARS] [-n LINES] [file]'
    set max_chars 0
    set max_lines 0
    set file ''
    set tmpfile (mktemp)

    # Parse args
    while set -q argv[1]
        switch $argv[1]
            case -c --chars
                set max_chars $argv[2]
                set -e argv[2]
                set -e argv[1]
            case -n --lines
                set max_lines $argv[2]
                set -e argv[2]
                set -e argv[1]
            case '-*'
                echo "Unknown option: $argv[1]" >&2
                command rm -f $tmpfile
                return 1
            case '*'
                set file $argv[1]
                set -e argv[1]
        end
    end

    # If no file, use stdin
    if test -z "$file"
        if test -t 0
            echo "Usage: truncate_mid [-c|--chars N] [-n|--lines N] [file]" >&2
            echo "  Or pipe via stdin: cat file | truncate_mid -c 100" >&2
            command rm -f $tmpfile
            return 1
        end
        command cat > $tmpfile
        set file $tmpfile
    end

    # Stage 1: limit by lines if specified
    if test $max_lines -gt 0
        set lines (wc -l < $file | string trim)
        if test $lines -gt $max_lines
            set half (math "floor($max_lines / 2)")
            set remaining (math "$lines - $max_lines")
            set tmpfile2 (mktemp)
            ghead -n $half $file >$tmpfile2
            echo "[$remaining lines more]" >>$tmpfile2
            gtail -n $half $file >>$tmpfile2
            set file $tmpfile2
            command rm -f $tmpfile
            set tmpfile $tmpfile2
        end
    end

    # Stage 2: limit by chars if specified
    if test $max_chars -gt 0
        set len (wc -c < $file | string trim)
        if test $len -gt $max_chars
            set remaining (math "$len - $max_chars")
            set half (math "floor($max_chars / 2 - 1)")
            ghead -c $half $file
            echo -n "[$remaining characters more]"
            gtail -c $half $file
            echo
            command rm -f $tmpfile
            return 0
        end
    end

    # Output final result (no char truncation needed)
    gcat $file
    command rm -f $tmpfile
end
