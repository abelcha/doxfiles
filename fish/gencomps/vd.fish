complete -f -c vd -n __fish_use_subcommand -a -b -d '--batch             replay in batch mode (with no interface)'
complete -f -c vd -n __fish_use_subcommand -a -i -d '--interactive       launch VisiData in interactive mode after batch'
complete -f -c vd -n __fish_use_subcommand -a -o -d '--output=file       save final visible sheet to file as .tsv'
complete -f -c vd -n __fish_use_subcommand -a field -d 'value             replace "{field}" in cmdlog contents with value'
complete -f -c vd -n __fish_use_subcommand -a All -d 'keystrokes are case sensitive. The ^ prefix is shorthand for Ctrl.'
complete -f -c vd -n __fish_use_subcommand -a its -d longname
complete -f -c vd -n __fish_use_subcommand -a 0-9 -d 'Execute numbered command'
complete -f -c vd -n __fish_use_subcommand -a Enter -d '^C        accept/abort input'
complete -f -c vd -n __fish_use_subcommand -a gZ -d 'close an already split screen, current pane full'
complete -f -c vd -n __fish_use_subcommand -a v -d 'toggle sheet-specific visibility (multi-line rows on'
complete -f -c vd -n __fish_use_subcommand -a Sheet -d 'legends/axes on Graph)'
complete -f -c vd -n __fish_use_subcommand -a can -d 'be set by listing them (separated by spaces) in the aggregators'
complete -f -c vd -n __fish_use_subcommand -a the -d 'current session'
complete -f -c vd -n __fish_use_subcommand -a zD -d open\ current\ sheet\'s\ CommandLog\ with\ the\ parent
complete -f -c vd -n __fish_use_subcommand -a Add -d '-n/--nonglobal to make subsequent CLI options sheet-specific'
complete -c vd -l guides -d 'open Guide Index'
complete -c vd -l debug -d 'False              exit on error and display'
complete -c vd -l force-256-colors -d 'False              use 256 colors even if'
complete -c vd -l quitguard -d 'False              confirm before quitting'
complete -c vd -l wrap -d 'False              wrap text to fit window'
complete -c vd -l profile -d 'False              enable profiling on'
complete -c vd -l bulk-select-clear -d 'False              clear selected rows be‐'
complete -c vd -l some-selected-rows -d 'False              if no rows selected, if'
complete -c vd -l load-lazy -d 'False              load subsheets always'
complete -c vd -l json-sort-keys -d 'False              sort object keys when'
complete -c vd -l clean-names -d 'False              clean column/sheet names'
complete -f -c vd -n __fish_use_subcommand -a system -d clipboard
complete -f -c vd -n __fish_use_subcommand -a --clipboard-paste-cmd -d 'str    xclip -selection clipboard -o'
complete -f -c vd -n __fish_use_subcommand -a of -d 'system clipboard to'
complete -c vd -l fancy-chooser -d 'False              a nicer selection inter‐'
complete -c vd -l numeric-binning -d 'False              bin numeric columns into'
complete -c vd -l dir-hidden -d 'False              load hidden files on'
complete -c vd -l batch -d 'False              replay in batch mode'
complete -c vd -l nothing -d 'False              no config, no plugins,'
complete -c vd -l interactive -d 'False              run interactive mode af‐'
complete -c vd -l safety-first -d 'False              sanitize input/output to'
complete -c vd -l npy-allow-pickle -d 'False              numpy allow unpickling'
complete -c vd -l pdf-tables -d 'False              parse PDF for tables in‐'
complete -c vd -l s3-version-aware -d 'False              show all object versions'
complete -c vd -l xlsx-meta-columns -d 'False              include columns for cell'
complete -f -c vd -n __fish_use_subcommand -a --server-port -d 'int            0                  port to listen for com‐'
complete -f -c vd -n __fish_use_subcommand -a --incr-base -d 'float            1.0                start value for column'
complete -c vd -l rename-cascade -d 'False              cascade column renames'
complete -c vd -l unfurl-empty -d 'False              if unfurl includes rows'
complete -f -c vd -n __fish_use_subcommand -a disp_menu_fmt -d '| VisiData {vd.version} | Alt+H for help menu'
complete -f -c vd -n __fish_use_subcommand -a right-side -d 'menu format string'
complete -f -c vd -n __fish_use_subcommand -a disp_float_fmt -d '{:.02f}             default fmtstr to format float'
complete -f -c vd -n __fish_use_subcommand -a color_keys -d 'bold                color of keystrokes in help'
complete -f -c vd -n __fish_use_subcommand -a color_status -d 'bold on 238         status line color'
complete -f -c vd -n __fish_use_subcommand -a color_error -d '202 1               error message color'
complete -f -c vd -n __fish_use_subcommand -a color_warning -d '166 15              warning message color'
complete -f -c vd -n __fish_use_subcommand -a color_top_status -d 'underline           top window status bar color'
complete -f -c vd -n __fish_use_subcommand -a color_active_status -d 'black on 68 blue     active window status bar color'
complete -f -c vd -n __fish_use_subcommand -a color_inactive_status -d '8 on black        inactive window status bar color'
complete -f -c vd -n __fish_use_subcommand -a color_highlight_status -d 'black on green   color of highlighted elements in'
complete -f -c vd -n __fish_use_subcommand -a disp_cmdpal_max -d '10                  max number of suggestions for'
complete -f -c vd -n __fish_use_subcommand -a color_shellcmd -d '21 on 114 green'
complete -f -c vd -n __fish_use_subcommand -a color_colname -d underline
complete -f -c vd -n __fish_use_subcommand -a disp_scroll_context -d '0                   minimum number of lines to keep'
complete -f -c vd -n __fish_use_subcommand -a visible -d 'above/below cursor when'
complete -c vd -l tsv-delimiter -d option.
complete -c vd -l csv-skipinitialspace -d options.