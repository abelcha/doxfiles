complete -c "zet" -l "count-lines" -d "Show the number of times each line occurs in the input" # global
complete -c "zet" -l "count-files" -d "Show the number of files each line occurs in" # global
complete -c "zet" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # global
complete -c "zet" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # global
complete -c "zet" -l "color" -d "WHEN option for color output" -xa "auto always never" # global
complete -c "zet" -s "h" -l "help" -d "Print this message" # global
complete -c "zet" -s "V" -l "version" -d "Print version" # global
complete -f -c "zet" -n "__fish_use_subcommand" -a "union" -d "Prints lines appearing in ANY input file" # sub
complete -f -c "zet" -n "__fish_use_subcommand" -a "intersect" -d "Prints lines appearing in EVERY input file" # sub
complete -f -c "zet" -n "__fish_use_subcommand" -a "diff" -d "Prints lines appearing in the FIRST input file and no other" # sub
complete -f -c "zet" -n "__fish_use_subcommand" -a "single" -d "Prints lines appearing exactly once; with --file, in exactly one file" # sub
complete -f -c "zet" -n "__fish_use_subcommand" -a "multiple" -d "Prints lines appearing more than once; with --files, in more than one file" # sub
complete -f -c "zet" -n "__fish_use_subcommand" -a "help" -d "Print this message" # sub
complete -c "zet" -n "__fish_seen_subcommand_from 'union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union'" -l "color" -d "WHEN option for color output" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect'" -l "color" -d "WHEN option for color output" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff'" -l "color" -d "WHEN option for color output" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single'" -l "color" -d "WHEN option for color output" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple'" -l "color" -d "WHEN option for color output" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help'" -l "color" -d "WHEN option for color output" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union'" -l "count-files" -d "Show the number of files each line occurs in" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union'" -l "color" -xa "auto always never" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union'" -s "h" -l "help" -d "Print this message" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union'" -s "V" -l "version" -d "Print version" # global
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union'" -a "union" -d "Prints lines appearing in ANY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union'" -a "intersect" -d "Prints lines appearing in EVERY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union'" -a "diff" -d "Prints lines appearing in the FIRST input file and no other" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union'" -a "single" -d "Prints lines appearing exactly once; with --file, in exactly one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union'" -a "multiple" -d "Prints lines appearing more than once; with --files, in more than one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union'" -a "help" -d "Print this message" # sub
complete -c "zet" -n "__fish_seen_subcommand_from 'union union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union union'" -l "count-files" -d "Show the number of files each line occurs in" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union union'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union union'" -l "color" -xa "auto always never" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union union'" -s "h" -l "help" -d "Print this message" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union union'" -s "V" -l "version" -d "Print version" # global
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union union'" -a "union" -d "Prints lines appearing in ANY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union union'" -a "intersect" -d "Prints lines appearing in EVERY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union union'" -a "diff" -d "Prints lines appearing in the FIRST input file and no other" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union union'" -a "single" -d "Prints lines appearing exactly once; with --file, in exactly one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union union'" -a "multiple" -d "Prints lines appearing more than once; with --files, in more than one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union union'" -a "help" -d "Print this message" # sub
complete -c "zet" -n "__fish_seen_subcommand_from 'union union union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union union'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union union'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union union'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union union'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union union'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union intersect'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union intersect'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union intersect'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union intersect'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union diff'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union diff'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union diff'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union diff'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union single'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union single'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union single'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union single'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union multiple'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union multiple'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union multiple'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union multiple'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union help'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union help'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union help'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union union help'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect'" -l "count-files" -d "Show the number of files each line occurs in" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect'" -l "color" -xa "auto always never" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect'" -s "h" -l "help" -d "Print this message" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect'" -s "V" -l "version" -d "Print version" # global
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union intersect'" -a "union" -d "Prints lines appearing in ANY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union intersect'" -a "intersect" -d "Prints lines appearing in EVERY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union intersect'" -a "diff" -d "Prints lines appearing in the FIRST input file and no other" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union intersect'" -a "single" -d "Prints lines appearing exactly once; with --file, in exactly one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union intersect'" -a "multiple" -d "Prints lines appearing more than once; with --files, in more than one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union intersect'" -a "help" -d "Print this message" # sub
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect union'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect union'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect union'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect union'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect union'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect intersect'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect intersect'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect intersect'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect intersect'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect diff'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect diff'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect diff'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect diff'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect single'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect single'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect single'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect single'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect multiple'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect multiple'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect multiple'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect multiple'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect help'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect help'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect help'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union intersect help'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff'" -l "count-files" -d "Show the number of files each line occurs in" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff'" -l "color" -xa "auto always never" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff'" -s "h" -l "help" -d "Print this message" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff'" -s "V" -l "version" -d "Print version" # global
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union diff'" -a "union" -d "Prints lines appearing in ANY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union diff'" -a "intersect" -d "Prints lines appearing in EVERY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union diff'" -a "diff" -d "Prints lines appearing in the FIRST input file and no other" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union diff'" -a "single" -d "Prints lines appearing exactly once; with --file, in exactly one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union diff'" -a "multiple" -d "Prints lines appearing more than once; with --files, in more than one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union diff'" -a "help" -d "Print this message" # sub
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff union'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff union'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff union'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff union'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff union'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff intersect'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff intersect'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff intersect'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff intersect'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff diff'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff diff'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff diff'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff diff'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff single'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff single'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff single'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff single'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff multiple'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff multiple'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff multiple'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff multiple'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff help'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff help'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff help'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union diff help'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union single'" -l "count-files" -d "Show the number of files each line occurs in" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union single'" -l "color" -xa "auto always never" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union single'" -s "h" -l "help" -d "Print this message" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union single'" -s "V" -l "version" -d "Print version" # global
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union single'" -a "union" -d "Prints lines appearing in ANY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union single'" -a "intersect" -d "Prints lines appearing in EVERY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union single'" -a "diff" -d "Prints lines appearing in the FIRST input file and no other" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union single'" -a "single" -d "Prints lines appearing exactly once; with --file, in exactly one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union single'" -a "multiple" -d "Prints lines appearing more than once; with --files, in more than one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union single'" -a "help" -d "Print this message" # sub
complete -c "zet" -n "__fish_seen_subcommand_from 'union single union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single union'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single union'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single union'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single union'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single union'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single intersect'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single intersect'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single intersect'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single intersect'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single diff'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single diff'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single diff'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single diff'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single single'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single single'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single single'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single single'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single multiple'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single multiple'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single multiple'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single multiple'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single help'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single help'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single help'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union single help'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple'" -l "count-files" -d "Show the number of files each line occurs in" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple'" -l "color" -d "When to use color" -xa "auto always never" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple'" -s "h" -l "help" -d "Print this message" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple'" -s "V" -l "version" -d "Print version" # global
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union multiple'" -a "union" -d "Prints lines appearing in ANY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union multiple'" -a "intersect" -d "Prints lines appearing in EVERY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union multiple'" -a "diff" -d "Prints lines appearing in the FIRST input file and no other" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union multiple'" -a "single" -d "Prints lines appearing exactly once; with --file, in exactly one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union multiple'" -a "multiple" -d "Prints lines appearing more than once; with --files, in more than one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union multiple'" -a "help" -d "Print this message" # sub
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple union'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple union'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple union'" -l "color" -d "When to use color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple union'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple union'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple intersect'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple intersect'" -l "color" -d "When to use color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple intersect'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple intersect'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple diff'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple diff'" -l "color" -d "When to use color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple diff'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple diff'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple single'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple single'" -l "color" -d "When to use color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple single'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple single'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple multiple'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple multiple'" -l "color" -d "When to use color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple multiple'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple multiple'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple help'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple help'" -l "color" -d "When to use color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple help'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union multiple help'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union help'" -l "count-files" -d "Show the number of files each line occurs in" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union help'" -l "color" -xa "auto always never" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union help'" -s "h" -l "help" -d "Print this message" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'union help'" -s "V" -l "version" -d "Print version" # global
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union help'" -a "union" -d "Prints lines appearing in ANY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union help'" -a "intersect" -d "Prints lines appearing in EVERY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union help'" -a "diff" -d "Prints lines appearing in the FIRST input file and no other" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union help'" -a "single" -d "Prints lines appearing exactly once; with --file, in exactly one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union help'" -a "multiple" -d "Prints lines appearing more than once; with --files, in more than one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'union help'" -a "help" -d "Print this message" # sub
complete -c "zet" -n "__fish_seen_subcommand_from 'union help union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help union'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help union'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help union'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help union'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help union'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help intersect'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help intersect'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help intersect'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help intersect'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help diff'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help diff'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help diff'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help diff'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help single'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help single'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help single'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help single'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help multiple'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help multiple'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help multiple'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help multiple'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help help'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help help'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help help'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'union help help'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect'" -l "count-files" -d "Show the number of files each line occurs in" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect'" -l "color" -xa "auto always never" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect'" -s "h" -l "help" -d "Print this message" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect'" -s "V" -l "version" -d "Print version" # global
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect'" -a "union" -d "Prints lines appearing in ANY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect'" -a "intersect" -d "Prints lines appearing in EVERY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect'" -a "diff" -d "Prints lines appearing in the FIRST input file and no other" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect'" -a "single" -d "Prints lines appearing exactly once; with --file, in exactly one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect'" -a "multiple" -d "Prints lines appearing more than once; with --files, in more than one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect'" -a "help" -d "Print this message" # sub
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union'" -l "count-files" -d "Show the number of files each line occurs in" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union'" -l "color" -d "Color output" -xa "auto always never" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union'" -s "h" -l "help" -d "Print this message" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union'" -s "V" -l "version" -d "Print version" # global
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect union'" -a "union" -d "Prints lines appearing in ANY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect union'" -a "intersect" -d "Prints lines appearing in EVERY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect union'" -a "diff" -d "Prints lines appearing in the FIRST input file and no other" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect union'" -a "single" -d "Prints lines appearing exactly once; with --file, in exactly one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect union'" -a "multiple" -d "Prints lines appearing more than once; with --files, in more than one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect union'" -a "help" -d "Print this message" # sub
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union union'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union union'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union union'" -l "color" -d "Color output" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union union'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union union'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union intersect'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union intersect'" -l "color" -d "Color output" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union intersect'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union intersect'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union diff'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union diff'" -l "color" -d "Color output" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union diff'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union diff'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union single'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union single'" -l "color" -d "Color output" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union single'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union single'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union multiple'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union multiple'" -l "color" -d "Color output" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union multiple'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union multiple'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union help'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union help'" -l "color" -d "Color output" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union help'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect union help'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect'" -l "count-files" -d "Show the number of files each line occurs in" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect'" -l "color" -xa "auto always never" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect'" -s "h" -l "help" -d "Print this message" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect'" -s "V" -l "version" -d "Print version" # global
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect'" -a "union" -d "Prints lines appearing in ANY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect'" -a "intersect" -d "Prints lines appearing in EVERY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect'" -a "diff" -d "Prints lines appearing in the FIRST input file and no other" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect'" -a "single" -d "Prints lines appearing exactly once; with --file, in exactly one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect'" -a "multiple" -d "Prints lines appearing more than once; with --files, in more than one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect'" -a "help" -d "Print this message" # sub
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect union'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect union'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect union'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect union'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect union'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect intersect'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect intersect'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect intersect'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect intersect'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect diff'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect diff'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect diff'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect diff'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect single'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect single'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect single'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect single'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect multiple'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect multiple'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect multiple'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect multiple'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect help'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect help'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect help'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect intersect help'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff'" -l "count-files" -d "Show the number of files each line occurs in" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff'" -l "color" -d "color output" -xa "auto always never" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff'" -s "h" -l "help" -d "Print this message" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff'" -s "V" -l "version" -d "Print version" # global
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect diff'" -a "union" -d "Prints lines appearing in ANY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect diff'" -a "intersect" -d "Prints lines appearing in EVERY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect diff'" -a "diff" -d "Prints lines appearing in the FIRST input file and no other" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect diff'" -a "single" -d "Prints lines appearing exactly once; with --file, in exactly one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect diff'" -a "multiple" -d "Prints lines appearing more than once; with --files, in more than one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect diff'" -a "help" -d "Print this message" # sub
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff union'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff union'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff union'" -l "color" -d "color output" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff union'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff union'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff intersect'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff intersect'" -l "color" -d "color output" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff intersect'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff intersect'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff diff'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff diff'" -l "color" -d "color output" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff diff'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff diff'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff single'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff single'" -l "color" -d "color output" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff single'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff single'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff multiple'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff multiple'" -l "color" -d "color output" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff multiple'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff multiple'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff help'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff help'" -l "color" -d "color output" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff help'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect diff help'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single'" -l "count-files" -d "Show the number of files each line occurs in" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single'" -l "color" -xa "auto always never" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single'" -s "h" -l "help" -d "Print this message" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single'" -s "V" -l "version" -d "Print version" # global
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect single'" -a "union" -d "Prints lines appearing in ANY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect single'" -a "intersect" -d "Prints lines appearing in EVERY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect single'" -a "diff" -d "Prints lines appearing in the FIRST input file and no other" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect single'" -a "single" -d "Prints lines appearing exactly once; with --file, in exactly one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect single'" -a "multiple" -d "Prints lines appearing more than once; with --files, in more than one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect single'" -a "help" -d "Print this message" # sub
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single union'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single union'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single union'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single union'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single union'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single intersect'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single intersect'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single intersect'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single intersect'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single diff'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single diff'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single diff'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single diff'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single single'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single single'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single single'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single single'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single multiple'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single multiple'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single multiple'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single multiple'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single help'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single help'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single help'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect single help'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple'" -l "count-files" -d "Show the number of files each line occurs in" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple'" -l "color" -xa "auto always never" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple'" -s "h" -l "help" -d "Print this message" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple'" -s "V" -l "version" -d "Print version" # global
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple'" -a "union" -d "Prints lines appearing in ANY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple'" -a "intersect" -d "Prints lines appearing in EVERY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple'" -a "diff" -d "Prints lines appearing in the FIRST input file and no other" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple'" -a "single" -d "Prints lines appearing exactly once; with --file, in exactly one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple'" -a "multiple" -d "Prints lines appearing more than once; with --files, in more than one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple'" -a "help" -d "Print this message" # sub
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple union'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple union'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple union'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple union'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple union'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple intersect'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple intersect'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple intersect'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple intersect'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple diff'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple diff'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple diff'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple diff'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple single'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple single'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple single'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple single'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple multiple'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple multiple'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple multiple'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple multiple'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple help'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple help'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple help'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect multiple help'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help'" -l "count-files" -d "Show the number of files each line occurs in" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help'" -l "color" -d "Color output" -xa "auto always never" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help'" -s "h" -l "help" -d "Print this message" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help'" -s "V" -l "version" -d "Print version" # global
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect help'" -a "union" -d "Prints lines appearing in ANY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect help'" -a "intersect" -d "Prints lines appearing in EVERY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect help'" -a "diff" -d "Prints lines appearing in the FIRST input file and no other" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect help'" -a "single" -d "Prints lines appearing exactly once; with --file, in exactly one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect help'" -a "multiple" -d "Prints lines appearing more than once; with --files, in more than one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'intersect help'" -a "help" -d "Print this message" # sub
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help union'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help union'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help union'" -l "color" -d "Color output" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help union'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help union'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help intersect'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help intersect'" -l "color" -d "Color output" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help intersect'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help intersect'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help diff'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help diff'" -l "color" -d "Color output" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help diff'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help diff'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help single'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help single'" -l "color" -d "Color output" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help single'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help single'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help multiple'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help multiple'" -l "color" -d "Color output" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help multiple'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help multiple'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help help'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help help'" -l "color" -d "Color output" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help help'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'intersect help help'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff'" -l "count-files" -d "Show the number of files each line occurs in" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff'" -l "color" -xa "auto always never" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff'" -s "h" -l "help" -d "Print this message" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff'" -s "V" -l "version" -d "Print version" # global
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff'" -a "union" -d "Prints lines appearing in ANY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff'" -a "intersect" -d "Prints lines appearing in EVERY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff'" -a "diff" -d "Prints lines appearing in the FIRST input file and no other" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff'" -a "single" -d "Prints lines appearing exactly once; with --file, in exactly one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff'" -a "multiple" -d "Prints lines appearing more than once; with --files, in more than one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff'" -a "help" -d "Print this message" # sub
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union'" -l "count-files" -d "Show the number of files each line occurs in" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union'" -l "color" -xa "auto always never" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union'" -s "h" -l "help" -d "Print this message" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union'" -s "V" -l "version" -d "Print version" # global
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff union'" -a "union" -d "Prints lines appearing in ANY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff union'" -a "intersect" -d "Prints lines appearing in EVERY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff union'" -a "diff" -d "Prints lines appearing in the FIRST input file and no other" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff union'" -a "single" -d "Prints lines appearing exactly once; with --file, in exactly one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff union'" -a "multiple" -d "Prints lines appearing more than once; with --files, in more than one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff union'" -a "help" -d "Print this message" # sub
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union union'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union union'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union union'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union union'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union union'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union intersect'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union intersect'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union intersect'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union intersect'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union diff'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union diff'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union diff'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union diff'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union single'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union single'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union single'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union single'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union multiple'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union multiple'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union multiple'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union multiple'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union help'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union help'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union help'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff union help'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect'" -l "count-files" -d "Show the number of files each line occurs in" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect'" -l "color" -xa "auto always never" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect'" -s "h" -l "help" -d "Print this message" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect'" -s "V" -l "version" -d "Print version" # global
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff intersect'" -a "union" -d "Prints lines appearing in ANY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff intersect'" -a "intersect" -d "Prints lines appearing in EVERY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff intersect'" -a "diff" -d "Prints lines appearing in the FIRST input file and no other" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff intersect'" -a "single" -d "Prints lines appearing exactly once; with --file, in exactly one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff intersect'" -a "multiple" -d "Prints lines appearing more than once; with --files, in more than one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff intersect'" -a "help" -d "Print this message" # sub
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect union'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect union'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect union'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect union'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect union'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect intersect'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect intersect'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect intersect'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect intersect'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect diff'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect diff'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect diff'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect diff'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect single'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect single'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect single'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect single'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect multiple'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect multiple'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect multiple'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect multiple'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect help'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect help'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect help'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff intersect help'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff'" -l "count-files" -d "Show the number of files each line occurs in" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff'" -l "color" -xa "auto always never" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff'" -s "h" -l "help" -d "Print this message" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff'" -s "V" -l "version" -d "Print version" # global
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff diff'" -a "union" -d "Prints lines appearing in ANY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff diff'" -a "intersect" -d "Prints lines appearing in EVERY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff diff'" -a "diff" -d "Prints lines appearing in the FIRST input file and no other" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff diff'" -a "single" -d "Prints lines appearing exactly once; with --file, in exactly one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff diff'" -a "multiple" -d "Prints lines appearing more than once; with --files, in more than one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff diff'" -a "help" -d "Print this message" # sub
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff union'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff union'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff union'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff union'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff union'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff intersect'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff intersect'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff intersect'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff intersect'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff diff'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff diff'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff diff'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff diff'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff single'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff single'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff single'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff single'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff multiple'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff multiple'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff multiple'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff multiple'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff help'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff help'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff help'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff diff help'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single'" -l "count-files" -d "Show the number of files each line occurs in" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single'" -l "color" -xa "auto always never" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single'" -s "h" -l "help" -d "Print this message" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single'" -s "V" -l "version" -d "Print version" # global
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff single'" -a "union" -d "Prints lines appearing in ANY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff single'" -a "intersect" -d "Prints lines appearing in EVERY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff single'" -a "diff" -d "Prints lines appearing in the FIRST input file and no other" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff single'" -a "single" -d "Prints lines appearing exactly once; with --file, in exactly one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff single'" -a "multiple" -d "Prints lines appearing more than once; with --files, in more than one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff single'" -a "help" -d "Print this message" # sub
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single union'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single union'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single union'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single union'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single union'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single intersect'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single intersect'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single intersect'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single intersect'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single diff'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single diff'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single diff'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single diff'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single single'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single single'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single single'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single single'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single multiple'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single multiple'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single multiple'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single multiple'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single help'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single help'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single help'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff single help'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple'" -l "count-files" -d "Show the number of files each line occurs in" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple'" -l "color" -xa "auto always never" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple'" -s "h" -l "help" -d "Print this message" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple'" -s "V" -l "version" -d "Print version" # global
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff multiple'" -a "union" -d "Prints lines appearing in ANY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff multiple'" -a "intersect" -d "Prints lines appearing in EVERY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff multiple'" -a "diff" -d "Prints lines appearing in the FIRST input file and no other" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff multiple'" -a "single" -d "Prints lines appearing exactly once; with --file, in exactly one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff multiple'" -a "multiple" -d "Prints lines appearing more than once; with --files, in more than one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff multiple'" -a "help" -d "Print this message" # sub
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple union'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple union'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple union'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple union'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple union'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple intersect'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple intersect'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple intersect'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple intersect'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple diff'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple diff'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple diff'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple diff'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple single'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple single'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple single'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple single'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple multiple'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple multiple'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple multiple'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple multiple'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple help'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple help'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple help'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff multiple help'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help'" -l "count-files" -d "Show the number of files each line occurs in" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help'" -l "color" -xa "auto always never" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help'" -s "h" -l "help" -d "Print this message" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help'" -s "V" -l "version" -d "Print version" # global
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff help'" -a "union" -d "Prints lines appearing in ANY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff help'" -a "intersect" -d "Prints lines appearing in EVERY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff help'" -a "diff" -d "Prints lines appearing in the FIRST input file and no other" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff help'" -a "single" -d "Prints lines appearing exactly once; with --file, in exactly one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff help'" -a "multiple" -d "Prints lines appearing more than once; with --files, in more than one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'diff help'" -a "help" -d "Print this message" # sub
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help union'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help union'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help union'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help union'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help union'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help intersect'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help intersect'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help intersect'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help intersect'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help diff'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help diff'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help diff'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help diff'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help single'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help single'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help single'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help single'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help multiple'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help multiple'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help multiple'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help multiple'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help help'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help help'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help help'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'diff help help'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single'" -l "count-files" -d "Show the number of files each line occurs in" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single'" -l "color" -xa "auto always never" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single'" -s "h" -l "help" -d "Print this message" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single'" -s "V" -l "version" -d "Print version" # global
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single'" -a "union" -d "Prints lines appearing in ANY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single'" -a "intersect" -d "Prints lines appearing in EVERY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single'" -a "diff" -d "Prints lines appearing in the FIRST input file and no other" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single'" -a "single" -d "Prints lines appearing exactly once; with --file, in exactly one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single'" -a "multiple" -d "Prints lines appearing more than once; with --files, in more than one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single'" -a "help" -d "Print this message" # sub
complete -c "zet" -n "__fish_seen_subcommand_from 'single union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single union'" -l "count-files" -d "Show the number of files each line occurs in" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single union'" -l "file" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single union'" -l "files" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single union'" -l "color" -xa "auto always never" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single union'" -s "h" -l "help" -d "Print this message" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single union'" -s "V" -l "version" -d "Print version" # global
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single union'" -a "union" -d "Prints lines appearing in ANY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single union'" -a "intersect" -d "Prints lines appearing in EVERY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single union'" -a "diff" -d "Prints lines appearing in the FIRST input file and no other" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single union'" -a "single" -d "Prints lines appearing exactly once; with --file, in exactly one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single union'" -a "multiple" -d "Prints lines appearing more than once; with --files, in more than one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single union'" -a "help" -d "Print this message" # sub
complete -c "zet" -n "__fish_seen_subcommand_from 'single union union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union union'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union union'" -l "file" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union union'" -l "files" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union union'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union union'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union union'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union intersect'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union intersect'" -l "file" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union intersect'" -l "files" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union intersect'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union intersect'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union intersect'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union diff'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union diff'" -l "file" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union diff'" -l "files" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union diff'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union diff'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union diff'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union single'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union single'" -l "file" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union single'" -l "files" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union single'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union single'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union single'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union multiple'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union multiple'" -l "file" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union multiple'" -l "files" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union multiple'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union multiple'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union multiple'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union help'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union help'" -l "file" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union help'" -l "files" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union help'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union help'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single union help'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect'" -l "count-files" -d "Show the number of files each line occurs in" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect'" -l "color" -xa "auto always never" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect'" -s "h" -l "help" -d "Print this message" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect'" -s "V" -l "version" -d "Print version" # global
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single intersect'" -a "union" -d "Prints lines appearing in ANY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single intersect'" -a "intersect" -d "Prints lines appearing in EVERY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single intersect'" -a "diff" -d "Prints lines appearing in the FIRST input file and no other" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single intersect'" -a "single" -d "Prints lines appearing exactly once; with --file, in exactly one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single intersect'" -a "multiple" -d "Prints lines appearing more than once; with --files, in more than one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single intersect'" -a "help" -d "Print this message" # sub
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect union'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect union'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect union'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect union'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect union'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect intersect'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect intersect'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect intersect'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect intersect'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect diff'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect diff'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect diff'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect diff'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect single'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect single'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect single'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect single'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect multiple'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect multiple'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect multiple'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect multiple'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect help'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect help'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect help'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single intersect help'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff'" -l "count-files" -d "Show the number of files each line occurs in" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff'" -l "color" -xa "auto always never" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff'" -s "h" -l "help" -d "Print this message" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff'" -s "V" -l "version" -d "Print version" # global
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single diff'" -a "union" -d "Prints lines appearing in ANY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single diff'" -a "intersect" -d "Prints lines appearing in EVERY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single diff'" -a "diff" -d "Prints lines appearing in the FIRST input file and no other" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single diff'" -a "single" -d "Prints lines appearing exactly once; with --file, in exactly one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single diff'" -a "multiple" -d "Prints lines appearing more than once; with --files, in more than one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single diff'" -a "help" -d "Print this message" # sub
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff union'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff union'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff union'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff union'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff union'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff intersect'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff intersect'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff intersect'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff intersect'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff diff'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff diff'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff diff'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff diff'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff single'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff single'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff single'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff single'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff multiple'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff multiple'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff multiple'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff multiple'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff help'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff help'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff help'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single diff help'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single single'" -l "count-files" -d "Show the number of files each line occurs in" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single single'" -l "color" -xa "auto always never" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single single'" -s "h" -l "help" -d "Print this message" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single single'" -s "V" -l "version" -d "Print version" # global
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single single'" -a "union" -d "Prints lines appearing in ANY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single single'" -a "intersect" -d "Prints lines appearing in EVERY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single single'" -a "diff" -d "Prints lines appearing in the FIRST input file and no other" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single single'" -a "single" -d "Prints lines appearing exactly once; with --file, in exactly one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single single'" -a "multiple" -d "Prints lines appearing more than once; with --files, in more than one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single single'" -a "help" -d "Print this message" # sub
complete -c "zet" -n "__fish_seen_subcommand_from 'single single union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single union'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single union'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single union'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single union'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single union'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single intersect'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single intersect'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single intersect'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single intersect'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single diff'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single diff'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single diff'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single diff'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single single'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single single'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single single'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single single'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single multiple'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single multiple'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single multiple'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single multiple'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single help'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single help'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single help'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single single help'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple'" -l "count-files" -d "Show the number of files each line occurs in" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple'" -l "color" -xa "auto always never" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple'" -s "h" -l "help" -d "Print this message" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple'" -s "V" -l "version" -d "Print version" # global
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single multiple'" -a "union" -d "Prints lines appearing in ANY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single multiple'" -a "intersect" -d "Prints lines appearing in EVERY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single multiple'" -a "diff" -d "Prints lines appearing in the FIRST input file and no other" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single multiple'" -a "single" -d "Prints lines appearing exactly once; with --file, in exactly one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single multiple'" -a "multiple" -d "Prints lines appearing more than once; with --files, in more than one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single multiple'" -a "help" -d "Print this message" # sub
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple union'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple union'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple union'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple union'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple union'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple intersect'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple intersect'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple intersect'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple intersect'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple diff'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple diff'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple diff'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple diff'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple single'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple single'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple single'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple single'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple multiple'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple multiple'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple multiple'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple multiple'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple help'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple help'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple help'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single multiple help'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single help'" -l "count-files" -d "Show the number of files each line occurs in" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single help'" -l "color" -xa "auto always never" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single help'" -s "h" -l "help" -d "Print this message" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'single help'" -s "V" -l "version" -d "Print version" # global
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single help'" -a "union" -d "Prints lines appearing in ANY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single help'" -a "intersect" -d "Prints lines appearing in EVERY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single help'" -a "diff" -d "Prints lines appearing in the FIRST input file and no other" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single help'" -a "single" -d "Prints lines appearing exactly once; with --file, in exactly one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single help'" -a "multiple" -d "Prints lines appearing more than once; with --files, in more than one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'single help'" -a "help" -d "Print this message" # sub
complete -c "zet" -n "__fish_seen_subcommand_from 'single help union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help union'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help union'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help union'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help union'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help union'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help intersect'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help intersect'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help intersect'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help intersect'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help diff'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help diff'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help diff'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help diff'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help single'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help single'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help single'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help single'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help multiple'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help multiple'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help multiple'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help multiple'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help help'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help help'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help help'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'single help help'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple'" -l "count-files" -d "Show the number of files each line occurs in" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple'" -l "color" -xa "auto always never" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple'" -s "h" -l "help" -d "Print this message" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple'" -s "V" -l "version" -d "Print version" # global
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple'" -a "union" -d "Prints lines appearing in ANY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple'" -a "intersect" -d "Prints lines appearing in EVERY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple'" -a "diff" -d "Prints lines appearing in the FIRST input file and no other" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple'" -a "single" -d "Prints lines appearing exactly once; with --file, in exactly one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple'" -a "multiple" -d "Prints lines appearing more than once; with --files, in more than one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple'" -a "help" -d "Print this message" # sub
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union'" -l "count-files" -d "Show the number of files each line occurs in" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union'" -l "color" -xa "auto always never" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union'" -s "h" -l "help" -d "Print this message" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union'" -s "V" -l "version" -d "Print version" # global
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple union'" -a "union" -d "Prints lines appearing in ANY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple union'" -a "intersect" -d "Prints lines appearing in EVERY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple union'" -a "diff" -d "Prints lines appearing in the FIRST input file and no other" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple union'" -a "single" -d "Prints lines appearing exactly once; with --file, in exactly one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple union'" -a "multiple" -d "Prints lines appearing more than once; with --files, in more than one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple union'" -a "help" -d "Print this message" # sub
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union union'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union union'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union union'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union union'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union union'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union intersect'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union intersect'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union intersect'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union intersect'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union diff'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union diff'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union diff'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union diff'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union single'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union single'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union single'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union single'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union multiple'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union multiple'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union multiple'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union multiple'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union help'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union help'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union help'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple union help'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect'" -l "count-files" -d "Show the number of files each line occurs in" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect'" -l "color" -xa "auto always never" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect'" -s "h" -l "help" -d "Print this message" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect'" -s "V" -l "version" -d "Print version" # global
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect'" -a "union" -d "Prints lines appearing in ANY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect'" -a "intersect" -d "Prints lines appearing in EVERY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect'" -a "diff" -d "Prints lines appearing in the FIRST input file and no other" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect'" -a "single" -d "Prints lines appearing exactly once; with --file, in exactly one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect'" -a "multiple" -d "Prints lines appearing more than once; with --files, in more than one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect'" -a "help" -d "Print this message" # sub
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect union'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect union'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect union'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect union'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect union'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect intersect'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect intersect'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect intersect'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect intersect'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect diff'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect diff'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect diff'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect diff'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect single'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect single'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect single'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect single'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect multiple'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect multiple'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect multiple'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect multiple'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect help'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect help'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect help'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple intersect help'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff'" -l "count-files" -d "Show the number of files each line occurs in" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff'" -l "color" -xa "auto always never" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff'" -s "h" -l "help" -d "Print this message" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff'" -s "V" -l "version" -d "Print version" # global
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple diff'" -a "union" -d "Prints lines appearing in ANY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple diff'" -a "intersect" -d "Prints lines appearing in EVERY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple diff'" -a "diff" -d "Prints lines appearing in the FIRST input file and no other" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple diff'" -a "single" -d "Prints lines appearing exactly once; with --file, in exactly one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple diff'" -a "multiple" -d "Prints lines appearing more than once; with --files, in more than one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple diff'" -a "help" -d "Print this message" # sub
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff union'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff union'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff union'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff union'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff union'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff intersect'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff intersect'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff intersect'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff intersect'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff diff'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff diff'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff diff'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff diff'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff single'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff single'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff single'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff single'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff multiple'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff multiple'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff multiple'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff multiple'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff help'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff help'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff help'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple diff help'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single'" -l "count-files" -d "Show the number of files each line occurs in" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single'" -l "color" -xa "auto always never" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single'" -s "h" -l "help" -d "Print this message" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single'" -s "V" -l "version" -d "Print version" # global
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple single'" -a "union" -d "Prints lines appearing in ANY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple single'" -a "intersect" -d "Prints lines appearing in EVERY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple single'" -a "diff" -d "Prints lines appearing in the FIRST input file and no other" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple single'" -a "single" -d "Prints lines appearing exactly once; with --file, in exactly one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple single'" -a "multiple" -d "Prints lines appearing more than once; with --files, in more than one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple single'" -a "help" -d "Print this message" # sub
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single union'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single union'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single union'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single union'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single union'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single intersect'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single intersect'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single intersect'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single intersect'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single diff'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single diff'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single diff'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single diff'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single single'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single single'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single single'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single single'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single multiple'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single multiple'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single multiple'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single multiple'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single help'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single help'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single help'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple single help'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple'" -l "count-files" -d "Show the number of files each line occurs in" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple'" -l "color" -xa "auto always never" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple'" -s "h" -l "help" -d "Print this message" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple'" -s "V" -l "version" -d "Print version" # global
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple'" -a "union" -d "Prints lines appearing in ANY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple'" -a "intersect" -d "Prints lines appearing in EVERY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple'" -a "diff" -d "Prints lines appearing in the FIRST input file and no other" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple'" -a "single" -d "Prints lines appearing exactly once; with --file, in exactly one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple'" -a "multiple" -d "Prints lines appearing more than once; with --files, in more than one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple'" -a "help" -d "Print this message" # sub
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple union'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple union'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple union'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple union'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple union'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple intersect'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple intersect'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple intersect'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple intersect'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple diff'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple diff'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple diff'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple diff'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple single'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple single'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple single'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple single'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple multiple'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple multiple'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple multiple'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple multiple'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple help'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple help'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple help'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple multiple help'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help'" -l "count-files" -d "Show the number of files each line occurs in" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help'" -l "color" -d "[possible values: auto, always, never]" -xa "auto always never" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help'" -s "h" -l "help" -d "Print this message" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help'" -s "V" -l "version" -d "Print version" # global
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple help'" -a "union" -d "Prints lines appearing in ANY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple help'" -a "intersect" -d "Prints lines appearing in EVERY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple help'" -a "diff" -d "Prints lines appearing in the FIRST input file and no other" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple help'" -a "single" -d "Prints lines appearing exactly once; with --file, in exactly one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple help'" -a "multiple" -d "Prints lines appearing more than once; with --files, in more than one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'multiple help'" -a "help" -d "Print this message" # sub
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help union'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help union'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help union'" -l "color" -d "[possible values: auto, always, never]" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help union'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help union'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help intersect'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help intersect'" -l "color" -d "[possible values: auto, always, never]" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help intersect'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help intersect'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help diff'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help diff'" -l "color" -d "[possible values: auto, always, never]" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help diff'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help diff'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help single'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help single'" -l "color" -d "[possible values: auto, always, never]" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help single'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help single'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help multiple'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help multiple'" -l "color" -d "[possible values: auto, always, never]" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help multiple'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help multiple'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help help'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help help'" -l "color" -d "[possible values: auto, always, never]" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help help'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'multiple help help'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'help'" -l "count-files" -d "Show the number of files each line occurs in" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'help'" -l "color" -xa "auto always never" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'help'" -s "h" -l "help" -d "Print this message" # global
complete -c "zet" -n "__fish_seen_subcommand_from 'help'" -s "V" -l "version" -d "Print version" # global
complete -f -c "zet" -n "__fish_seen_subcommand_from 'help'" -a "union" -d "Prints lines appearing in ANY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'help'" -a "intersect" -d "Prints lines appearing in EVERY input file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'help'" -a "diff" -d "Prints lines appearing in the FIRST input file and no other" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'help'" -a "single" -d "Prints lines appearing exactly once; with --file, in exactly one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'help'" -a "multiple" -d "Prints lines appearing more than once; with --files, in more than one file" # sub
complete -f -c "zet" -n "__fish_seen_subcommand_from 'help'" -a "help" -d "Print this message" # sub
complete -c "zet" -n "__fish_seen_subcommand_from 'help union'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help union'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help union'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help union'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help union'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help union'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help union'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help intersect'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help intersect'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help intersect'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help intersect'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help intersect'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help intersect'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help intersect'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help diff'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help diff'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help diff'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help diff'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help diff'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help diff'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help diff'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help single'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help single'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help single'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help single'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help single'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help single'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help single'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help multiple'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help multiple'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help multiple'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help multiple'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help multiple'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help multiple'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help multiple'" -s "V" -l "version" -d "Print version" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help help'" -l "count-lines" -d "Show the number of times each line occurs in the input" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help help'" -l "count-files" -d "Show the number of files each line occurs in" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help help'" -s "c" -l "count" -d "Like --count-lines, but if --files is present, like --count-files" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help help'" -l "file[s]" -d "To count as multiple, a line must occur in more than one file. Affects the single and multiple commands, as well as the -c and --count options" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help help'" -l "color" -xa "auto always never" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help help'" -s "h" -l "help" -d "Print this message" # subcommands flags
complete -c "zet" -n "__fish_seen_subcommand_from 'help help'" -s "V" -l "version" -d "Print version" # subcommands flags