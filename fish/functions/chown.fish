function chown
    if test (count $argv) -eq 1 >&-
        stat -f "%Su %Sg" $argv[1]
    else
        command chown $argv
    end
end
