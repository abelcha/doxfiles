complete -c "plutil" -o "help" -d "show this message and exit" # global
complete -c "plutil" -o "lint" -d "check the property list files for syntax errors" # global
complete -c "plutil" -o "convert" -d "rewrite property list files in format" -xa "xml1 binary1 json swift objc" # global
complete -c "plutil" -o "insert" -d "insert a value into the property list before writing it out" # global
complete -c "plutil" -o "replace" -d "same as -insert, but it will overwrite an existing value" # global
complete -c "plutil" -o "remove" -d "removes the value at 'keypath' from the property list before writing it out" # global
complete -c "plutil" -o "extract" -d "outputs the value at 'keypath' in the property list as a new plist of type 'fmt'" -xa "xml1 binary1 json raw" # global
complete -c "plutil" -o "type" -d "outputs the type of the value at 'keypath' in the property list" -xa "bool integer float string date data dictionary array" # global
complete -c "plutil" -o "create" -d "creates an empty plist of the specified format" -xa "xml1 binary1 json swift objc" # global
complete -c "plutil" -s "p" -o "p" -d "print property list in a human-readable fashion" # global
complete -c "plutil" -s "s" -o "s" -d "be silent on success" # global
complete -c "plutil" -s "o" -o "o" -d "specify alternate file path name for result" # global
complete -c "plutil" -s "e" -o "e" -d "specify alternate extension for converted files" # global
complete -c "plutil" -s "r" -o "r" -d "if writing JSON, output in human-readable form" # global
complete -c "plutil" -s "n" -o "n" -d "prevent printing a terminating newline if it is not part of the format, such as with raw" # global
complete -c "plutil" -o "" -d "specifies that all further arguments are file names" # global
complete -c "plutil" -o "expect" -d "test that the value at the specified keypath is of the specified type" -xa "bool integer float string date data dictionary array" # global
complete -c "plutil" -o "type" -d "the type argument for -insert, -replace, and -extract" -xa "bool integer float date string data xml json dictionary array" # global
complete -c "plutil" -o "append" -d "optionally, may be specified if the keypath references an array to append to the end of the array" # global
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert'" -s "s" -d "be silent on success" # global
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert'" -s "o" -d "specify alternate file path name for result; the path '-' means stdout" # global
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert'" -s "e" -d "specify alternate extension for converted files" # global
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert'" -s "r" -d "if writing JSON, output in human-readable form" # global
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert'" -s "n" -d "prevent printing a terminating newline if it is not part of the format, such as with raw" # global
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert'" -o "" -d "specifies that all further arguments are file names" # global
complete -f -c "plutil" -n "__fish_seen_subcommand_from '-convert'" -a "-help" -d "show this message and exit" # sub
complete -f -c "plutil" -n "__fish_seen_subcommand_from '-convert'" -a "-lint" -d "check the property list files for syntax errors" # sub
complete -f -c "plutil" -n "__fish_seen_subcommand_from '-convert'" -a "-convert" -d "rewrite property list files in format" # sub
complete -f -c "plutil" -n "__fish_seen_subcommand_from '-convert'" -a "-insert" -d "insert a value into the property list before writing it out" # sub
complete -f -c "plutil" -n "__fish_seen_subcommand_from '-convert'" -a "-replace" -d "same as -insert, but it will overwrite an existing value" # sub
complete -f -c "plutil" -n "__fish_seen_subcommand_from '-convert'" -a "-remove" -d "removes the value at 'keypath' from the property list before writing it out" # sub
complete -f -c "plutil" -n "__fish_seen_subcommand_from '-convert'" -a "-extract" -d "outputs the value at 'keypath' in the property list as a new plist of type 'fmt'" # sub
complete -f -c "plutil" -n "__fish_seen_subcommand_from '-convert'" -a "-type" -d "outputs the type of the value at 'keypath' in the property list" # sub
complete -f -c "plutil" -n "__fish_seen_subcommand_from '-convert'" -a "-create" -d "creates an empty plist of the specified format" # sub
complete -f -c "plutil" -n "__fish_seen_subcommand_from '-convert'" -a "-p" -d "print property list in a human-readable fashion (not for machine parsing! this 'format' is not stable)" # sub
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -help'" -s "s" -d "be silent on success" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -help'" -s "o" -d "specify alternate file path name for result; the path '-' means stdout" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -help'" -s "e" -d "specify alternate extension for converted files" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -help'" -s "r" -d "if writing JSON, output in human-readable form" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -help'" -s "n" -d "prevent printing a terminating newline if it is not part of the format, such as with raw" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -help'" -o "" -d "specifies that all further arguments are file names" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -lint'" -s "s" -d "be silent on success" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -lint'" -s "o" -d "specify alternate file path name for result; the path '-' means stdout" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -lint'" -s "e" -d "specify alternate extension for converted files" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -lint'" -s "r" -d "if writing JSON, output in human-readable form" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -lint'" -s "n" -d "prevent printing a terminating newline if it is not part of the format, such as with raw" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -lint'" -o "" -d "specifies that all further arguments are file names" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -convert'" -s "s" -d "be silent on success" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -convert'" -s "o" -d "specify alternate file path name for result; the path '-' means stdout" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -convert'" -s "e" -d "specify alternate extension for converted files" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -convert'" -s "r" -d "if writing JSON, output in human-readable form" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -convert'" -s "n" -d "prevent printing a terminating newline if it is not part of the format, such as with raw" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -convert'" -o "" -d "specifies that all further arguments are file names" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -insert'" -s "s" -d "be silent on success" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -insert'" -s "o" -d "specify alternate file path name for result; the path '-' means stdout" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -insert'" -s "e" -d "specify alternate extension for converted files" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -insert'" -s "r" -d "if writing JSON, output in human-readable form" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -insert'" -s "n" -d "prevent printing a terminating newline if it is not part of the format, such as with raw" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -insert'" -o "" -d "specifies that all further arguments are file names" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -replace'" -s "s" -d "be silent on success" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -replace'" -s "o" -d "specify alternate file path name for result; the path '-' means stdout" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -replace'" -s "e" -d "specify alternate extension for converted files" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -replace'" -s "r" -d "if writing JSON, output in human-readable form" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -replace'" -s "n" -d "prevent printing a terminating newline if it is not part of the format, such as with raw" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -replace'" -o "" -d "specifies that all further arguments are file names" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -remove'" -s "s" -d "be silent on success" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -remove'" -s "o" -d "specify alternate file path name for result; the path '-' means stdout" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -remove'" -s "e" -d "specify alternate extension for converted files" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -remove'" -s "r" -d "if writing JSON, output in human-readable form" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -remove'" -s "n" -d "prevent printing a terminating newline if it is not part of the format, such as with raw" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -remove'" -o "" -d "specifies that all further arguments are file names" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -extract'" -s "s" -d "be silent on success" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -extract'" -s "o" -d "specify alternate file path name for result; the path '-' means stdout" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -extract'" -s "e" -d "specify alternate extension for converted files" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -extract'" -s "r" -d "if writing JSON, output in human-readable form" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -extract'" -s "n" -d "prevent printing a terminating newline if it is not part of the format, such as with raw" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -extract'" -o "" -d "specifies that all further arguments are file names" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -type'" -s "s" -d "be silent on success" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -type'" -s "o" -d "specify alternate file path name for result; the path '-' means stdout" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -type'" -s "e" -d "specify alternate extension for converted files" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -type'" -s "r" -d "if writing JSON, output in human-readable form" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -type'" -s "n" -d "prevent printing a terminating newline if it is not part of the format, such as with raw" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -type'" -o "" -d "specifies that all further arguments are file names" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -create'" -s "s" -d "be silent on success" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -create'" -s "o" -d "specify alternate file path name for result; the path '-' means stdout" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -create'" -s "e" -d "specify alternate extension for converted files" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -create'" -s "r" -d "if writing JSON, output in human-readable form" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -create'" -s "n" -d "prevent printing a terminating newline if it is not part of the format, such as with raw" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -create'" -o "" -d "specifies that all further arguments are file names" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -p'" -s "s" -d "be silent on success" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -p'" -s "o" -d "specify alternate file path name for result; the path '-' means stdout" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -p'" -s "e" -d "specify alternate extension for converted files" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -p'" -s "r" -d "if writing JSON, output in human-readable form" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -p'" -s "n" -d "prevent printing a terminating newline if it is not part of the format, such as with raw" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '-convert -p'" -o "" -d "specifies that all further arguments are file names" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto'" -o "help" -d "show this message and exit" # global
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto'" -o "convert" -d "rewrite property list files in format" -xa "xml1 binary1 json swift objc" # global
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto'" -o "insert" -d "insert a value into the property list before writing it out" # global
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto'" -o "replace" -d "same as -insert, but it will overwrite an existing value" # global
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto'" -o "remove" -d "removes the value at 'keypath' from the property list before writing it out" # global
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto'" -o "extract" -d "outputs the value at 'keypath' in the property list as a new plist of type 'fmt'" -xa "xml1 binary1 json raw" # global
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto'" -o "type" -d "outputs the type of the value at 'keypath' in the property list" -xa "bool integer float string date data dictionary array" # global
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto'" -o "create" -d "creates an empty plist of the specified format" -xa "xml1 binary1 json swift objc" # global
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto'" -s "p" -d "print property list in a human-readable fashion (not for machine parsing; this 'format' is not stable)" # global
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto'" -s "s" -d "be silent on success" # global
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto'" -s "o" -d "specify alternate file path name for result; the path '-' means stdout" # global
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto'" -s "e" -d "specify alternate extension for converted files" # global
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto'" -s "r" -d "if writing JSON, output in human-readable form" # global
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto'" -s "n" -d "prevent printing a terminating newline if it is not part of the format, such as with raw" # global
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto'" -l "" -d "specifies that all further arguments are file names" # global
complete -f -c "plutil" -n "__fish_seen_subcommand_from 'toto'" -a "-lint" -d "Check the property list files for syntax errors" # sub
complete -f -c "plutil" -n "__fish_seen_subcommand_from 'toto'" -a "-convert" -d "Rewrite property list files in format; format is one of: xml1, binary1, json, swift, objc" # sub
complete -f -c "plutil" -n "__fish_seen_subcommand_from 'toto'" -a "-insert" -d "Insert a value into the property list before writing it out" # sub
complete -f -c "plutil" -n "__fish_seen_subcommand_from 'toto'" -a "-replace" -d "Overwrite an existing value in the property list" # sub
complete -f -c "plutil" -n "__fish_seen_subcommand_from 'toto'" -a "-remove" -d "Removes the value at keypath from the property list before writing it out" # sub
complete -f -c "plutil" -n "__fish_seen_subcommand_from 'toto'" -a "-extract" -d "Outputs the value at keypath in the property list as a new plist of type fmt" # sub
complete -f -c "plutil" -n "__fish_seen_subcommand_from 'toto'" -a "-type" -d "Outputs the type of the value at keypath in the property list" # sub
complete -f -c "plutil" -n "__fish_seen_subcommand_from 'toto'" -a "-create" -d "Creates an empty plist of the specified format" # sub
complete -f -c "plutil" -n "__fish_seen_subcommand_from 'toto'" -a "-p" -d "Print property list in a human-readable fashion (not for machine parsing)" # sub
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -lint'" -o "help" -d "show this message and exit" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -lint'" -o "convert" -d "rewrite property list files in format" -xa "xml1 binary1 json swift objc" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -lint'" -o "insert" -d "insert a value into the property list before writing it out" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -lint'" -o "replace" -d "same as -insert, but it will overwrite an existing value" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -lint'" -o "remove" -d "removes the value at 'keypath' from the property list before writing it out" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -lint'" -o "extract" -d "outputs the value at 'keypath' in the property list as a new plist of type 'fmt'" -xa "xml1 binary1 json raw" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -lint'" -o "type" -d "outputs the type of the value at 'keypath' in the property list" -xa "bool integer float string date data dictionary array" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -lint'" -o "create" -d "creates an empty plist of the specified format" -xa "xml1 binary1 json swift objc" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -lint'" -s "p" -d "print property list in a human-readable fashion (not for machine parsing; this 'format' is not stable)" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -lint'" -s "s" -d "be silent on success" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -lint'" -s "o" -d "specify alternate file path name for result; the path '-' means stdout" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -lint'" -s "e" -d "specify alternate extension for converted files" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -lint'" -s "r" -d "if writing JSON, output in human-readable form" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -lint'" -s "n" -d "prevent printing a terminating newline if it is not part of the format, such as with raw" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -lint'" -l "" -d "specifies that all further arguments are file names" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -convert'" -o "help" -d "show this message and exit" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -convert'" -o "convert" -d "rewrite property list files in format" -xa "xml1 binary1 json swift objc" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -convert'" -o "insert" -d "insert a value into the property list before writing it out" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -convert'" -o "replace" -d "same as -insert, but it will overwrite an existing value" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -convert'" -o "remove" -d "removes the value at 'keypath' from the property list before writing it out" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -convert'" -o "extract" -d "outputs the value at 'keypath' in the property list as a new plist of type 'fmt'" -xa "xml1 binary1 json raw" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -convert'" -o "type" -d "outputs the type of the value at 'keypath' in the property list" -xa "bool integer float string date data dictionary array" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -convert'" -o "create" -d "creates an empty plist of the specified format" -xa "xml1 binary1 json swift objc" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -convert'" -s "p" -d "print property list in a human-readable fashion (not for machine parsing; this 'format' is not stable)" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -convert'" -s "s" -d "be silent on success" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -convert'" -s "o" -d "specify alternate file path name for result; the path '-' means stdout" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -convert'" -s "e" -d "specify alternate extension for converted files" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -convert'" -s "r" -d "if writing JSON, output in human-readable form" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -convert'" -s "n" -d "prevent printing a terminating newline if it is not part of the format, such as with raw" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -convert'" -l "" -d "specifies that all further arguments are file names" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -insert'" -o "help" -d "show this message and exit" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -insert'" -o "convert" -d "rewrite property list files in format" -xa "xml1 binary1 json swift objc" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -insert'" -o "insert" -d "insert a value into the property list before writing it out" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -insert'" -o "replace" -d "same as -insert, but it will overwrite an existing value" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -insert'" -o "remove" -d "removes the value at 'keypath' from the property list before writing it out" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -insert'" -o "extract" -d "outputs the value at 'keypath' in the property list as a new plist of type 'fmt'" -xa "xml1 binary1 json raw" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -insert'" -o "type" -d "outputs the type of the value at 'keypath' in the property list" -xa "bool integer float string date data dictionary array" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -insert'" -o "create" -d "creates an empty plist of the specified format" -xa "xml1 binary1 json swift objc" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -insert'" -s "p" -d "print property list in a human-readable fashion (not for machine parsing; this 'format' is not stable)" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -insert'" -s "s" -d "be silent on success" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -insert'" -s "o" -d "specify alternate file path name for result; the path '-' means stdout" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -insert'" -s "e" -d "specify alternate extension for converted files" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -insert'" -s "r" -d "if writing JSON, output in human-readable form" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -insert'" -s "n" -d "prevent printing a terminating newline if it is not part of the format, such as with raw" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -insert'" -l "" -d "specifies that all further arguments are file names" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -replace'" -o "help" -d "show this message and exit" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -replace'" -o "convert" -d "rewrite property list files in format" -xa "xml1 binary1 json swift objc" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -replace'" -o "insert" -d "insert a value into the property list before writing it out" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -replace'" -o "replace" -d "same as -insert, but it will overwrite an existing value" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -replace'" -o "remove" -d "removes the value at 'keypath' from the property list before writing it out" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -replace'" -o "extract" -d "outputs the value at 'keypath' in the property list as a new plist of type 'fmt'" -xa "xml1 binary1 json raw" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -replace'" -o "type" -d "outputs the type of the value at 'keypath' in the property list" -xa "bool integer float string date data dictionary array" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -replace'" -o "create" -d "creates an empty plist of the specified format" -xa "xml1 binary1 json swift objc" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -replace'" -s "p" -d "print property list in a human-readable fashion (not for machine parsing; this 'format' is not stable)" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -replace'" -s "s" -d "be silent on success" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -replace'" -s "o" -d "specify alternate file path name for result; the path '-' means stdout" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -replace'" -s "e" -d "specify alternate extension for converted files" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -replace'" -s "r" -d "if writing JSON, output in human-readable form" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -replace'" -s "n" -d "prevent printing a terminating newline if it is not part of the format, such as with raw" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -replace'" -l "" -d "specifies that all further arguments are file names" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -remove'" -o "help" -d "show this message and exit" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -remove'" -o "convert" -d "rewrite property list files in format" -xa "xml1 binary1 json swift objc" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -remove'" -o "insert" -d "insert a value into the property list before writing it out" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -remove'" -o "replace" -d "same as -insert, but it will overwrite an existing value" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -remove'" -o "remove" -d "removes the value at 'keypath' from the property list before writing it out" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -remove'" -o "extract" -d "outputs the value at 'keypath' in the property list as a new plist of type 'fmt'" -xa "xml1 binary1 json raw" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -remove'" -o "type" -d "outputs the type of the value at 'keypath' in the property list" -xa "bool integer float string date data dictionary array" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -remove'" -o "create" -d "creates an empty plist of the specified format" -xa "xml1 binary1 json swift objc" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -remove'" -s "p" -d "print property list in a human-readable fashion (not for machine parsing; this 'format' is not stable)" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -remove'" -s "s" -d "be silent on success" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -remove'" -s "o" -d "specify alternate file path name for result; the path '-' means stdout" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -remove'" -s "e" -d "specify alternate extension for converted files" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -remove'" -s "r" -d "if writing JSON, output in human-readable form" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -remove'" -s "n" -d "prevent printing a terminating newline if it is not part of the format, such as with raw" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -remove'" -l "" -d "specifies that all further arguments are file names" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -extract'" -o "help" -d "show this message and exit" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -extract'" -o "convert" -d "rewrite property list files in format" -xa "xml1 binary1 json swift objc" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -extract'" -o "insert" -d "insert a value into the property list before writing it out" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -extract'" -o "replace" -d "same as -insert, but it will overwrite an existing value" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -extract'" -o "remove" -d "removes the value at 'keypath' from the property list before writing it out" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -extract'" -o "extract" -d "outputs the value at 'keypath' in the property list as a new plist of type 'fmt'" -xa "xml1 binary1 json raw" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -extract'" -o "type" -d "outputs the type of the value at 'keypath' in the property list" -xa "bool integer float string date data dictionary array" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -extract'" -o "create" -d "creates an empty plist of the specified format" -xa "xml1 binary1 json swift objc" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -extract'" -s "p" -d "print property list in a human-readable fashion (not for machine parsing; this 'format' is not stable)" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -extract'" -s "s" -d "be silent on success" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -extract'" -s "o" -d "specify alternate file path name for result; the path '-' means stdout" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -extract'" -s "e" -d "specify alternate extension for converted files" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -extract'" -s "r" -d "if writing JSON, output in human-readable form" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -extract'" -s "n" -d "prevent printing a terminating newline if it is not part of the format, such as with raw" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -extract'" -l "" -d "specifies that all further arguments are file names" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -type'" -o "help" -d "show this message and exit" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -type'" -o "convert" -d "rewrite property list files in format" -xa "xml1 binary1 json swift objc" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -type'" -o "insert" -d "insert a value into the property list before writing it out" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -type'" -o "replace" -d "same as -insert, but it will overwrite an existing value" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -type'" -o "remove" -d "removes the value at 'keypath' from the property list before writing it out" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -type'" -o "extract" -d "outputs the value at 'keypath' in the property list as a new plist of type 'fmt'" -xa "xml1 binary1 json raw" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -type'" -o "type" -d "outputs the type of the value at 'keypath' in the property list" -xa "bool integer float string date data dictionary array" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -type'" -o "create" -d "creates an empty plist of the specified format" -xa "xml1 binary1 json swift objc" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -type'" -s "p" -d "print property list in a human-readable fashion (not for machine parsing; this 'format' is not stable)" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -type'" -s "s" -d "be silent on success" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -type'" -s "o" -d "specify alternate file path name for result; the path '-' means stdout" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -type'" -s "e" -d "specify alternate extension for converted files" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -type'" -s "r" -d "if writing JSON, output in human-readable form" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -type'" -s "n" -d "prevent printing a terminating newline if it is not part of the format, such as with raw" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -type'" -l "" -d "specifies that all further arguments are file names" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -create'" -o "help" -d "show this message and exit" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -create'" -o "convert" -d "rewrite property list files in format" -xa "xml1 binary1 json swift objc" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -create'" -o "insert" -d "insert a value into the property list before writing it out" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -create'" -o "replace" -d "same as -insert, but it will overwrite an existing value" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -create'" -o "remove" -d "removes the value at 'keypath' from the property list before writing it out" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -create'" -o "extract" -d "outputs the value at 'keypath' in the property list as a new plist of type 'fmt'" -xa "xml1 binary1 json raw" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -create'" -o "type" -d "outputs the type of the value at 'keypath' in the property list" -xa "bool integer float string date data dictionary array" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -create'" -o "create" -d "creates an empty plist of the specified format" -xa "xml1 binary1 json swift objc" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -create'" -s "p" -d "print property list in a human-readable fashion (not for machine parsing; this 'format' is not stable)" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -create'" -s "s" -d "be silent on success" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -create'" -s "o" -d "specify alternate file path name for result; the path '-' means stdout" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -create'" -s "e" -d "specify alternate extension for converted files" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -create'" -s "r" -d "if writing JSON, output in human-readable form" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -create'" -s "n" -d "prevent printing a terminating newline if it is not part of the format, such as with raw" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -create'" -l "" -d "specifies that all further arguments are file names" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -p'" -o "help" -d "show this message and exit" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -p'" -o "convert" -d "rewrite property list files in format" -xa "xml1 binary1 json swift objc" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -p'" -o "insert" -d "insert a value into the property list before writing it out" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -p'" -o "replace" -d "same as -insert, but it will overwrite an existing value" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -p'" -o "remove" -d "removes the value at 'keypath' from the property list before writing it out" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -p'" -o "extract" -d "outputs the value at 'keypath' in the property list as a new plist of type 'fmt'" -xa "xml1 binary1 json raw" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -p'" -o "type" -d "outputs the type of the value at 'keypath' in the property list" -xa "bool integer float string date data dictionary array" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -p'" -o "create" -d "creates an empty plist of the specified format" -xa "xml1 binary1 json swift objc" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -p'" -s "p" -d "print property list in a human-readable fashion (not for machine parsing; this 'format' is not stable)" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -p'" -s "s" -d "be silent on success" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -p'" -s "o" -d "specify alternate file path name for result; the path '-' means stdout" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -p'" -s "e" -d "specify alternate extension for converted files" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -p'" -s "r" -d "if writing JSON, output in human-readable form" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -p'" -s "n" -d "prevent printing a terminating newline if it is not part of the format, such as with raw" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from 'toto -p'" -l "" -d "specifies that all further arguments are file names" # subcommands flags
complete -c "plutil" -n "__fish_seen_subcommand_from '123'" -o "help" -d "show this message and exit" # global
complete -c "plutil" -n "__fish_seen_subcommand_from '123'" -o "lint" -d "check the property list files for syntax errors" # global
complete -c "plutil" -n "__fish_seen_subcommand_from '123'" -o "convert" -d "rewrite property list files in format" -xa "xml1 binary1 json swift objc" # global
complete -c "plutil" -n "__fish_seen_subcommand_from '123'" -o "insert" -d "insert a value into the property list before writing it out" # global
complete -c "plutil" -n "__fish_seen_subcommand_from '123'" -o "type" -d "requires 'value' argument specifying the type, can be one of: bool, integer, float, date, string, data, xml, json, dictionary, array (for use with -insert, -replace, -extract)" -xa "bool integer float date string data xml json dictionary array" # global
complete -c "plutil" -n "__fish_seen_subcommand_from '123'" -o "replace" -d "overwrite an existing value in the property list" # global
complete -c "plutil" -n "__fish_seen_subcommand_from '123'" -o "remove" -d "removes the value at 'keypath' from the property list before writing it out" # global
complete -c "plutil" -n "__fish_seen_subcommand_from '123'" -o "extract" -d "outputs the value at 'keypath' in the property list as a new plist of type 'fmt'" -xa "xml1 binary1 json raw" # global
complete -c "plutil" -n "__fish_seen_subcommand_from '123'" -o "expect" -d "tests that the value at the specified keypath is of the specified type (for use with -extract)" -xa "bool integer float string date data dictionary array" # global
complete -c "plutil" -n "__fish_seen_subcommand_from '123'" -o "type" -d "outputs the type of the value at 'keypath' in the property list" -xa "bool integer float string date data dictionary array" # global
complete -c "plutil" -n "__fish_seen_subcommand_from '123'" -o "create" -d "creates an empty plist of the specified format" -xa "xml1 binary1 json swift objc" # global
complete -c "plutil" -n "__fish_seen_subcommand_from '123'" -s "p" -d "print property list in a human-readable fashion (not for machine parsing! this 'format' is not stable)" # global
complete -c "plutil" -n "__fish_seen_subcommand_from '123'" -s "s" -d "be silent on success" # global
complete -c "plutil" -n "__fish_seen_subcommand_from '123'" -s "o" -d "specify alternate file path name for result; the path '-' means stdout" # global
complete -c "plutil" -n "__fish_seen_subcommand_from '123'" -s "e" -d "specify alternate extension for converted files" # global
complete -c "plutil" -n "__fish_seen_subcommand_from '123'" -s "r" -d "if writing JSON, output in human-readable form" # global
complete -c "plutil" -n "__fish_seen_subcommand_from '123'" -s "n" -d "prevent printing a terminating newline if it is not part of the format, such as with raw" # global
complete -c "plutil" -n "__fish_seen_subcommand_from '123'" -l "" -d "specifies that all further arguments are file names" # global