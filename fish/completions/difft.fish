complete -c "difft" -l "context" -d "The number of contextual lines to show around changed lines." # global
complete -c "difft" -l "width" -d "Use this many columns when calculating line wrapping. If not specified, difftastic will detect the terminal width." # global
complete -c "difft" -l "tab-width" -d "Treat a tab as this many spaces." # global
complete -c "difft" -l "display" -d "Display mode for showing results." -xa "side-by-side side-by-side-show-both inline json" # global
complete -c "difft" -l "color" -d "When to use color output." -xa "always auto never" # global
complete -c "difft" -l "background" -d "Set the background brightness. Difftastic will prefer brighter colours on dark backgrounds." -xa "dark light" # global
complete -c "difft" -l "syntax-highlight" -d "Enable or disable syntax highlighting." -xa "on off" # global
complete -c "difft" -l "exit-code" -d "Set the exit code to 1 if there are syntactic changes in any files. For files where there is no detected language (e.g. unsupported language or binary files), sets the exit code if there are any byte changes." # global
complete -c "difft" -l "strip-cr" -d "Remove any carriage return characters before diffing. This can be helpful when dealing with files on Windows that contain CRLF, i.e. `\\r\\n`. When disabled, difftastic will consider multiline string literals (in code) or multiline text (e.g. in HTML) to differ if the two input files have different line endings." -xa "on off" # global
complete -c "difft" -l "check-only" -d "Report whether there are any changes, but don't calculate them. Much faster." # global
complete -c "difft" -l "ignore-comments" -d "Don't consider comments when diffing." # global
complete -c "difft" -l "skip-unchanged" -d "Don't display anything if a file is unchanged. This is useful when comparing directories of files." # global
complete -c "difft" -l "override" -d "Associate this glob pattern with this language, overriding normal language detection." # global
complete -c "difft" -l "override-binary" -d "Treat file names matching this glob as binary files, overriding normal binary detection." # global
complete -c "difft" -l "list-languages" -d "Print all the languages supported by difftastic, along with their recognised extensions." # global
complete -c "difft" -l "byte-limit" -d "Use a line-oriented diff if either input file exceeds this size." # global
complete -c "difft" -l "graph-limit" -d "Use a line-oriented diff if the internal graph exceeds this number of vertices. This limit controls the worst case runtime and memory usage for difftastic." # global
complete -c "difft" -l "parse-error-limit" -d "Use a line-oriented diff if the number of parse errors exceeds this value." # global
complete -c "difft" -l "sort-paths" -d "When diffing a directory, output the results sorted by path. This is slower." # global
complete -c "difft" -s "h" -l "help" -d "Print help (see a summary with '-h')" # global
complete -c "difft" -s "V" -l "version" -d "Print version" # global
complete -c "difft" -l "dump-syntax" -d "Parse a single file with tree-sitter and display the difftastic syntax tree." # global
complete -c "difft" -l "dump-syntax-dot" -d "Parse a single file with tree-sitter and display the difftastic syntax tree, as a DOT graph." # global
complete -c "difft" -l "dump-ts" -d "Parse a single file with tree-sitter and display the tree-sitter parse tree." # global