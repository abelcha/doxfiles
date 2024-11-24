complete -c genson-rs -s d -l delimiter -d '<DELIMITER>  Must be one of "newline", "tab", "space". Specifying a delimiter is optional, but will improve the performance if your input is multiple JSON objects concatenated together (e.g. each object on a newline)'
complete -c genson-rs -s i -l ignore-outer-array -d 'Only applicable if you JSON file is one JSON arrary, and you only care about the schema of the JSON objects inside of it'
complete -c genson-rs -s h -l help -d 'Print help'
complete -c genson-rs -n __fish_no_arguments -s V -l version -d 'Print version'
