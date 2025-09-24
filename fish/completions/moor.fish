source <?"$__fish_config_dir/completions/chroma.fish"

complete -c moor -o colors -l colors -d "Highlighting palette size" -xa "8 16 256 16M auto" # global
complete -c moor -o debug -l debug -d "Print debug logs after exiting" # global
complete -c moor -o follow -l follow -d "Follow piped input just like \"tail -f\"" # global
complete -c moor -o lang -l lang -d "Mime type or file ext" -x -a "$CHROMA_LEXERS" # global
complete -c moor -o mousemode -l mousemode -d "Mouse mode" -xa "auto select scroll" # global
complete -c moor -o no-clear-on-exit -l no-clear-on-exit -d "Retain screen contents when exiting moor" # global
complete -c moor -o no-clear-on-exit-margin -l no-clear-on-exit-margin -d "Number of lines to leave for your shell prompt, defaults to 1 (default 1)" # global
complete -c moor -o no-linenumbers -l no-linenumbers -d "Hide line numbers on startup, press left arrow key to show" # global
complete -c moor -o no-reformat -l no-reformat -d "No effect, kept for compatibility. See --reformat (default true)" # global
complete -c moor -o no-statusbar -l no-statusbar -d "Hide the status bar, toggle with '='" # global
complete -c moor -o quit-if-one-screen -l quit-if-one-screen -d "Don't page if contents fits on one screen. Affected by --no-clear-on-exit-margin." # global
complete -c moor -o reformat -l reformat -d "Reformat some input files (JSON)" # global
complete -c moor -o render-unprintable -l render-unprintable -d "How unprintable characters are rendered" -xa "highlight whitespace" # global
complete -c moor -o scroll-left-hint -l scroll-left-hint -d "Shown when view can scroll left. One character with optional ANSI highlighting." # global
complete -c moor -o scroll-right-hint -l scroll-right-hint -d "Shown when view can scroll right. One character with optional ANSI highlighting." # global
complete -c moor -o shift -l shift -d "Horizontal scroll amount >=1, defaults to 16" # global
complete -c moor -o statusbar -l statusbar -d "Status bar style" -xa "inverse plain bold" # global
complete -c moor -o style -l style -d "Highlighting style from chroma" -x -a "$CHROMA_STYLES"
complete -c moor -o terminal-fg -l terminal-fg -d "Use terminal foreground color rather than style foreground for plain text" # global
complete -c moor -o trace -l trace -d "Print trace logs after exiting" # global
complete -c moor -o version -l version -d "Prints the moor version number" # global
complete -c moor -o wrap -l wrap -d "Wrap long lines" # global
complete -c moor -s "+" -d "+\\d Scroll to line \\d" -x -a '(seq 1 1000)'
