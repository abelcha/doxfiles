function fd
    # argparse --ignore-unknown -- $argv;

    if test -d "$argv[1]"
        if test (count $argv) -eq 1; or str_argopt $argv[2]
            command fd . $argv
            echo (set_color normal --dim )"Changed to "(set_color cyan --dim)"fd . $argv" >/dev/stderr
            return
        end
    end
    command fd $argv
end
