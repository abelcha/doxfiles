function at
    argparse h/help 'C/context=' -- $argv
    or return
    if set -ql _flag_context; and test -n "$argv[2]"
        #echo set context
        set argv[3] (math $argv[2] + $_flag_context)
        set argv[2] (math $argv[2] - $_flag_context)
    end
    if string match -g -r '(.+)\:(\d+)\:(\d+)' -- $p | read -L path line col
        echo todo
        return
    end
    #set -S argv
    if test (count $argv) -lt 2
        bat --style header,header-filesize,header-filename,grid --theme Nord $argv
        echo "Usage: at_range <filename> <start_line> [end_line]"
        echo "  - Outputs lines from <start_line> to end if no <end_line>."
        echo "  - Outputs lines from <start_line> to <end_line> inclusive if specified."
        return 1
    end
    
    set -l file $argv[1]
    set -l start $argv[2]
    
    if test (count $argv) -lt 3
        set argv[3] $argv[2]
    end
    set -l end $argv[3]
    sed -n "$start,$end p" "$file"
end
