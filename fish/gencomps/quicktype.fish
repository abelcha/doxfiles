complete -c quicktype -s o -l out -d 'FILE                                              The output file. Determines --lang and --top-level.'
complete -c quicktype -s t -l top-level -d 'NAME                                        The name for the top level type.'
complete -c quicktype -s l -l lang -d 'LANG                                             The target language.'
complete -c quicktype -s s -l src-lang -d 'SRC_LANG                                     The source language (default is json).'
complete -c quicktype -l src -d 'FILE|URL|DIRECTORY                                    The file, url, or data directory to type.'
complete -c quicktype -l src-urls -d 'FILE                                             Tracery grammar describing URLs to crawl.'
complete -c quicktype -l no-maps -d Don\'t\ infer\ maps,\ always\ use\ classes.
complete -c quicktype -l no-enums -d Don\'t\ infer\ enums,\ always\ use\ strings.
complete -c quicktype -l no-uuids -d Don\'t\ convert\ UUIDs\ to\ UUID\ objects.
complete -c quicktype -l no-date-times -d Don\'t\ infer\ dates\ or\ times.
complete -c quicktype -l no-integer-strings -d Don\'t\ convert\ stringified\ integers\ to\ integers.
complete -c quicktype -l no-boolean-strings -d Don\'t\ convert\ stringified\ booleans\ to\ booleans.
complete -c quicktype -l no-combine-classes -d Don\'t\ combine\ similar\ classes.
complete -c quicktype -l no-ignore-json-refs -d 'Treat $ref as a reference in JSON.'
complete -c quicktype -l graphql-schema -d 'FILE                                       GraphQL introspection file.'
complete -c quicktype -l graphql-introspect -d 'URL                                    Introspect GraphQL schema from a server.'
complete -c quicktype -l http-method -d 'METHOD                                        HTTP method to use for the GraphQL introspection query.'
complete -c quicktype -l http-header -d 'HEADER                                        Header(s) to attach to all HTTP requests, including the'
complete -c quicktype -s S -l additional-schema -d FILE\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Register\ the\ \$id\'s\ of\ additional\ JSON\ Schema\ files.
complete -c quicktype -l alphabetize-properties -d 'Alphabetize order of class properties.'
complete -c quicktype -l all-properties-optional -d 'Make all class properties optional.'
complete -c quicktype -l quiet -d Don\'t\ show\ issues\ in\ the\ generated\ code.
complete -c quicktype -l debug -d 'OPTIONS or all                                      Comma separated debug options: print-graph, print-'
complete -c quicktype -l telemetry -d 'enable|disable                                  Enable anonymous telemetry to help improve quicktype'
complete -c quicktype -s h -l help -d 'Get some help.'
complete -c quicktype -n __fish_no_arguments -s v -l version -d 'Display the version of quicktype'
complete -c quicktype -l framework -d 'NewtonSoft|SystemTextJson                       Serialization framework'
complete -c quicktype -l namespace -d 'NAME                                            Generated namespace'
complete -c quicktype -l csharp-version -d '5|6                                        C# version'
complete -c quicktype -l density -d 'normal|dense                                      Property density'
complete -c quicktype -l array-type -d 'array|list                                     Use T[] or List<T>'
complete -c quicktype -l number-type -d 'double|decimal                                Type to use for numbers'
complete -c quicktype -l any-type -d 'object|dynamic                                   Type to use for "any"'
complete -c quicktype -l features -d 'complete|attributes-only|just-types-and-         Output features'
complete -c quicktype -l base-class -d 'EntityData|Object                              Base class'
complete -c quicktype -l package -d 'NAME                                              Generated package name'
complete -c quicktype -l field-tags -d 'TAGS                                           list of tags which should be generated for fields'
complete -c quicktype -l density -d 'normal|dense                                      Density'
complete -c quicktype -l visibility -d 'private|crate|public                           Field visibility'
complete -c quicktype -l source-style -d 'single-source|multi-source                   Source code generation type, whether to generate single or'
complete -c quicktype -l integer-size -d 'int8_t|int16_t|int32_t|int64_t               Integer code generation type (int64_t by default)'
complete -c quicktype -l typedef-alias -d 'no-typedef|add-typedef                      Add typedef alias to unions, structs, and enums (no'
complete -c quicktype -l print-style -d 'print-formatted|print-unformatted             Which cJSON print should be used (formatted by default)'
complete -c quicktype -l hashtable-size -d 'SIZE                                       Hashtable size, used when maps are created (64 by default)'
complete -c quicktype -l type-style -d 'pascal-case|underscore-case|camel-case|upper-  Naming style for types'
complete -c quicktype -l member-style -d 'underscore-case|pascal-case|camel-           Naming style for members'
complete -c quicktype -l enumerator-style -d 'upper-underscore-case|underscore-        Naming style for enumerators'
complete -c quicktype -l namespace -d 'NAME                                            Name of the generated namespace(s)'
complete -c quicktype -l code-format -d 'with-struct|with-getter-setter                Generate classes with getters/setters, instead of structs'
complete -c quicktype -l wstring -d 'use-string|use-wstring                            Store strings using Utf-16 std::wstring, rather than Utf-8'
complete -c quicktype -l const-style -d 'west-const|east-const                         Put const to the left/west (const T) or right/east (T'
complete -c quicktype -l source-style -d 'single-source|multi-source                   Source code generation type,  whether to generate single'
complete -c quicktype -l include-location -d 'local-include|global-include             Whether json.hpp is to be located globally or locally'
complete -c quicktype -l type-style -d 'pascal-case|underscore-case|camel-case|upper-  Naming style for types'
complete -c quicktype -l member-style -d 'underscore-case|pascal-case|camel-           Naming style for members'
complete -c quicktype -l enumerator-style -d 'upper-underscore-case|underscore-        Naming style for enumerators'
complete -c quicktype -l enum-type -d 'NAME                                            Type of enum class'
complete -c quicktype -l class-prefix -d 'PREFIX                                       Class prefix'
complete -c quicktype -l features -d 'all|interface|implementation                     Interface and implementation'
complete -c quicktype -l array-type -d 'array|list                                     Use T[] or List<T>'
complete -c quicktype -l datetime-provider -d 'java8|legacy                            Date time provider type'
complete -c quicktype -l acronym-style -d 'original|pascal|camel|lowerCase             Acronym naming style'
complete -c quicktype -l package -d 'NAME                                              Generated package name'
complete -c quicktype -l acronym-style -d 'original|pascal|camel|lowerCase             Acronym naming style'
complete -c quicktype -l converters -d 'top-level|all-objects                          Which converters to generate (top-level by default)'
complete -c quicktype -l raw-type -d 'json|any                                         Type of raw input (json by default)'
complete -c quicktype -l acronym-style -d 'original|pascal|camel|lowerCase             Acronym naming style'
complete -c quicktype -l converters -d 'top-level|all-objects                          Which converters to generate (top-level by default)'
complete -c quicktype -l raw-type -d 'json|any                                         Type of raw input (json by default)'
complete -c quicktype -l acronym-style -d 'original|pascal|camel|lowerCase             Acronym naming style'
complete -c quicktype -l converters -d 'top-level|all-objects                          Which converters to generate (top-level by default)'
complete -c quicktype -l acronym-style -d 'original|pascal|camel|lowerCase             Acronym naming style'
complete -c quicktype -l converters -d 'top-level|all-objects                          Which converters to generate (top-level by default)'
complete -c quicktype -l raw-type -d 'json|any                                         Type of raw input (json by default)'
complete -c quicktype -l struct-or-class -d 'struct|class                              Structs or classes'
complete -c quicktype -l density -d 'dense|normal                                      Code density'
complete -c quicktype -l coding-keys-protocol -d 'protocol1, protocol2...              CodingKeys implements protocols'
complete -c quicktype -l access-level -d 'internal|public                              Access level'
complete -c quicktype -l type-prefix -d 'PREFIX                                        Prefix for type names'
complete -c quicktype -l protocol -d 'none|equatable|hashable                          Make types implement protocol'
complete -c quicktype -l acronym-style -d 'original|pascal|camel|lowerCase             Acronym naming style'
complete -c quicktype -l framework -d 'just-types|circe|upickle                        Serialization framework'
complete -c quicktype -l package -d 'PACKAGE                                           Package'
complete -c quicktype -l framework -d 'just-types                                      Serialization framework'
complete -c quicktype -l package -d 'PACKAGE                                           Package'
complete -c quicktype -l framework -d 'just-types|jackson|klaxon|kotlinx               Serialization framework'
complete -c quicktype -l acronym-style -d 'original|pascal|camel|lowerCase             Acronym naming style'
complete -c quicktype -l package -d 'PACKAGE                                           Package'
complete -c quicktype -l module -d 'NAME                                               Generated module name'
complete -c quicktype -l array-type -d 'array|list                                     Use Array or List'
complete -c quicktype -l strictness -d 'strict|coercible|none                          Type strictness'
complete -c quicktype -l namespace -d 'NAME                                            Specify a wrapping Namespace'
complete -c quicktype -l part-name -d 'NAME                                            Use this name in `part` directive'
complete -c quicktype -l python-version -d '3.5|3.6|3.7                                Python version'
complete -c quicktype -l module -d 'NAME                                               Generated module name'
complete -c quicktype -l array-type -d 'array|list                                     Use Array or List'
complete -c quicktype -l namespace -d 'NAME                                            Specify a module namespace'
complete -c quicktype -l acronym-style -d 'original|pascal|camel|lowerCase             Acronym naming style'
