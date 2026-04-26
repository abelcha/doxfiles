function panexec --description 'Open commands in an equilibrated iTerm2 grid'
    # Parse arguments
    argparse w/new-window -- $argv
    or return

    set -l new_window (set -q _flag_new_window; and echo 1; or echo 0)

    # Read commands from stdin
    set -l commands
    while read -l line
        if test -n (string trim "$line")
            set -a commands "$line"
        end
    end

    set -l N (count $commands)
    if test $N -eq 0
        echo "No commands provided via stdin"
        return 1
    end

    # Calculate grid dimensions
    set -l cols (math -s0 "round(sqrt($N))")
    if test $cols -eq 0
        set cols 1
    end

    set -l base_rows (math -s0 "floor($N / $cols)")
    set -l carry (math -s0 "$N % $cols")

    # Start AppleScript
    set -l script "tell application \"iTerm\"
    activate
"

    if test $new_window -eq 1
        set script "$script
    set win to (create window with default profile)
    tell win
        set target_session to current session
    end tell"
    else
        set script "$script
    if (count windows) is 0 then
        set win to (create window with default profile)
        tell win to set target_session to current session
    else
        set target_session to current session of current window
    end if"
    end

    set script "$script
    set col_sessions to {target_session}
"

    # Create columns
    if test $cols -gt 1
        for i in (seq 2 $cols)
            set script "$script
    tell last item of col_sessions
        set end of col_sessions to (split horizontally with default profile)
    end tell"
        end
    end

    set -l cmd_idx 1
    for i in (seq 1 $cols)
        set -l rows $base_rows
        if test $i -le $carry
            set rows (math $rows + 1)
        end

        set -l raw_cmd $commands[$cmd_idx]
        set -l escaped_cmd (echo -n $raw_cmd | string replace -a '\\' '\\\\' | string replace -a '"' '\\"')

        set script "$script
    tell (item $i of col_sessions)
        write text \"$escaped_cmd\""

        set cmd_idx (math $cmd_idx + 1)

        if test $rows -gt 1
            for j in (seq 2 $rows)
                if test $cmd_idx -le $N
                    set -l next_raw_cmd $commands[$cmd_idx]
                    set -l next_escaped_cmd (echo -n $next_raw_cmd | string replace -a '\\' '\\\\' | string replace -a '"' '\\"')

                    set script "$script
        set new_pane to (split vertically with default profile)
        tell new_pane
            write text \"$next_escaped_cmd\"
        end tell"
                    set cmd_idx (math $cmd_idx + 1)
                end
            end
        end

        set script "$script
    end tell"
    end

    set script "$script
    select (item 1 of col_sessions)
end tell"

    # Run the AppleScript
    osascript -e "$script"
end
