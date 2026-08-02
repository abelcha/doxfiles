complete -c "yq" -s "C" -l "colors" -d "force print with colors" # global
complete -c "yq" -l "csv-auto-parse" -d "parse CSV YAML/JSON values" # global
complete -c "yq" -l "csv-separator" -d "CSV Separator character" -xa "," # global
complete -c "yq" -l "debug-node-info" -d "debug node info" # global
complete -c "yq" -s "e" -l "exit-status" -d "set exit status if there are no matches or null or false is returned" # global
complete -c "yq" -l "expression" -d "forcibly set the expression argument. Useful when yq argument detection thinks your expression is a file." # global
complete -c "yq" -l "from-file" -d "Load expression from specified file." # global
complete -c "yq" -s "f" -l "front-matter" -d "(extract|process) first input as yaml front-matter. Extract will pull out the yaml content, process will run the expression against the yaml content, leaving the remaining data intact" -xa "extract process" # global
complete -c "yq" -l "header-preprocess" -d "Slurp any header comments and separators before processing expression." # global
complete -c "yq" -s "h" -l "help" -d "help for yq" # global
complete -c "yq" -s "I" -l "indent" -d "sets indent level for output" # global
complete -c "yq" -s "i" -l "inplace" -d "update the file in place of first file given." # global
complete -c "yq" -s "p" -l "input-format" -d "parse format for input." -xa "auto a yaml y kyaml ky json j props p csv c tsv t xml x base64 uri toml hcl h lua l ini i" # global
complete -c "yq" -l "lua-globals" -d "output keys as top-level global variables" # global
complete -c "yq" -l "lua-prefix" -d "prefix" -xa "return " # global
complete -c "yq" -l "lua-suffix" -d "suffix" -xa ";\\n" # global
complete -c "yq" -l "lua-unquoted" -d "output unquoted string keys (e.g. {foo=\"bar\"})" # global
complete -c "yq" -s "M" -l "no-colors" -d "force print with no colors" # global
complete -c "yq" -s "N" -l "no-doc" -d "Don't print document separators (---)" # global
complete -c "yq" -s "0" -l "nul-output" -d "Use NUL char to separate values. If unwrap scalar is also set, fail if unwrapped scalar contains NUL char." # global
complete -c "yq" -s "n" -l "null-input" -d "Don't read input, simply evaluate the expression given. Useful for creating docs from scratch." # global
complete -c "yq" -s "o" -l "output-format" -d "output format type." -xa "auto a yaml y kyaml ky json j props p csv c tsv t xml x base64 uri toml hcl h shell s lua l ini i" # global
complete -c "yq" -s "P" -l "prettyPrint" -d "pretty print, shorthand for '... style = \"\"'" # global
complete -c "yq" -l "properties-array-brackets" -d "use [x] in array paths (e.g. for SpringBoot)" # global
complete -c "yq" -l "properties-separator" -d "separator to use between keys and values" -xa " = " # global
complete -c "yq" -l "security-disable-env-ops" -d "Disable env related operations." # global
complete -c "yq" -l "security-disable-file-ops" -d "Disable file related operations (e.g. load)" # global
complete -c "yq" -l "security-enable-system-operator" -d "Enable system operator to allow execution of external commands." # global
complete -c "yq" -l "shell-key-separator" -d "separator for shell variable key paths" -xa "_" # global
complete -c "yq" -s "s" -l "split-exp" -d "print each result (or doc) into a file named (exp). [exp] argument must return a string. You can use ＄index in the expression as the result counter. The necessary directories will be created." # global
complete -c "yq" -l "split-exp-file" -d "Use a file to specify the split-exp expression." # global
complete -c "yq" -l "string-interpolation" -d "Toggles strings interpolation of \\(exp)" # global
complete -c "yq" -l "tsv-auto-parse" -d "parse TSV YAML/JSON values" # global
complete -c "yq" -s "r" -l "unwrapScalar" -d "unwrap scalar, print the value with no quotes, colours or comments. Defaults to true for yaml" # global
complete -c "yq" -s "v" -l "verbose" -d "verbose mode" # global
complete -c "yq" -s "V" -l "version" -d "Print version information and quit" # global
complete -c "yq" -l "xml-attribute-prefix" -d "prefix for xml attributes" -xa "+@" # global
complete -c "yq" -l "xml-content-name" -d "name for xml content (if no attribute name is present)." -xa "+content" # global
complete -c "yq" -l "xml-directive-name" -d "name for xml directives (e.g. <!DOCTYPE thing cat>)" -xa "+directive" # global
complete -c "yq" -l "xml-keep-namespace" -d "enables keeping namespace after parsing attributes" # global
complete -c "yq" -l "xml-proc-inst-prefix" -d "prefix for xml processing instructions (e.g. <?xml version=\"1\"?>)" -xa "+p_" # global
complete -c "yq" -l "xml-raw-token" -d "enables using RawToken method instead Token. Commonly disables namespace translations. See https://pkg.go.dev/encoding/xml#Decoder.RawToken for details." # global
complete -c "yq" -l "xml-skip-directives" -d "skip over directives (e.g. <!DOCTYPE thing cat>)" # global
complete -c "yq" -l "xml-skip-proc-inst" -d "skip over process instructions (e.g. <?xml version=\"1\"?>)" # global
complete -c "yq" -l "xml-strict-mode" -d "enables strict parsing of XML. See https://pkg.go.dev/encoding/xml for more details." # global
complete -c "yq" -s "c" -l "yaml-compact-seq-indent" -d "Use compact sequence indentation where '- ' is considered part of the indentation." # global
complete -c "yq" -l "yaml-fix-merge-anchor-to-spec" -d "Fix merge anchor to match YAML spec. Will default to true in late 2025" # global
complete -f -c "yq" -n "__fish_use_subcommand" -a "completion" -d "Generate the autocompletion script for the specified shell" # sub
complete -f -c "yq" -n "__fish_use_subcommand" -a "eval" -d "(default) Apply the expression to each document in each yaml file in sequence" # sub
complete -f -c "yq" -n "__fish_use_subcommand" -a "eval-all" -d "Loads _all_ yaml documents of _all_ yaml files and runs expression once" # sub
complete -f -c "yq" -n "__fish_use_subcommand" -a "help" -d "Help about any command" # sub
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -s "C" -l "colors" -d "force print with colors" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -l "csv-auto-parse" -d "parse CSV YAML/JSON values" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -l "csv-separator" -d "CSV Separator character" -xa "," # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -l "debug-node-info" -d "debug node info" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -s "e" -l "exit-status" -d "set exit status if there are no matches or null or false is returned" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -l "expression" -d "forcibly set the expression argument. Useful when yq argument detection thinks your expression is a file." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -l "from-file" -d "Load expression from specified file." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -s "f" -l "front-matter" -d "(extract|process) first input as yaml front-matter. Extract will pull out the yaml content, process will run the expression against the yaml content, leaving the remaining data intact" -xa "extract process" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -l "header-preprocess" -d "Slurp any header comments and separators before processing expression." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -s "I" -l "indent" -d "sets indent level for output" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -s "i" -l "inplace" -d "update the file in place of first file given." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -s "p" -l "input-format" -d "parse format for input." -xa "auto a yaml y kyaml ky json j props p csv c tsv t xml x base64 uri toml hcl h lua l ini i" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -l "lua-globals" -d "output keys as top-level global variables" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -l "lua-prefix" -d "prefix" -xa "return " # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -l "lua-suffix" -d "suffix" -xa ";\\n" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -l "lua-unquoted" -d "output unquoted string keys (e.g. {foo=\"bar\"})" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -s "M" -l "no-colors" -d "force print with no colors" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -s "N" -l "no-doc" -d "Don't print document separators (---)" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -s "0" -l "nul-output" -d "Use NUL char to separate values. If unwrap scalar is also set, fail if unwrapped scalar contains NUL char." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -s "n" -l "null-input" -d "Don't read input, simply evaluate the expression given. Useful for creating docs from scratch." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -s "o" -l "output-format" -d "output format type." -xa "auto a yaml y kyaml ky json j props p csv c tsv t xml x base64 uri toml hcl h shell s lua l ini i" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -s "P" -l "prettyPrint" -d "pretty print, shorthand for '... style = \"\"'" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -l "properties-array-brackets" -d "use [x] in array paths (e.g. for SpringBoot)" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -l "properties-separator" -d "separator to use between keys and values" -xa " = " # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -l "security-disable-env-ops" -d "Disable env related operations." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -l "security-disable-file-ops" -d "Disable file related operations (e.g. load)" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -l "security-enable-system-operator" -d "Enable system operator to allow execution of external commands." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -l "shell-key-separator" -d "separator for shell variable key paths" -xa "_" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -s "s" -l "split-exp" -d "print each result (or doc) into a file named (exp). [exp] argument must return a string. You can use ＄index in the expression as the result counter. The necessary directories will be created." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -l "split-exp-file" -d "Use a file to specify the split-exp expression." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -l "string-interpolation" -d "Toggles strings interpolation of \\(exp)" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -l "tsv-auto-parse" -d "parse TSV YAML/JSON values" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -s "r" -l "unwrapScalar" -d "unwrap scalar, print the value with no quotes, colours or comments. Defaults to true for yaml" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -s "v" -l "verbose" -d "verbose mode" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -l "xml-attribute-prefix" -d "prefix for xml attributes" -xa "+@" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -l "xml-content-name" -d "name for xml content (if no attribute name is present)." -xa "+content" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -l "xml-directive-name" -d "name for xml directives (e.g. <!DOCTYPE thing cat>)" -xa "+directive" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -l "xml-keep-namespace" -d "enables keeping namespace after parsing attributes" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -l "xml-proc-inst-prefix" -d "prefix for xml processing instructions (e.g. <?xml version=\"1\"?>)" -xa "+p_" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -l "xml-raw-token" -d "enables using RawToken method instead Token. Commonly disables namespace translations. See https://pkg.go.dev/encoding/xml#Decoder.RawToken for details." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -l "xml-skip-directives" -d "skip over directives (e.g. <!DOCTYPE thing cat>)" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -l "xml-skip-proc-inst" -d "skip over process instructions (e.g. <?xml version=\"1\"?>)" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -l "xml-strict-mode" -d "enables strict parsing of XML. See https://pkg.go.dev/encoding/xml for more details." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -s "c" -l "yaml-compact-seq-indent" -d "Use compact sequence indentation where '- ' is considered part of the indentation." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -l "yaml-fix-merge-anchor-to-spec" -d "Fix merge anchor to match YAML spec. Will default to true in late 2025" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -s "C" -l "colors" -d "force print with colors" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "csv-auto-parse" -d "parse CSV YAML/JSON values" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "csv-separator" -d "CSV Separator character" -xa "," # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "debug-node-info" -d "debug node info" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -s "e" -l "exit-status" -d "set exit status if there are no matches or null or false is returned" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "expression" -d "forcibly set the expression argument. Useful when yq argument detection thinks your expression is a file." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "from-file" -d "Load expression from specified file." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -s "f" -l "front-matter" -d "(extract|process) first input as yaml front-matter. Extract will pull out the yaml content, process will run the expression against the yaml content, leaving the remaining data intact" -xa "extract process" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "header-preprocess" -d "Slurp any header comments and separators before processing expression." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -s "I" -l "indent" -d "sets indent level for output" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -s "i" -l "inplace" -d "update the file in place of first file given." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -s "p" -l "input-format" -d "parse format for input." -xa "auto a yaml y kyaml ky json j props p csv c tsv t xml x base64 uri toml hcl h lua l ini i" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "lua-globals" -d "output keys as top-level global variables" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "lua-prefix" -d "prefix" -xa "return " # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "lua-suffix" -d "suffix" -xa ";\\n" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "lua-unquoted" -d "output unquoted string keys (e.g. {foo=\"bar\"})" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -s "M" -l "no-colors" -d "force print with no colors" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -s "N" -l "no-doc" -d "Don't print document separators (---)" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -s "0" -l "nul-output" -d "Use NUL char to separate values. If unwrap scalar is also set, fail if unwrapped scalar contains NUL char." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -s "n" -l "null-input" -d "Don't read input, simply evaluate the expression given. Useful for creating docs from scratch." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -s "o" -l "output-format" -d "output format type." -xa "auto a yaml y kyaml ky json j props p csv c tsv t xml x base64 uri toml hcl h shell s lua l ini i" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -s "P" -l "prettyPrint" -d "pretty print, shorthand for '... style = \"\"'" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "properties-array-brackets" -d "use [x] in array paths (e.g. for SpringBoot)" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "properties-separator" -d "separator to use between keys and values" -xa " = " # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "security-disable-env-ops" -d "Disable env related operations." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "security-disable-file-ops" -d "Disable file related operations (e.g. load)" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "security-enable-system-operator" -d "Enable system operator to allow execution of external commands." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "shell-key-separator" -d "separator for shell variable key paths" -xa "_" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -s "s" -l "split-exp" -d "print each result (or doc) into a file named (exp). [exp] argument must return a string. You can use ＄index in the expression as the result counter. The necessary directories will be created." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "split-exp-file" -d "Use a file to specify the split-exp expression." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "string-interpolation" -d "Toggles strings interpolation of \\(exp)" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "tsv-auto-parse" -d "parse TSV YAML/JSON values" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -s "r" -l "unwrapScalar" -d "unwrap scalar, print the value with no quotes, colours or comments. Defaults to true for yaml" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -s "v" -l "verbose" -d "verbose mode" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "xml-attribute-prefix" -d "prefix for xml attributes" -xa "+@" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "xml-content-name" -d "name for xml content (if no attribute name is present)." -xa "+content" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "xml-directive-name" -d "name for xml directives (e.g. <!DOCTYPE thing cat>)" -xa "+directive" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "xml-keep-namespace" -d "enables keeping namespace after parsing attributes" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "xml-proc-inst-prefix" -d "prefix for xml processing instructions (e.g. <?xml version=\"1\"?>)" -xa "+p_" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "xml-raw-token" -d "enables using RawToken method instead Token. Commonly disables namespace translations. See https://pkg.go.dev/encoding/xml#Decoder.RawToken for details." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "xml-skip-directives" -d "skip over directives (e.g. <!DOCTYPE thing cat>)" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "xml-skip-proc-inst" -d "skip over process instructions (e.g. <?xml version=\"1\"?>)" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "xml-strict-mode" -d "enables strict parsing of XML. See https://pkg.go.dev/encoding/xml for more details." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -s "c" -l "yaml-compact-seq-indent" -d "Use compact sequence indentation where '- ' is considered part of the indentation." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "yaml-fix-merge-anchor-to-spec" -d "Fix merge anchor to match YAML spec. Will default to true in late 2025" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -s "C" -l "colors" -d "force print with colors" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "csv-auto-parse" -d "parse CSV YAML/JSON values" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "csv-separator" -d "CSV Separator character" -xa "," # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "debug-node-info" -d "debug node info" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -s "e" -l "exit-status" -d "set exit status if there are no matches or null or false is returned" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "expression" -d "forcibly set the expression argument. Useful when yq argument detection thinks your expression is a file." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "from-file" -d "Load expression from specified file." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -s "f" -l "front-matter" -d "(extract|process) first input as yaml front-matter. Extract will pull out the yaml content, process will run the expression against the yaml content, leaving the remaining data intact" -xa "extract process" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "header-preprocess" -d "Slurp any header comments and separators before processing expression." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -s "I" -l "indent" -d "sets indent level for output" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -s "i" -l "inplace" -d "update the file in place of first file given." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -s "p" -l "input-format" -d "parse format for input." -xa "auto a yaml y kyaml ky json j props p csv c tsv t xml x base64 uri toml hcl h lua l ini i" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "lua-globals" -d "output keys as top-level global variables" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "lua-prefix" -d "prefix" -xa "return " # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "lua-suffix" -d "suffix" -xa ";\\n" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "lua-unquoted" -d "output unquoted string keys (e.g. {foo=\"bar\"})" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -s "M" -l "no-colors" -d "force print with no colors" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -s "N" -l "no-doc" -d "Don't print document separators (---)" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -s "0" -l "nul-output" -d "Use NUL char to separate values. If unwrap scalar is also set, fail if unwrapped scalar contains NUL char." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -s "n" -l "null-input" -d "Don't read input, simply evaluate the expression given. Useful for creating docs from scratch." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -s "o" -l "output-format" -d "output format type." -xa "auto a yaml y kyaml ky json j props p csv c tsv t xml x base64 uri toml hcl h shell s lua l ini i" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -s "P" -l "prettyPrint" -d "pretty print, shorthand for '... style = \"\"'" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "properties-array-brackets" -d "use [x] in array paths (e.g. for SpringBoot)" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "properties-separator" -d "separator to use between keys and values" -xa " = " # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "security-disable-env-ops" -d "Disable env related operations." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "security-disable-file-ops" -d "Disable file related operations (e.g. load)" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "security-enable-system-operator" -d "Enable system operator to allow execution of external commands." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "shell-key-separator" -d "separator for shell variable key paths" -xa "_" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -s "s" -l "split-exp" -d "print each result (or doc) into a file named (exp). [exp] argument must return a string. You can use ＄index in the expression as the result counter. The necessary directories will be created." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "split-exp-file" -d "Use a file to specify the split-exp expression." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "string-interpolation" -d "Toggles strings interpolation of \\(exp)" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "tsv-auto-parse" -d "parse TSV YAML/JSON values" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -s "r" -l "unwrapScalar" -d "unwrap scalar, print the value with no quotes, colours or comments. Defaults to true for yaml" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -s "v" -l "verbose" -d "verbose mode" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "xml-attribute-prefix" -d "prefix for xml attributes" -xa "+@" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "xml-content-name" -d "name for xml content (if no attribute name is present)." -xa "+content" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "xml-directive-name" -d "name for xml directives (e.g. <!DOCTYPE thing cat>)" -xa "+directive" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "xml-keep-namespace" -d "enables keeping namespace after parsing attributes" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "xml-proc-inst-prefix" -d "prefix for xml processing instructions (e.g. <?xml version=\"1\"?>)" -xa "+p_" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "xml-raw-token" -d "enables using RawToken method instead Token. Commonly disables namespace translations. See https://pkg.go.dev/encoding/xml#Decoder.RawToken for details." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "xml-skip-directives" -d "skip over directives (e.g. <!DOCTYPE thing cat>)" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "xml-skip-proc-inst" -d "skip over process instructions (e.g. <?xml version=\"1\"?>)" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "xml-strict-mode" -d "enables strict parsing of XML. See https://pkg.go.dev/encoding/xml for more details." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -s "c" -l "yaml-compact-seq-indent" -d "Use compact sequence indentation where '- ' is considered part of the indentation." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "yaml-fix-merge-anchor-to-spec" -d "Fix merge anchor to match YAML spec. Will default to true in late 2025" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -s "C" -l "colors" -d "force print with colors" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "csv-auto-parse" -d "parse CSV YAML/JSON values" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "csv-separator" -d "CSV Separator character" -xa "," # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "debug-node-info" -d "debug node info" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -s "e" -l "exit-status" -d "set exit status if there are no matches or null or false is returned" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "expression" -d "forcibly set the expression argument. Useful when yq argument detection thinks your expression is a file." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "from-file" -d "Load expression from specified file." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -s "f" -l "front-matter" -d "(extract|process) first input as yaml front-matter. Extract will pull out the yaml content, process will run the expression against the yaml content, leaving the remaining data intact" -xa "extract process" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "header-preprocess" -d "Slurp any header comments and separators before processing expression." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -s "I" -l "indent" -d "sets indent level for output" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -s "i" -l "inplace" -d "update the file in place of first file given." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -s "p" -l "input-format" -d "parse format for input." -xa "auto a yaml y kyaml ky json j props p csv c tsv t xml x base64 uri toml hcl h lua l ini i" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "lua-globals" -d "output keys as top-level global variables" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "lua-prefix" -d "prefix" -xa "return " # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "lua-suffix" -d "suffix" -xa ";\\n" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "lua-unquoted" -d "output unquoted string keys (e.g. {foo=\"bar\"})" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -s "M" -l "no-colors" -d "force print with no colors" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -s "N" -l "no-doc" -d "Don't print document separators (---)" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -s "0" -l "nul-output" -d "Use NUL char to separate values. If unwrap scalar is also set, fail if unwrapped scalar contains NUL char." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -s "n" -l "null-input" -d "Don't read input, simply evaluate the expression given. Useful for creating docs from scratch." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -s "o" -l "output-format" -d "output format type." -xa "auto a yaml y kyaml ky json j props p csv c tsv t xml x base64 uri toml hcl h shell s lua l ini i" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -s "P" -l "prettyPrint" -d "pretty print, shorthand for '... style = \"\"'" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "properties-array-brackets" -d "use [x] in array paths (e.g. for SpringBoot)" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "properties-separator" -d "separator to use between keys and values" -xa " = " # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "security-disable-env-ops" -d "Disable env related operations." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "security-disable-file-ops" -d "Disable file related operations (e.g. load)" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "security-enable-system-operator" -d "Enable system operator to allow execution of external commands." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "shell-key-separator" -d "separator for shell variable key paths" -xa "_" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -s "s" -l "split-exp" -d "print each result (or doc) into a file named (exp). [exp] argument must return a string. You can use ＄index in the expression as the result counter. The necessary directories will be created." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "split-exp-file" -d "Use a file to specify the split-exp expression." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "string-interpolation" -d "Toggles strings interpolation of \\(exp)" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "tsv-auto-parse" -d "parse TSV YAML/JSON values" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -s "r" -l "unwrapScalar" -d "unwrap scalar, print the value with no quotes, colours or comments. Defaults to true for yaml" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -s "v" -l "verbose" -d "verbose mode" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "xml-attribute-prefix" -d "prefix for xml attributes" -xa "+@" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "xml-content-name" -d "name for xml content (if no attribute name is present)." -xa "+content" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "xml-directive-name" -d "name for xml directives (e.g. <!DOCTYPE thing cat>)" -xa "+directive" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "xml-keep-namespace" -d "enables keeping namespace after parsing attributes" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "xml-proc-inst-prefix" -d "prefix for xml processing instructions (e.g. <?xml version=\"1\"?>)" -xa "+p_" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "xml-raw-token" -d "enables using RawToken method instead Token. Commonly disables namespace translations. See https://pkg.go.dev/encoding/xml#Decoder.RawToken for details." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "xml-skip-directives" -d "skip over directives (e.g. <!DOCTYPE thing cat>)" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "xml-skip-proc-inst" -d "skip over process instructions (e.g. <?xml version=\"1\"?>)" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "xml-strict-mode" -d "enables strict parsing of XML. See https://pkg.go.dev/encoding/xml for more details." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -s "c" -l "yaml-compact-seq-indent" -d "Use compact sequence indentation where '- ' is considered part of the indentation." # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "yaml-fix-merge-anchor-to-spec" -d "Fix merge anchor to match YAML spec. Will default to true in late 2025" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion'" -s "h" -l "help" -d "help for completion" # global
complete -f -c "yq" -n "__fish_seen_subcommand_from 'completion'" -a "bash" -d "Generate bash completion script" # sub
complete -f -c "yq" -n "__fish_seen_subcommand_from 'completion'" -a "zsh" -d "Generate zsh completion script" # sub
complete -f -c "yq" -n "__fish_seen_subcommand_from 'completion'" -a "fish" -d "Generate fish completion script" # sub
complete -f -c "yq" -n "__fish_seen_subcommand_from 'completion'" -a "powershell" -d "Generate powershell completion script" # sub
complete -c "yq" -n "__fish_seen_subcommand_from 'completion bash'" -s "h" -l "help" -d "help for completion" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion zsh'" -s "h" -l "help" -d "help for completion" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion fish'" -s "h" -l "help" -d "help for completion" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'completion powershell'" -s "h" -l "help" -d "help for completion" # subcommands flags
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -s "h" -l "help" -d "help for eval" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -s "C" -l "colors" -d "force print with colors" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "csv-auto-parse" -d "parse CSV YAML/JSON values" -xa "true" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "csv-separator" -d "CSV Separator character" -xa "," # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "debug-node-info" -d "debug node info" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -s "e" -l "exit-status" -d "set exit status if there are no matches or null or false is returned" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "expression" -d "forcibly set the expression argument. Useful when yq argument detection thinks your expression is a file." # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "from-file" -d "Load expression from specified file." # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -s "f" -l "front-matter" -d "(extract|process) first input as yaml front-matter. Extract will pull out the yaml content, process will run the expression against the yaml content, leaving the remaining data intact" -xa "extract process" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "header-preprocess" -d "Slurp any header comments and separators before processing expression." -xa "true" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -s "I" -l "indent" -d "sets indent level for output" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -s "i" -l "inplace" -d "update the file in place of first file given." # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -s "p" -l "input-format" -d "parse format for input." -xa "auto a yaml y kyaml ky json j props p csv c tsv t xml x base64 uri toml hcl h lua l ini i" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "lua-globals" -d "output keys as top-level global variables" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "lua-prefix" -d "prefix" -xa "return " # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "lua-suffix" -d "suffix" -xa ";\\n" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "lua-unquoted" -d "output unquoted string keys (e.g. {foo=\"bar\"})" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -s "M" -l "no-colors" -d "force print with no colors" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -s "N" -l "no-doc" -d "Don't print document separators (---)" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -s "0" -l "nul-output" -d "Use NUL char to separate values. If unwrap scalar is also set, fail if unwrapped scalar contains NUL char." # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -s "n" -l "null-input" -d "Don't read input, simply evaluate the expression given. Useful for creating docs from scratch." # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -s "o" -l "output-format" -d "output format type." -xa "auto a yaml y kyaml ky json j props p csv c tsv t xml x base64 uri toml hcl h shell s lua l ini i" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -s "P" -l "prettyPrint" -d "pretty print, shorthand for '... style = \"\"'" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "properties-array-brackets" -d "use [x] in array paths (e.g. for SpringBoot)" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "properties-separator" -d "separator to use between keys and values" -xa " = " # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "security-disable-env-ops" -d "Disable env related operations." # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "security-disable-file-ops" -d "Disable file related operations (e.g. load)" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "security-enable-system-operator" -d "Enable system operator to allow execution of external commands." # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "shell-key-separator" -d "separator for shell variable key paths" -xa "_" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -s "s" -l "split-exp" -d "print each result (or doc) into a file named (exp). [exp] argument must return a string. You can use ＄index in the expression as the result counter. The necessary directories will be created." # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "split-exp-file" -d "Use a file to specify the split-exp expression." # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "string-interpolation" -d "Toggles strings interpolation of \\(exp)" -xa "true" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "tsv-auto-parse" -d "parse TSV YAML/JSON values" -xa "true" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -s "r" -l "unwrapScalar" -d "unwrap scalar, print the value with no quotes, colours or comments. Defaults to true for yaml" -xa "true" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -s "v" -l "verbose" -d "verbose mode" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "xml-attribute-prefix" -d "prefix for xml attributes" -xa "+@" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "xml-content-name" -d "name for xml content (if no attribute name is present)." -xa "+content" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "xml-directive-name" -d "name for xml directives (e.g. <!DOCTYPE thing cat>)" -xa "+directive" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "xml-keep-namespace" -d "enables keeping namespace after parsing attributes" -xa "true" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "xml-proc-inst-prefix" -d "prefix for xml processing instructions (e.g. <?xml version=\"1\"?>)" -xa "+p_" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "xml-raw-token" -d "enables using RawToken method instead Token. Commonly disables namespace translations. See https://pkg.go.dev/encoding/xml#Decoder.RawToken for details." -xa "true" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "xml-skip-directives" -d "skip over directives (e.g. <!DOCTYPE thing cat>)" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "xml-skip-proc-inst" -d "skip over process instructions (e.g. <?xml version=\"1\"?>)" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "xml-strict-mode" -d "enables strict parsing of XML. See https://pkg.go.dev/encoding/xml for more details." # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -s "c" -l "yaml-compact-seq-indent" -d "Use compact sequence indentation where '- ' is considered part of the indentation." # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval'" -l "yaml-fix-merge-anchor-to-spec" -d "Fix merge anchor to match YAML spec. Will default to true in late 2025" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -s "h" -l "help" -d "help for eval-all" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -s "C" -l "colors" -d "force print with colors" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "csv-auto-parse" -d "parse CSV YAML/JSON values" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "csv-separator" -d "CSV Separator character" -xa "," # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "debug-node-info" -d "debug node info" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -s "e" -l "exit-status" -d "set exit status if there are no matches or null or false is returned" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "expression" -d "forcibly set the expression argument. Useful when yq argument detection thinks your expression is a file." # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "from-file" -d "Load expression from specified file." # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -s "f" -l "front-matter" -d "(extract|process) first input as yaml front-matter. Extract will pull out the yaml content, process will run the expression against the yaml content, leaving the remaining data intact" -xa "extract process" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "header-preprocess" -d "Slurp any header comments and separators before processing expression." # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -s "I" -l "indent" -d "sets indent level for output" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -s "i" -l "inplace" -d "update the file in place of first file given." # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -s "p" -l "input-format" -d "parse format for input." -xa "auto a yaml y kyaml ky json j props p csv c tsv t xml x base64 uri toml hcl h lua l ini i" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "lua-globals" -d "output keys as top-level global variables" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "lua-prefix" -d "prefix" -xa "return " # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "lua-suffix" -d "suffix" -xa ";\\n" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "lua-unquoted" -d "output unquoted string keys (e.g. {foo=\"bar\"})" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -s "M" -l "no-colors" -d "force print with no colors" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -s "N" -l "no-doc" -d "Don't print document separators (---)" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -s "0" -l "nul-output" -d "Use NUL char to separate values. If unwrap scalar is also set, fail if unwrapped scalar contains NUL char." # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -s "n" -l "null-input" -d "Don't read input, simply evaluate the expression given. Useful for creating docs from scratch." # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -s "o" -l "output-format" -d "output format type." -xa "auto a yaml y kyaml ky json j props p csv c tsv t xml x base64 uri toml hcl h shell s lua l ini i" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -s "P" -l "prettyPrint" -d "pretty print, shorthand for '... style = \"\"'" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "properties-array-brackets" -d "use [x] in array paths (e.g. for SpringBoot)" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "properties-separator" -d "separator to use between keys and values" -xa " = " # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "security-disable-env-ops" -d "Disable env related operations." # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "security-disable-file-ops" -d "Disable file related operations (e.g. load)" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "security-enable-system-operator" -d "Enable system operator to allow execution of external commands." # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "shell-key-separator" -d "separator for shell variable key paths" -xa "_" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -s "s" -l "split-exp" -d "print each result (or doc) into a file named (exp). [exp] argument must return a string. You can use ＄index in the expression as the result counter. The necessary directories will be created." # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "split-exp-file" -d "Use a file to specify the split-exp expression." # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "string-interpolation" -d "Toggles strings interpolation of \\(exp)" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "tsv-auto-parse" -d "parse TSV YAML/JSON values" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -s "r" -l "unwrapScalar" -d "unwrap scalar, print the value with no quotes, colours or comments. Defaults to true for yaml" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -s "v" -l "verbose" -d "verbose mode" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "xml-attribute-prefix" -d "prefix for xml attributes" -xa "+@" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "xml-content-name" -d "name for xml content (if no attribute name is present)." -xa "+content" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "xml-directive-name" -d "name for xml directives (e.g. <!DOCTYPE thing cat>)" -xa "+directive" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "xml-keep-namespace" -d "enables keeping namespace after parsing attributes" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "xml-proc-inst-prefix" -d "prefix for xml processing instructions (e.g. <?xml version=\"1\"?>)" -xa "+p_" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "xml-raw-token" -d "enables using RawToken method instead Token. Commonly disables namespace translations. See https://pkg.go.dev/encoding/xml#Decoder.RawToken for details." # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "xml-skip-directives" -d "skip over directives (e.g. <!DOCTYPE thing cat>)" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "xml-skip-proc-inst" -d "skip over process instructions (e.g. <?xml version=\"1\"?>)" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "xml-strict-mode" -d "enables strict parsing of XML. See https://pkg.go.dev/encoding/xml for more details." # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -s "c" -l "yaml-compact-seq-indent" -d "Use compact sequence indentation where '- ' is considered part of the indentation." # global
complete -c "yq" -n "__fish_seen_subcommand_from 'eval-all'" -l "yaml-fix-merge-anchor-to-spec" -d "Fix merge anchor to match YAML spec. Will default to true in late 2025" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -s "h" -l "help" -d "help for eval" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -s "C" -l "colors" -d "force print with colors" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "csv-auto-parse" -d "parse CSV YAML/JSON values" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "csv-separator" -d "CSV Separator character" -xa "," # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "debug-node-info" -d "debug node info" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -s "e" -l "exit-status" -d "set exit status if there are no matches or null or false is returned" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "expression" -d "forcibly set the expression argument. Useful when yq argument detection thinks your expression is a file." # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "from-file" -d "Load expression from specified file." # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -s "f" -l "front-matter" -d "(extract|process) first input as yaml front-matter. Extract will pull out the yaml content, process will run the expression against the yaml content, leaving the remaining data intact" -xa "extract process" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "header-preprocess" -d "Slurp any header comments and separators before processing expression." # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -s "I" -l "indent" -d "sets indent level for output" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -s "i" -l "inplace" -d "update the file in place of first file given." # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -s "p" -l "input-format" -d "parse format for input." -xa "auto a yaml y kyaml ky json j props p csv c tsv t xml x base64 uri toml hcl h lua l ini i" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "lua-globals" -d "output keys as top-level global variables" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "lua-prefix" -d "prefix" -xa "return " # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "lua-suffix" -d "suffix" -xa ";\\n" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "lua-unquoted" -d "output unquoted string keys (e.g. {foo=\"bar\"})" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -s "M" -l "no-colors" -d "force print with no colors" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -s "N" -l "no-doc" -d "Don't print document separators (---)" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -s "0" -l "nul-output" -d "Use NUL char to separate values. If unwrap scalar is also set, fail if unwrapped scalar contains NUL char." # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -s "n" -l "null-input" -d "Don't read input, simply evaluate the expression given. Useful for creating docs from scratch." # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -s "o" -l "output-format" -d "output format type." -xa "auto a yaml y kyaml ky json j props p csv c tsv t xml x base64 uri toml hcl h shell s lua l ini i" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -s "P" -l "prettyPrint" -d "pretty print, shorthand for '... style = \"\"'" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "properties-array-brackets" -d "use [x] in array paths (e.g. for SpringBoot)" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "properties-separator" -d "separator to use between keys and values" -xa " = " # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "security-disable-env-ops" -d "Disable env related operations." # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "security-disable-file-ops" -d "Disable file related operations (e.g. load)" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "security-enable-system-operator" -d "Enable system operator to allow execution of external commands." # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "shell-key-separator" -d "separator for shell variable key paths" -xa "_" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -s "s" -l "split-exp" -d "print each result (or doc) into a file named (exp). [exp] argument must return a string. You can use ＄index in the expression as the result counter. The necessary directories will be created." # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "split-exp-file" -d "Use a file to specify the split-exp expression." # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "string-interpolation" -d "Toggles strings interpolation of \\(exp)" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "tsv-auto-parse" -d "parse TSV YAML/JSON values" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -s "r" -l "unwrapScalar" -d "unwrap scalar, print the value with no quotes, colours or comments. Defaults to true for yaml" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -s "v" -l "verbose" -d "verbose mode" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "xml-attribute-prefix" -d "prefix for xml attributes" -xa "+@" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "xml-content-name" -d "name for xml content (if no attribute name is present)." -xa "+content" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "xml-directive-name" -d "name for xml directives (e.g. <!DOCTYPE thing cat>)" -xa "+directive" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "xml-keep-namespace" -d "enables keeping namespace after parsing attributes" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "xml-proc-inst-prefix" -d "prefix for xml processing instructions (e.g. <?xml version=\"1\"?>)" -xa "+p_" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "xml-raw-token" -d "enables using RawToken method instead Token. Commonly disables namespace translations. See https://pkg.go.dev/encoding/xml#Decoder.RawToken for details." # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "xml-skip-directives" -d "skip over directives (e.g. <!DOCTYPE thing cat>)" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "xml-skip-proc-inst" -d "skip over process instructions (e.g. <?xml version=\"1\"?>)" # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "xml-strict-mode" -d "enables strict parsing of XML. See https://pkg.go.dev/encoding/xml for more details." # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -s "c" -l "yaml-compact-seq-indent" -d "Use compact sequence indentation where '- ' is considered part of the indentation." # global
complete -c "yq" -n "__fish_seen_subcommand_from 'help'" -l "yaml-fix-merge-anchor-to-spec" -d "Fix merge anchor to match YAML spec. Will default to true in late 2025" # global