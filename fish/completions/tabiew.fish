complete -c "tabiew" -l "multiparts" -d "Paths to be opened and concatenated vertically." # global
complete -c "tabiew" -s "s" -l "script" -d "Path to the startup script." # global
complete -c "tabiew" -s "f" -l "format" -d "Specifies the input format. By default, the format is selected based on the file extension" -xa "dsv parquet jsonl json arrow fwf sqlite excel" # global
complete -c "tabiew" -l "sqlite-key" -d "Sets the key for sqlite (if required)" # global
complete -c "tabiew" -l "no-header" -d "Specifies if the input does not contain a header row." # global
complete -c "tabiew" -l "ignore-errors" -d "Ignores parsing errors while loading." # global
complete -c "tabiew" -l "infer-schema" -d "Specifies the method to infer the schema." -xa "no fast safe" # global
complete -c "tabiew" -l "infer-datetimes" -d "Performs additional processing to parse date and datetime columns" # global
complete -c "tabiew" -l "separator" -d "Character used as the field separator or delimiter while loading DSV files." # global
complete -c "tabiew" -l "quote-char" -d "Character used to quote fields while loading DSV files." # global
complete -c "tabiew" -l "widths" -d "A comma-separated list of widths, which specifies the column widths for FWF files." # global
complete -c "tabiew" -l "separator-length" -d "Specifies the separator length for FWF files." # global
complete -c "tabiew" -l "no-flexible-width" -d "Sets strict column width restrictions for FWF files." # global
complete -c "tabiew" -l "truncate-ragged-lines" -d "Truncate ragged lines while reading the file." # global
complete -c "tabiew" -l "theme" -d "Tabiew theme" -xa "monokai argonaut nord catppuccin tokyo-night chakra terminal config" # global
complete -c "tabiew" -l "generate-theme" -d "Generate a sample theme file in ＄HOME/.config/tabiew" # global
complete -c "tabiew" -l "infer-types" -d "Specifies the types to infer for text-based files." # global
complete -c "tabiew" -l "no-type-inference" -d "Disables type inference" # global
complete -c "tabiew" -s "h" -l "help" -d "Print help" # global
complete -c "tabiew" -s "V" -l "version" -d "Print version" # global