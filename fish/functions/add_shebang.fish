function add_shebang
    # Usage: add_shebang [filename] [shebang_line]
    # Defaults: filename from $argv[1], shebang to #!/usr/bin/env fish
    if test -z "$argv[1]"
        echo "Usage: add_shebang [filename] [shebang_line]"
        return 1
    end
    set -l filename $argv[1]
    set -l shebang '#!/usr/bin/env fish'
    if test (count $argv) -eq 2
        set shebang "#!/usr/bin/env $argv[2]"
    else if string match -rq '[jt]s$' -- $argv[1]
        set shebang "#!/usr/bin/env bun"
    end
    if test (count $argv) -gt 2
        set shebang "$argv[2..]"
    end
    if not test -f $filename
        echo "Error: File not found: $filename" >&2
        return 1
    end
    
    set -l first_line (string trim (head -n1 $filename))
    if head -n1 $filename | rg -q '^#'
        #echo "Shebang already present in $filename: $first_line"
        return 0
    end
    
    # Create backup
    command cp $filename (mktemp)
    
    # Temp file method for safe edit
    #set -l tmp_file (mktemp)
    
    # Prepend shebang to temp (echo adds newline)
    begin
        echo $shebang
        command cat $filename
    end | sponge $filename
    #echo $shebang >$tmp_file
    #cat $filename >>$tmp_file
    
    # Atomic move
    #mv $tmp_file $filename
    
    #echo "Shebang added to $filename"
    #echo "  Added: $shebang"
    #echo "  Backup created: $filename.bak"
    # Optional: Clean up temp if mv succeeds (it does atomically)
end
