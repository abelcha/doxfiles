complete -c "markitdown" -s "h" -l "help" -d "show this help message and exit" # global
complete -c "markitdown" -s "v" -l "version" -d "show the version number and exit" # global
complete -c "markitdown" -s "o" -l "output" -d "Output file name. If not provided, output is written to stdout." -xa "{}" # global
complete -c "markitdown" -s "x" -l "extension" -d "Provide a hint about the file extension (e.g., when reading from stdin)." -xa "{}" # global
complete -c "markitdown" -s "m" -l "mime-type" -d "Provide a hint about the file's MIME type." -xa "{}" # global
complete -c "markitdown" -s "c" -l "charset" -d "Provide a hint about the file's charset (e.g, UTF-8)." -xa "{}" # global
complete -c "markitdown" -s "d" -l "use-docintel" -d "Use Document Intelligence to extract text instead of offline conversion. Requires a valid Document Intelligence Endpoint." # global
complete -c "markitdown" -s "e" -l "endpoint" -d "Document Intelligence Endpoint. Required if using Document Intelligence." -xa "{}" # global
complete -c "markitdown" -s "p" -l "use-plugins" -d "Use 3rd-party plugins to convert files. Use --list-plugins to see installed plugins." # global
complete -c "markitdown" -l "list-plugins" -d "List installed 3rd-party plugins. Plugins are loaded when using the -p or --use-plugin option." # global
complete -c "markitdown" -l "keep-data-uris" -d "Keep data URIs (like base64-encoded images) in the output. By default, data URIs are truncated." # global