complete -c "swift" -o "access-notes-path" -d "Specify YAML file to override attributes on Swift declarations in this module" # global
complete -c "swift" -o "allow-non-resilient-access" -d "Ensures all contents are generated besides exportable decls in the binary module, so non-resilient access can be allowed" # global
complete -c "swift" -o "allowable-client" -d "Module names that are allowed to import this module" # global
complete -c "swift" -o "assert-config" -d "Specify the assert_configuration replacement. Possible values are Debug, Release, Unchecked, DisableReplacement." -xa "Debug Release Unchecked DisableReplacement" # global
complete -c "swift" -o "build-id" -d "Specify the build ID argument passed to the linker" # global
complete -c "swift" -o "cache-compile-job" -d "Enable compiler caching" # global
complete -c "swift" -o "cache-disable-replay" -d "Skip loading the compilation result from cache" # global
complete -c "swift" -o "cas-path" -d "Path to CAS" # global
complete -c "swift" -o "cas-plugin-option" -d "Option pass to CAS Plugin" # global
complete -c "swift" -o "cas-plugin-path" -d "Path to CAS Plugin" # global
complete -c "swift" -o "clang-build-session-file" -d "Use the last modification time of <file> as the underlying Clang build session timestamp" # global
complete -c "swift" -o "clang-scanner-module-cache-path" -d "Specifies the Clang dependency scanner module cache path" # global
complete -c "swift" -o "clang-target-variant" -d "Separately set the target we should use for internal Clang instance for the 'zippered' code for macCatalyst" # global
complete -c "swift" -o "clang-target" -d "Separately set the target we should use for internal Clang instance" # global
complete -c "swift" -o "color-diagnostics" -d "Print diagnostics in color" # global
complete -c "swift" -o "compiler-assertions" -d "Enable internal self-checks while compiling" # global
complete -c "swift" -o "continue-building-after-errors" -d "Continue building, even after errors are encountered" # global
complete -c "swift" -o "coverage-prefix-map" -d "Remap source paths in coverage info" # global
complete -c "swift" -s "c" -o "cxx-interoperability-mode" -d "Enables C++ interoperability; pass 'default' to enable or 'off' to disable" -xa "default off" # global
complete -c "swift" -o "debug-info-format" -d "Specify the debug info format type to either 'dwarf' or 'codeview'" -xa "dwarf codeview" # global
complete -c "swift" -o "debug-info-store-invocation" -d "Emit the compiler invocation in the debug info." # global
complete -c "swift" -o "debug-prefix-map" -d "Remap source paths in debug info" # global
complete -c "swift" -o "default-isolation" -d "Specify the default actor isolation: MainActor or nonisolated. Defaults to nonisolated." -xa "MainActor nonisolated" # global
complete -c "swift" -o "diagnostic-style" -d "The formatting style used when printing diagnostics ('swift' or 'llvm')" -xa "swift llvm" # global
complete -c "swift" -o "disable-actor-data-race-checks" -d "Disable runtime checks for actor data races" # global
complete -c "swift" -o "disable-autolinking-runtime-compatibility-concurrency" -d "Do not use autolinking for the concurrency runtime compatibility library" # global
complete -c "swift" -o "disable-autolinking-runtime-compatibility-dynamic-replacements" -d "Do not use autolinking for the dynamic replacement runtime compatibility library" # global
complete -c "swift" -o "disable-autolinking-runtime-compatibility" -d "Do not use autolinking for runtime compatibility libraries" # global
complete -c "swift" -o "disable-clang-target" -d "Disable a separately specified target triple for Clang instance to use" # global
complete -c "swift" -o "disable-dynamic-actor-isolation" -d "Disable dynamic actor isolation checks" # global
complete -c "swift" -o "disable-experimental-feature" -d "Disable an experimental feature" # global
complete -c "swift" -o "disable-incremental-imports" -d "Disable cross-module incremental build metadata and driver scheduling for Swift modules" # global
complete -c "swift" -o "disable-only-one-dependency-file" -d "Disables incremental build optimization that only produces one dependencies file" # global
complete -c "swift" -o "disable-sandbox" -d "Disable using the sandbox when executing subprocesses" # global
complete -c "swift" -o "disable-upcoming-feature" -d "Disable a feature that will be introduced in an upcoming language version" # global
complete -c "swift" -o "disallow-use-new-driver" -d "Disable using new swift-driver" # global
complete -c "swift" -s "d" -o "dwarf-version" -d "DWARF debug info version to produce if requested" # global
complete -c "swift" -s "D" -o "D" -d "Marks a conditional compilation flag as true" # global
complete -c "swift" -o "embed-tbd-for-module" -d "Embed symbols from the module in the emitted tbd file" # global
complete -c "swift" -o "emit-module-dependencies-path" -d "Emit a discovered dependencies file for the emit-module task to <path>" # global
complete -c "swift" -o "emit-module-serialize-diagnostics-path" -d "Emit a serialized diagnostics file for the emit-module task to <path>" # global
complete -c "swift" -o "enable-actor-data-race-checks" -d "Emit runtime checks for actor data races" # global
complete -c "swift" -o "enable-autolinking-runtime-compatibility-bytecode-layouts" -d "Enable autolinking for the bytecode layouts runtime compatibility library" # global
complete -c "swift" -o "enable-bare-slash-regex" -d "Enable the use of forward slash regular-expression literal syntax" # global
complete -c "swift" -o "enable-builtin-module" -d "Enables the explicit import of the Builtin module" # global
complete -c "swift" -o "enable-deterministic-check" -d "Check compiler output determinism by running it twice" # global
complete -c "swift" -o "enable-experimental-additive-arithmetic-derivation" -d "Enable experimental 'AdditiveArithmetic' derived conformances" # global
complete -c "swift" -o "enable-experimental-concise-pound-file" -d "Enable experimental concise '#file' identifier" # global
complete -c "swift" -o "enable-experimental-feature" -d "Enable an experimental feature" # global
complete -c "swift" -o "enable-experimental-forward-mode-differentiation" -d "Enable experimental forward mode differentiation" # global
complete -c "swift" -o "enable-incremental-imports" -d "Enable cross-module incremental build metadata and driver scheduling for Swift modules" # global
complete -c "swift" -o "enable-library-evolution" -d "Build the module to allow binary-compatible library evolution" # global
complete -c "swift" -o "enable-only-one-dependency-file" -d "Enables incremental build optimization that only produces one dependencies file" # global
complete -c "swift" -o "enable-upcoming-feature" -d "Enable a feature that will be introduced in an upcoming language version" # global
complete -c "swift" -o "enforce-exclusivity" -d "Enforce law of exclusivity" # global
complete -c "swift" -o "executor-factory" -d "Specify the factory to use to create the default executors for Swift Concurrency.  This must be a type conforming to the 'ExecutorFactory' protocol." # global
complete -c "swift" -o "experimental-allow-non-resilient-access" -d "Deprecated; use -allow-non-resilient-access instead" # global
complete -c "swift" -o "experimental-package-bypass-resilience" -d "Deprecated; has no effect" # global
complete -c "swift" -o "experimental-package-cmo-abort-on-deserialization-fail" -d "Abort if a deserialization error is found while package optimization is enabled" # global
complete -c "swift" -o "experimental-package-cmo" -d "Deprecated; use -package-cmo instead" # global
complete -c "swift" -o "explain-module-dependency-detailed" -d "Emit remarks describing every possible dependency path that explains why compilation may depend on a module with a given name." # global
complete -c "swift" -o "explain-module-dependency" -d "Emit remark describing why compilation may depend on a module with a given name." # global
complete -c "swift" -o "explicit-auto-linking" -d "Instead of linker-load directives, have the driver specify all link dependencies on the linker invocation. Requires '-explicit-module-build'." # global
complete -c "swift" -o "export-as" -d "Module name to use when referenced in clients module interfaces" # global
complete -c "swift" -o "external-plugin-path" -d "Add directory to the plugin search path with a plugin server executable" # global
complete -c "swift" -s "e" -o "e" -d "Executes a line of code provided on the command line" # global
complete -c "swift" -o "file-compilation-dir" -d "The compilation directory to embed in the debug info. Coverage mapping is not supported yet." # global
complete -c "swift" -o "file-prefix-map" -d "Remap source paths in debug, coverage, and index info" # global
complete -c "swift" -o "framework" -d "Specifies a framework which should be linked against" # global
complete -c "swift" -o "Fsystem" -d "Add directory to system framework search path" # global
complete -c "swift" -s "F" -o "F" -d "Add directory to framework search path" # global
complete -c "swift" -o "gdwarf-types" -d "Emit full DWARF type info." # global
complete -c "swift" -o "gline-tables-only" -d "Emit minimal debug info for backtraces only" # global
complete -c "swift" -o "gnone" -d "Don't emit debug info" # global
complete -c "swift" -s "g" -o "g" -d "Emit debug info. This is the preferred setting for debugging with LLDB." # global
complete -c "swift" -o "help" -d "Display available options" # global
complete -c "swift" -o "in-process-plugin-server-path" -d "Path to dynamic library plugin server" # global
complete -c "swift" -o "index-ignore-clang-modules" -d "Avoid indexing clang modules (pcms)" # global
complete -c "swift" -o "index-include-locals" -d "Include local definitions/references in the produced index data." # global
complete -c "swift" -o "index-store-path" -d "Store indexing data to <path>" # global
complete -c "swift" -o "index-unit-output-path" -d "Use <path> as the output path in the produced index data." # global
complete -c "swift" -o "Isystem" -d "Add directory to the system import search path" # global
complete -c "swift" -s "I" -o "I" -d "Add directory to the import search path" # global
complete -c "swift" -s "j" -o "j" -d "Number of commands to execute in parallel" # global
complete -c "swift" -o "libc" -d "libc runtime library to use" # global
complete -c "swift" -o "link-objc-runtime" -d "Deprecated" # global
complete -c "swift" -o "load-pass-plugin" -d "Load LLVM pass plugin from a dynamic shared object file." # global
complete -c "swift" -o "load-plugin-executable" -d "Path to a compiler plugin executable and a comma-separated list of module names where the macro types are declared" # global
complete -c "swift" -o "load-plugin-library" -d "Path to a dynamic library containing compiler plugins such as macros" # global
complete -c "swift" -o "load-resolved-plugin" -d "Path to resolved plugin configuration and a comma-separated list of module names where the macro types are declared. Library path and exectuable path can be empty if not used" # global
complete -c "swift" -o "locale" -d "Choose a language for diagnostic messages" # global
complete -c "swift" -o "localization-path" -d "Path to localized diagnostic messages directory" # global
complete -c "swift" -s "L" -o "L" -d "Add directory to library link search path" # global
complete -c "swift" -s "l" -o "l" -d "Specifies a library which should be linked against" # global
complete -c "swift" -o "module-abi-name" -d "ABI name to use for the contents of this module" # global
complete -c "swift" -o "module-alias" -d "If a source file imports or references module <alias_name>, the <real_name> is used for the contents of the file" # global
complete -c "swift" -o "module-cache-path" -d "Specifies the module cache path" # global
complete -c "swift" -o "module-link-name" -d "Library to link against when using this module" # global
complete -c "swift" -o "module-name" -d "Name of the module to build" # global
complete -c "swift" -o "no-color-diagnostics" -d "Do not print diagnostics in color" # global
complete -c "swift" -o "no-warnings-as-errors" -d "Treat warnings as warnings" # global
complete -c "swift" -o "nostdimport" -d "Don't search the standard library or toolchain import paths for modules" # global
complete -c "swift" -o "nostdlibimport" -d "Don't search the standard library import path for modules" # global
complete -c "swift" -o "num-threads" -d "Enable multi-threading and specify number of threads" # global
complete -c "swift" -o "Onone" -d "Compile without any optimization" # global
complete -c "swift" -o "Osize" -d "Compile with optimizations and target small code size" # global
complete -c "swift" -o "Ounchecked" -d "Compile with optimizations and remove runtime safety checks" # global
complete -c "swift" -s "O" -o "O" -d "Compile with optimizations" # global
complete -c "swift" -o "package-cmo" -d "Enable optimization to perform defalut CMO within a package boundary" # global
complete -c "swift" -o "package-name" -d "Name of the package the module belongs to" # global
complete -c "swift" -o "plugin-path" -d "Add directory to the plugin search path" # global
complete -c "swift" -o "prefix-serialized-debugging-options" -d "Apply debug prefix mappings to serialized debug info in Swiftmodule files" # global
complete -c "swift" -o "pretty-print" -d "Pretty-print the output JSON" # global
complete -c "swift" -o "print-educational-notes" -d "Include educational notes in printed diagnostic output, if available" # global
complete -c "swift" -o "print-supported-features" -d "Print information about features supported by the compiler" # global
complete -c "swift" -o "print-target-info" -d "Print target information for the given target <triple>, such as x86_64-apple-macos10.9" # global
complete -c "swift" -o "project-name" -d "Name of the project this module to build belongs to" # global
complete -c "swift" -o "public-module-name" -d "Public facing module name to use in diagnostics and documentation" # global
complete -c "swift" -o "Rabi-inference" -d "Emit a remark when an '@abi' attribute adds an attribute or modifier to the ABI declaration based on its presence in the API" # global
complete -c "swift" -o "Rcache-compile-job" -d "Show remarks for compiler caching" # global
complete -c "swift" -o "Rcross-import" -d "Emit a remark if a cross-import of a module is triggered." # global
complete -c "swift" -o "remove-runtime-asserts" -d "Remove runtime safety checks." # global
complete -c "swift" -o "Rindexing-system-module" -d "Emit a remark when indexing a system module" # global
complete -c "swift" -o "Rmacro-loading" -d "Emit remarks about loaded macro implementations" # global
complete -c "swift" -o "Rmodule-api-import" -d "Emit remarks about the import bridging in each element composing the API" # global
complete -c "swift" -o "Rmodule-loading" -d "Emit remarks about loaded module" # global
complete -c "swift" -o "Rmodule-recovery" -d "Emit remarks about contextual inconsistencies in loaded modules" # global
complete -c "swift" -o "Rmodule-serialization" -d "Emit remarks about module serialization" # global
complete -c "swift" -o "Rpass-missed" -d "Report missed transformations by optimization passes whose name matches the given POSIX regular expression" # global
complete -c "swift" -o "Rpass" -d "Report performed transformations by optimization passes whose name matches the given POSIX regular expression" # global
complete -c "swift" -o "Rskip-explicit-interface-build" -d "Emit a remark if an explicit module interface invocation has an early exit because the expected output is up-to-date" # global
complete -c "swift" -o "runtime-compatibility-version" -d "Link compatibility library for Swift runtime version, or 'none'" -xa "none" # global
complete -c "swift" -o "save-optimization-record-passes" -d "Only include passes which match a specified regular expression in the generated optimization record (by default, include all passes)" # global
complete -c "swift" -o "save-optimization-record-path" -d "Specify the file name of any generated optimization record" # global
complete -c "swift" -o "save-optimization-record" -d "Generate an optimization record file in a specific format (default: YAML)" -xa "YAML" # global
complete -c "swift" -o "save-optimization-record" -d "Generate a YAML optimization record file" # global
complete -c "swift" -o "scanner-prefix-map-sdk" -d "Remap paths within SDK reported by dependency scanner" # global
complete -c "swift" -o "scanner-prefix-map-toolchain" -d "Remap paths within toolchain directory reported by dependency scanner" # global
complete -c "swift" -o "scanner-prefix-map" -d "Remap paths reported by dependency scanner" # global
complete -c "swift" -o "sdk-module-cache-path" -d "Specifies the module cache path for explicitly-built SDK modules" # global
complete -c "swift" -o "sdk" -d "Compile against <sdk>" # global
complete -c "swift" -o "serialize-diagnostics-path" -d "Emit a serialized diagnostics file to <path>" # global
complete -c "swift" -o "static-executable" -d "Statically link the executable" # global
complete -c "swift" -o "static-stdlib" -d "Statically link the Swift standard library" # global
complete -c "swift" -o "strict-concurrency" -d "Specify the how strict concurrency checking will be. The value may be 'minimal' (most 'Sendable' checking is disabled), 'targeted' ('Sendable' checking is enabled in code that uses the concurrency model, or 'complete' ('Sendable' and other checking is enabled for all code in the module)" -xa "minimal targeted complete" # global
complete -c "swift" -o "strict-memory-safety" -d "Enable strict memory safety checking" # global
complete -c "swift" -o "suppress-remarks" -d "Suppress all remarks" # global
complete -c "swift" -o "suppress-warnings" -d "Suppress all warnings" # global
complete -c "swift" -o "swift-ptrauth-mode" -d "Mode for staging pointer authentication. Supported modes are LegacyAndStrip, NewAndStrip and NewAndAuth." -xa "LegacyAndStrip NewAndStrip NewAndAuth" # global
complete -c "swift" -o "swift-version" -d "Interpret input according to a specific Swift language version number" # global
complete -c "swift" -o "sysroot" -d "Native Platform sysroot" # global
complete -c "swift" -o "target-cpu" -d "Generate code for a particular CPU variant" # global
complete -c "swift" -o "target-min-inlining-version" -d "Require inlinable code with no '@available' attribute to back-deploy to this version of the '-target' OS" # global
complete -c "swift" -o "target-variant" -d "Generate 'zippered' code for macCatalyst that can run on the specified variant target triple in addition to the main -target triple" # global
complete -c "swift" -o "target" -d "Generate code for the given target <triple>, such as x86_64-apple-macos10.9" # global
complete -c "swift" -o "use-ld" -d "Specifies the flavor of the linker to be used" # global
complete -c "swift" -o "user-module-version" -d "Module version specified from Swift module authors" # global
complete -c "swift" -o "validate-clang-modules-once" -d "Don't verify input files for Clang modules if the module has been successfully validated or loaded during this build session" # global
complete -c "swift" -o "version" -d "Print version information and exit" # global
complete -c "swift" -o "vfsoverlay" -d "Add directory to VFS overlay file" # global
complete -c "swift" -o "visualc-tools-root" -d "VisualC++ Tools Root" # global
complete -c "swift" -o "visualc-tools-version" -d "VisualC++ ToolSet Version" # global
complete -c "swift" -s "v" -o "v" -d "Show commands to run and use verbose output" # global
complete -c "swift" -o "warn-concurrency" -d "Warn about code that is unsafe according to the Swift Concurrency model and will become ill-formed in a future language version" # global
complete -c "swift" -o "warn-implicit-overrides" -d "Warn about implicit overrides of protocol members" # global
complete -c "swift" -o "warnings-as-errors" -d "Treat warnings as errors" # global
complete -c "swift" -o "windows-sdk-root" -d "Windows SDK Root" # global
complete -c "swift" -o "windows-sdk-version" -d "Windows SDK Version" # global
complete -c "swift" -o "working-directory" -d "Resolve file paths relative to the specified directory" # global
complete -c "swift" -o "Xcc" -d "Pass <arg> to the C/C++/Objective-C compiler" # global
complete -c "swift" -o "Xlinker" -d "Specifies an option which should be passed to the linker" # global
complete -f -c "swift" -n "__fish_use_subcommand" -a "build" -d "Build Swift packages" # sub
complete -f -c "swift" -n "__fish_use_subcommand" -a "package" -d "Create and work on packages" # sub
complete -f -c "swift" -n "__fish_use_subcommand" -a "run" -d "Run a program from a package" # sub
complete -f -c "swift" -n "__fish_use_subcommand" -a "test" -d "Run package tests" # sub
complete -f -c "swift" -n "__fish_use_subcommand" -a "repl" -d "Experiment with Swift code interactively" # sub
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "access-notes-path" -d "Specify YAML file to override attributes on Swift declarations in this module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "allow-non-resilient-access" -d "Ensures all contents are generated besides exportable decls in the binary module, so non-resilient access can be allowed" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "allowable-client" -d "Module names that are allowed to import this module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "assert-config" -d "Specify the assert_configuration replacement. Possible values are Debug, Release, Unchecked, DisableReplacement." -xa "Debug Release Unchecked DisableReplacement" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "build-id" -d "Specify the build ID argument passed to the linker" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "cache-compile-job" -d "Enable compiler caching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "cache-disable-replay" -d "Skip loading the compilation result from cache" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "cas-path" -d "Path to CAS" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "cas-plugin-option" -d "Option pass to CAS Plugin" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "cas-plugin-path" -d "Path to CAS Plugin" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "clang-build-session-file" -d "Use the last modification time of <file> as the underlying Clang build session timestamp" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "clang-scanner-module-cache-path" -d "Specifies the Clang dependency scanner module cache path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "clang-target-variant" -d "Separately set the target we should use for internal Clang instance for the 'zippered' code for macCatalyst" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "clang-target" -d "Separately set the target we should use for internal Clang instance" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "color-diagnostics" -d "Print diagnostics in color" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "compiler-assertions" -d "Enable internal self-checks while compiling" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "continue-building-after-errors" -d "Continue building, even after errors are encountered" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "coverage-prefix-map" -d "Remap source paths in coverage info" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -s "c" -o "cxx-interoperability-mode" -d "Enables C++ interoperability; pass 'default' to enable or 'off' to disable" -xa "default off" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "debug-info-format" -d "Specify the debug info format type to either 'dwarf' or 'codeview'" -xa "dwarf codeview" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "debug-info-store-invocation" -d "Emit the compiler invocation in the debug info." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "debug-prefix-map" -d "Remap source paths in debug info" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "default-isolation" -d "Specify the default actor isolation: MainActor or nonisolated. Defaults to nonisolated." -xa "MainActor nonisolated" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "diagnostic-style" -d "The formatting style used when printing diagnostics ('swift' or 'llvm')" -xa "swift llvm" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "disable-actor-data-race-checks" -d "Disable runtime checks for actor data races" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "disable-autolinking-runtime-compatibility-concurrency" -d "Do not use autolinking for the concurrency runtime compatibility library" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "disable-autolinking-runtime-compatibility-dynamic-replacements" -d "Do not use autolinking for the dynamic replacement runtime compatibility library" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "disable-autolinking-runtime-compatibility" -d "Do not use autolinking for runtime compatibility libraries" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "disable-clang-target" -d "Disable a separately specified target triple for Clang instance to use" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "disable-dynamic-actor-isolation" -d "Disable dynamic actor isolation checks" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "disable-experimental-feature" -d "Disable an experimental feature" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "disable-incremental-imports" -d "Disable cross-module incremental build metadata and driver scheduling for Swift modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "disable-only-one-dependency-file" -d "Disables incremental build optimization that only produces one dependencies file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "disable-sandbox" -d "Disable using the sandbox when executing subprocesses" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "disable-upcoming-feature" -d "Disable a feature that will be introduced in an upcoming language version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "disallow-use-new-driver" -d "Disable using new swift-driver" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -s "d" -o "dwarf-version" -d "DWARF debug info version to produce if requested" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -s "D" -o "D" -d "Marks a conditional compilation flag as true" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "embed-tbd-for-module" -d "Embed symbols from the module in the emitted tbd file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "emit-module-dependencies-path" -d "Emit a discovered dependencies file for the emit-module task to <path>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "emit-module-serialize-diagnostics-path" -d "Emit a serialized diagnostics file for the emit-module task to <path>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "enable-actor-data-race-checks" -d "Emit runtime checks for actor data races" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "enable-autolinking-runtime-compatibility-bytecode-layouts" -d "Enable autolinking for the bytecode layouts runtime compatibility library" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "enable-bare-slash-regex" -d "Enable the use of forward slash regular-expression literal syntax" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "enable-builtin-module" -d "Enables the explicit import of the Builtin module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "enable-deterministic-check" -d "Check compiler output determinism by running it twice" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "enable-experimental-additive-arithmetic-derivation" -d "Enable experimental 'AdditiveArithmetic' derived conformances" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "enable-experimental-concise-pound-file" -d "Enable experimental concise '#file' identifier" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "enable-experimental-feature" -d "Enable an experimental feature" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "enable-experimental-forward-mode-differentiation" -d "Enable experimental forward mode differentiation" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "enable-incremental-imports" -d "Enable cross-module incremental build metadata and driver scheduling for Swift modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "enable-library-evolution" -d "Build the module to allow binary-compatible library evolution" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "enable-only-one-dependency-file" -d "Enables incremental build optimization that only produces one dependencies file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "enable-upcoming-feature" -d "Enable a feature that will be introduced in an upcoming language version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "enforce-exclusivity" -d "Enforce law of exclusivity" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "executor-factory" -d "Specify the factory to use to create the default executors for Swift Concurrency.  This must be a type conforming to the 'ExecutorFactory' protocol." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "experimental-allow-non-resilient-access" -d "Deprecated; use -allow-non-resilient-access instead" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "experimental-package-bypass-resilience" -d "Deprecated; has no effect" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "experimental-package-cmo-abort-on-deserialization-fail" -d "Abort if a deserialization error is found while package optimization is enabled" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "experimental-package-cmo" -d "Deprecated; use -package-cmo instead" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "explain-module-dependency-detailed" -d "Emit remarks describing every possible dependency path that explains why compilation may depend on a module with a given name." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "explain-module-dependency" -d "Emit remark describing why compilation may depend on a module with a given name." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "explicit-auto-linking" -d "Instead of linker-load directives, have the driver specify all link dependencies on the linker invocation. Requires '-explicit-module-build'." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "export-as" -d "Module name to use when referenced in clients module interfaces" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "external-plugin-path" -d "Add directory to the plugin search path with a plugin server executable" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -s "e" -o "e" -d "Executes a line of code provided on the command line" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "file-compilation-dir" -d "The compilation directory to embed in the debug info. Coverage mapping is not supported yet." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "file-prefix-map" -d "Remap source paths in debug, coverage, and index info" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "framework" -d "Specifies a framework which should be linked against" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "Fsystem" -d "Add directory to system framework search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -s "F" -o "F" -d "Add directory to framework search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "gdwarf-types" -d "Emit full DWARF type info." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "gline-tables-only" -d "Emit minimal debug info for backtraces only" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "gnone" -d "Don't emit debug info" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -s "g" -o "g" -d "Emit debug info. This is the preferred setting for debugging with LLDB." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "help" -d "Display available options" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "in-process-plugin-server-path" -d "Path to dynamic library plugin server" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "index-ignore-clang-modules" -d "Avoid indexing clang modules (pcms)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "index-include-locals" -d "Include local definitions/references in the produced index data." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "index-store-path" -d "Store indexing data to <path>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "index-unit-output-path" -d "Use <path> as the output path in the produced index data." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "Isystem" -d "Add directory to the system import search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -s "I" -o "I" -d "Add directory to the import search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -s "j" -o "j" -d "Number of commands to execute in parallel" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "libc" -d "libc runtime library to use" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "link-objc-runtime" -d "Deprecated" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "load-pass-plugin" -d "Load LLVM pass plugin from a dynamic shared object file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "load-plugin-executable" -d "Path to a compiler plugin executable and a comma-separated list of module names where the macro types are declared" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "load-plugin-library" -d "Path to a dynamic library containing compiler plugins such as macros" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "load-resolved-plugin" -d "Path to resolved plugin configuration and a comma-separated list of module names where the macro types are declared. Library path and exectuable path can be empty if not used" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "locale" -d "Choose a language for diagnostic messages" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "localization-path" -d "Path to localized diagnostic messages directory" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -s "L" -o "L" -d "Add directory to library link search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -s "l" -o "l" -d "Specifies a library which should be linked against" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "module-abi-name" -d "ABI name to use for the contents of this module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "module-alias" -d "If a source file imports or references module <alias_name>, the <real_name> is used for the contents of the file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "module-cache-path" -d "Specifies the module cache path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "module-link-name" -d "Library to link against when using this module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "module-name" -d "Name of the module to build" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "no-color-diagnostics" -d "Do not print diagnostics in color" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "no-warnings-as-errors" -d "Treat warnings as warnings" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "nostdimport" -d "Don't search the standard library or toolchain import paths for modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "nostdlibimport" -d "Don't search the standard library import path for modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "num-threads" -d "Enable multi-threading and specify number of threads" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "Onone" -d "Compile without any optimization" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "Osize" -d "Compile with optimizations and target small code size" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "Ounchecked" -d "Compile with optimizations and remove runtime safety checks" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -s "O" -o "O" -d "Compile with optimizations" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "package-cmo" -d "Enable optimization to perform defalut CMO within a package boundary" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "package-name" -d "Name of the package the module belongs to" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "plugin-path" -d "Add directory to the plugin search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "prefix-serialized-debugging-options" -d "Apply debug prefix mappings to serialized debug info in Swiftmodule files" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "pretty-print" -d "Pretty-print the output JSON" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "print-educational-notes" -d "Include educational notes in printed diagnostic output, if available" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "print-supported-features" -d "Print information about features supported by the compiler" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "print-target-info" -d "Print target information for the given target <triple>, such as x86_64-apple-macos10.9" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "project-name" -d "Name of the project this module to build belongs to" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "public-module-name" -d "Public facing module name to use in diagnostics and documentation" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "Rabi-inference" -d "Emit a remark when an '@abi' attribute adds an attribute or modifier to the ABI declaration based on its presence in the API" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "Rcache-compile-job" -d "Show remarks for compiler caching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "Rcross-import" -d "Emit a remark if a cross-import of a module is triggered." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "remove-runtime-asserts" -d "Remove runtime safety checks." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "Rindexing-system-module" -d "Emit a remark when indexing a system module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "Rmacro-loading" -d "Emit remarks about loaded macro implementations" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "Rmodule-api-import" -d "Emit remarks about the import bridging in each element composing the API" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "Rmodule-loading" -d "Emit remarks about loaded module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "Rmodule-recovery" -d "Emit remarks about contextual inconsistencies in loaded modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "Rmodule-serialization" -d "Emit remarks about module serialization" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "Rpass-missed" -d "Report missed transformations by optimization passes whose name matches the given POSIX regular expression" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "Rpass" -d "Report performed transformations by optimization passes whose name matches the given POSIX regular expression" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "Rskip-explicit-interface-build" -d "Emit a remark if an explicit module interface invocation has an early exit because the expected output is up-to-date" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "runtime-compatibility-version" -d "Link compatibility library for Swift runtime version, or 'none'" -xa "none" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "save-optimization-record-passes" -d "Only include passes which match a specified regular expression in the generated optimization record (by default, include all passes)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "save-optimization-record-path" -d "Specify the file name of any generated optimization record" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "save-optimization-record" -d "Generate an optimization record file in a specific format (default: YAML)" -xa "YAML" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "save-optimization-record" -d "Generate a YAML optimization record file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "scanner-prefix-map-sdk" -d "Remap paths within SDK reported by dependency scanner" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "scanner-prefix-map-toolchain" -d "Remap paths within toolchain directory reported by dependency scanner" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "scanner-prefix-map" -d "Remap paths reported by dependency scanner" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "sdk-module-cache-path" -d "Specifies the module cache path for explicitly-built SDK modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "sdk" -d "Compile against <sdk>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "serialize-diagnostics-path" -d "Emit a serialized diagnostics file to <path>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "static-executable" -d "Statically link the executable" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "static-stdlib" -d "Statically link the Swift standard library" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "strict-concurrency" -d "Specify the how strict concurrency checking will be. The value may be 'minimal' (most 'Sendable' checking is disabled), 'targeted' ('Sendable' checking is enabled in code that uses the concurrency model, or 'complete' ('Sendable' and other checking is enabled for all code in the module)" -xa "minimal targeted complete" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "strict-memory-safety" -d "Enable strict memory safety checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "suppress-remarks" -d "Suppress all remarks" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "suppress-warnings" -d "Suppress all warnings" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "swift-ptrauth-mode" -d "Mode for staging pointer authentication. Supported modes are LegacyAndStrip, NewAndStrip and NewAndAuth." -xa "LegacyAndStrip NewAndStrip NewAndAuth" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "swift-version" -d "Interpret input according to a specific Swift language version number" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "sysroot" -d "Native Platform sysroot" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "target-cpu" -d "Generate code for a particular CPU variant" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "target-min-inlining-version" -d "Require inlinable code with no '@available' attribute to back-deploy to this version of the '-target' OS" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "target-variant" -d "Generate 'zippered' code for macCatalyst that can run on the specified variant target triple in addition to the main -target triple" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "target" -d "Generate code for the given target <triple>, such as x86_64-apple-macos10.9" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "use-ld" -d "Specifies the flavor of the linker to be used" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "user-module-version" -d "Module version specified from Swift module authors" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "validate-clang-modules-once" -d "Don't verify input files for Clang modules if the module has been successfully validated or loaded during this build session" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "version" -d "Print version information and exit" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "vfsoverlay" -d "Add directory to VFS overlay file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "visualc-tools-root" -d "VisualC++ Tools Root" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "visualc-tools-version" -d "VisualC++ ToolSet Version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -s "v" -o "v" -d "Show commands to run and use verbose output" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "warn-concurrency" -d "Warn about code that is unsafe according to the Swift Concurrency model and will become ill-formed in a future language version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "warn-implicit-overrides" -d "Warn about implicit overrides of protocol members" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "warnings-as-errors" -d "Treat warnings as errors" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "windows-sdk-root" -d "Windows SDK Root" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "windows-sdk-version" -d "Windows SDK Version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "working-directory" -d "Resolve file paths relative to the specified directory" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "Xcc" -d "Pass <arg> to the C/C++/Objective-C compiler" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "Xlinker" -d "Specifies an option which should be passed to the linker" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "access-notes-path" -d "Specify YAML file to override attributes on Swift declarations in this module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "allow-non-resilient-access" -d "Ensures all contents are generated besides exportable decls in the binary module, so non-resilient access can be allowed" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "allowable-client" -d "Module names that are allowed to import this module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "assert-config" -d "Specify the assert_configuration replacement. Possible values are Debug, Release, Unchecked, DisableReplacement." -xa "Debug Release Unchecked DisableReplacement" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "build-id" -d "Specify the build ID argument passed to the linker" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "cache-compile-job" -d "Enable compiler caching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "cache-disable-replay" -d "Skip loading the compilation result from cache" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "cas-path" -d "Path to CAS" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "cas-plugin-option" -d "Option pass to CAS Plugin" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "cas-plugin-path" -d "Path to CAS Plugin" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "clang-build-session-file" -d "Use the last modification time of <file> as the underlying Clang build session timestamp" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "clang-scanner-module-cache-path" -d "Specifies the Clang dependency scanner module cache path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "clang-target-variant" -d "Separately set the target we should use for internal Clang instance for the 'zippered' code for macCatalyst" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "clang-target" -d "Separately set the target we should use for internal Clang instance" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "color-diagnostics" -d "Print diagnostics in color" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "compiler-assertions" -d "Enable internal self-checks while compiling" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "continue-building-after-errors" -d "Continue building, even after errors are encountered" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "coverage-prefix-map" -d "Remap source paths in coverage info" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -s "c" -o "cxx-interoperability-mode" -d "Enables C++ interoperability; pass 'default' to enable or 'off' to disable" -xa "default off" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "debug-info-format" -d "Specify the debug info format type to either 'dwarf' or 'codeview'" -xa "dwarf codeview" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "debug-info-store-invocation" -d "Emit the compiler invocation in the debug info." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "debug-prefix-map" -d "Remap source paths in debug info" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "default-isolation" -d "Specify the default actor isolation: MainActor or nonisolated. Defaults to nonisolated." -xa "MainActor nonisolated" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "diagnostic-style" -d "The formatting style used when printing diagnostics ('swift' or 'llvm')" -xa "swift llvm" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "disable-actor-data-race-checks" -d "Disable runtime checks for actor data races" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "disable-autolinking-runtime-compatibility-concurrency" -d "Do not use autolinking for the concurrency runtime compatibility library" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "disable-autolinking-runtime-compatibility-dynamic-replacements" -d "Do not use autolinking for the dynamic replacement runtime compatibility library" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "disable-autolinking-runtime-compatibility" -d "Do not use autolinking for runtime compatibility libraries" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "disable-clang-target" -d "Disable a separately specified target triple for Clang instance to use" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "disable-dynamic-actor-isolation" -d "Disable dynamic actor isolation checks" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "disable-experimental-feature" -d "Disable an experimental feature" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "disable-incremental-imports" -d "Disable cross-module incremental build metadata and driver scheduling for Swift modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "disable-only-one-dependency-file" -d "Disables incremental build optimization that only produces one dependencies file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "disable-sandbox" -d "Disable using the sandbox when executing subprocesses" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "disable-upcoming-feature" -d "Disable a feature that will be introduced in an upcoming language version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "disallow-use-new-driver" -d "Disable using new swift-driver" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -s "d" -o "dwarf-version" -d "DWARF debug info version to produce if requested" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -s "D" -o "D" -d "Marks a conditional compilation flag as true" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "embed-tbd-for-module" -d "Embed symbols from the module in the emitted tbd file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "emit-module-dependencies-path" -d "Emit a discovered dependencies file for the emit-module task to <path>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "emit-module-serialize-diagnostics-path" -d "Emit a serialized diagnostics file for the emit-module task to <path>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "enable-actor-data-race-checks" -d "Emit runtime checks for actor data races" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "enable-autolinking-runtime-compatibility-bytecode-layouts" -d "Enable autolinking for the bytecode layouts runtime compatibility library" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "enable-bare-slash-regex" -d "Enable the use of forward slash regular-expression literal syntax" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "enable-builtin-module" -d "Enables the explicit import of the Builtin module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "enable-deterministic-check" -d "Check compiler output determinism by running it twice" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "enable-experimental-additive-arithmetic-derivation" -d "Enable experimental 'AdditiveArithmetic' derived conformances" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "enable-experimental-concise-pound-file" -d "Enable experimental concise '#file' identifier" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "enable-experimental-feature" -d "Enable an experimental feature" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "enable-experimental-forward-mode-differentiation" -d "Enable experimental forward mode differentiation" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "enable-incremental-imports" -d "Enable cross-module incremental build metadata and driver scheduling for Swift modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "enable-library-evolution" -d "Build the module to allow binary-compatible library evolution" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "enable-only-one-dependency-file" -d "Enables incremental build optimization that only produces one dependencies file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "enable-upcoming-feature" -d "Enable a feature that will be introduced in an upcoming language version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "enforce-exclusivity" -d "Enforce law of exclusivity" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "executor-factory" -d "Specify the factory to use to create the default executors for Swift Concurrency.  This must be a type conforming to the 'ExecutorFactory' protocol." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "experimental-allow-non-resilient-access" -d "Deprecated; use -allow-non-resilient-access instead" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "experimental-package-bypass-resilience" -d "Deprecated; has no effect" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "experimental-package-cmo-abort-on-deserialization-fail" -d "Abort if a deserialization error is found while package optimization is enabled" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "experimental-package-cmo" -d "Deprecated; use -package-cmo instead" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "explain-module-dependency-detailed" -d "Emit remarks describing every possible dependency path that explains why compilation may depend on a module with a given name." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "explain-module-dependency" -d "Emit remark describing why compilation may depend on a module with a given name." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "explicit-auto-linking" -d "Instead of linker-load directives, have the driver specify all link dependencies on the linker invocation. Requires '-explicit-module-build'." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "export-as" -d "Module name to use when referenced in clients module interfaces" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "external-plugin-path" -d "Add directory to the plugin search path with a plugin server executable" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -s "e" -o "e" -d "Executes a line of code provided on the command line" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "file-compilation-dir" -d "The compilation directory to embed in the debug info. Coverage mapping is not supported yet." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "file-prefix-map" -d "Remap source paths in debug, coverage, and index info" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "framework" -d "Specifies a framework which should be linked against" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "Fsystem" -d "Add directory to system framework search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -s "F" -o "F" -d "Add directory to framework search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "gdwarf-types" -d "Emit full DWARF type info." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "gline-tables-only" -d "Emit minimal debug info for backtraces only" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "gnone" -d "Don't emit debug info" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -s "g" -o "g" -d "Emit debug info. This is the preferred setting for debugging with LLDB." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "help" -d "Display available options" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "in-process-plugin-server-path" -d "Path to dynamic library plugin server" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "index-ignore-clang-modules" -d "Avoid indexing clang modules (pcms)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "index-include-locals" -d "Include local definitions/references in the produced index data." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "index-store-path" -d "Store indexing data to <path>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "index-unit-output-path" -d "Use <path> as the output path in the produced index data." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "Isystem" -d "Add directory to the system import search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -s "I" -o "I" -d "Add directory to the import search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -s "j" -o "j" -d "Number of commands to execute in parallel" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "libc" -d "libc runtime library to use" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "link-objc-runtime" -d "Deprecated" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "load-pass-plugin" -d "Load LLVM pass plugin from a dynamic shared object file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "load-plugin-executable" -d "Path to a compiler plugin executable and a comma-separated list of module names where the macro types are declared" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "load-plugin-library" -d "Path to a dynamic library containing compiler plugins such as macros" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "load-resolved-plugin" -d "Path to resolved plugin configuration and a comma-separated list of module names where the macro types are declared. Library path and exectuable path can be empty if not used" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "locale" -d "Choose a language for diagnostic messages" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "localization-path" -d "Path to localized diagnostic messages directory" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -s "L" -o "L" -d "Add directory to library link search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -s "l" -o "l" -d "Specifies a library which should be linked against" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "module-abi-name" -d "ABI name to use for the contents of this module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "module-alias" -d "If a source file imports or references module <alias_name>, the <real_name> is used for the contents of the file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "module-cache-path" -d "Specifies the module cache path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "module-link-name" -d "Library to link against when using this module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "module-name" -d "Name of the module to build" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "no-color-diagnostics" -d "Do not print diagnostics in color" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "no-warnings-as-errors" -d "Treat warnings as warnings" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "nostdimport" -d "Don't search the standard library or toolchain import paths for modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "nostdlibimport" -d "Don't search the standard library import path for modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "num-threads" -d "Enable multi-threading and specify number of threads" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "Onone" -d "Compile without any optimization" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "Osize" -d "Compile with optimizations and target small code size" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "Ounchecked" -d "Compile with optimizations and remove runtime safety checks" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -s "O" -o "O" -d "Compile with optimizations" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "package-cmo" -d "Enable optimization to perform defalut CMO within a package boundary" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "package-name" -d "Name of the package the module belongs to" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "plugin-path" -d "Add directory to the plugin search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "prefix-serialized-debugging-options" -d "Apply debug prefix mappings to serialized debug info in Swiftmodule files" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "pretty-print" -d "Pretty-print the output JSON" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "print-educational-notes" -d "Include educational notes in printed diagnostic output, if available" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "print-supported-features" -d "Print information about features supported by the compiler" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "print-target-info" -d "Print target information for the given target <triple>, such as x86_64-apple-macos10.9" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "project-name" -d "Name of the project this module to build belongs to" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "public-module-name" -d "Public facing module name to use in diagnostics and documentation" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "Rabi-inference" -d "Emit a remark when an '@abi' attribute adds an attribute or modifier to the ABI declaration based on its presence in the API" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "Rcache-compile-job" -d "Show remarks for compiler caching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "Rcross-import" -d "Emit a remark if a cross-import of a module is triggered." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "remove-runtime-asserts" -d "Remove runtime safety checks." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "Rindexing-system-module" -d "Emit a remark when indexing a system module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "Rmacro-loading" -d "Emit remarks about loaded macro implementations" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "Rmodule-api-import" -d "Emit remarks about the import bridging in each element composing the API" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "Rmodule-loading" -d "Emit remarks about loaded module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "Rmodule-recovery" -d "Emit remarks about contextual inconsistencies in loaded modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "Rmodule-serialization" -d "Emit remarks about module serialization" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "Rpass-missed" -d "Report missed transformations by optimization passes whose name matches the given POSIX regular expression" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "Rpass" -d "Report performed transformations by optimization passes whose name matches the given POSIX regular expression" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "Rskip-explicit-interface-build" -d "Emit a remark if an explicit module interface invocation has an early exit because the expected output is up-to-date" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "runtime-compatibility-version" -d "Link compatibility library for Swift runtime version, or 'none'" -xa "none" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "save-optimization-record-passes" -d "Only include passes which match a specified regular expression in the generated optimization record (by default, include all passes)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "save-optimization-record-path" -d "Specify the file name of any generated optimization record" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "save-optimization-record" -d "Generate an optimization record file in a specific format (default: YAML)" -xa "YAML" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "save-optimization-record" -d "Generate a YAML optimization record file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "scanner-prefix-map-sdk" -d "Remap paths within SDK reported by dependency scanner" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "scanner-prefix-map-toolchain" -d "Remap paths within toolchain directory reported by dependency scanner" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "scanner-prefix-map" -d "Remap paths reported by dependency scanner" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "sdk-module-cache-path" -d "Specifies the module cache path for explicitly-built SDK modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "sdk" -d "Compile against <sdk>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "serialize-diagnostics-path" -d "Emit a serialized diagnostics file to <path>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "static-executable" -d "Statically link the executable" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "static-stdlib" -d "Statically link the Swift standard library" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "strict-concurrency" -d "Specify the how strict concurrency checking will be. The value may be 'minimal' (most 'Sendable' checking is disabled), 'targeted' ('Sendable' checking is enabled in code that uses the concurrency model, or 'complete' ('Sendable' and other checking is enabled for all code in the module)" -xa "minimal targeted complete" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "strict-memory-safety" -d "Enable strict memory safety checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "suppress-remarks" -d "Suppress all remarks" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "suppress-warnings" -d "Suppress all warnings" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "swift-ptrauth-mode" -d "Mode for staging pointer authentication. Supported modes are LegacyAndStrip, NewAndStrip and NewAndAuth." -xa "LegacyAndStrip NewAndStrip NewAndAuth" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "swift-version" -d "Interpret input according to a specific Swift language version number" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "sysroot" -d "Native Platform sysroot" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "target-cpu" -d "Generate code for a particular CPU variant" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "target-min-inlining-version" -d "Require inlinable code with no '@available' attribute to back-deploy to this version of the '-target' OS" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "target-variant" -d "Generate 'zippered' code for macCatalyst that can run on the specified variant target triple in addition to the main -target triple" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "target" -d "Generate code for the given target <triple>, such as x86_64-apple-macos10.9" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "use-ld" -d "Specifies the flavor of the linker to be used" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "user-module-version" -d "Module version specified from Swift module authors" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "validate-clang-modules-once" -d "Don't verify input files for Clang modules if the module has been successfully validated or loaded during this build session" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "version" -d "Print version information and exit" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "vfsoverlay" -d "Add directory to VFS overlay file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "visualc-tools-root" -d "VisualC++ Tools Root" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "visualc-tools-version" -d "VisualC++ ToolSet Version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -s "v" -o "v" -d "Show commands to run and use verbose output" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "warn-concurrency" -d "Warn about code that is unsafe according to the Swift Concurrency model and will become ill-formed in a future language version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "warn-implicit-overrides" -d "Warn about implicit overrides of protocol members" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "warnings-as-errors" -d "Treat warnings as errors" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "windows-sdk-root" -d "Windows SDK Root" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "windows-sdk-version" -d "Windows SDK Version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "working-directory" -d "Resolve file paths relative to the specified directory" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "Xcc" -d "Pass <arg> to the C/C++/Objective-C compiler" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "Xlinker" -d "Specifies an option which should be passed to the linker" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "access-notes-path" -d "Specify YAML file to override attributes on Swift declarations in this module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "allow-non-resilient-access" -d "Ensures all contents are generated besides exportable decls in the binary module, so non-resilient access can be allowed" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "allowable-client" -d "Module names that are allowed to import this module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "assert-config" -d "Specify the assert_configuration replacement. Possible values are Debug, Release, Unchecked, DisableReplacement." -xa "Debug Release Unchecked DisableReplacement" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "build-id" -d "Specify the build ID argument passed to the linker" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "cache-compile-job" -d "Enable compiler caching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "cache-disable-replay" -d "Skip loading the compilation result from cache" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "cas-path" -d "Path to CAS" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "cas-plugin-option" -d "Option pass to CAS Plugin" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "cas-plugin-path" -d "Path to CAS Plugin" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "clang-build-session-file" -d "Use the last modification time of <file> as the underlying Clang build session timestamp" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "clang-scanner-module-cache-path" -d "Specifies the Clang dependency scanner module cache path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "clang-target-variant" -d "Separately set the target we should use for internal Clang instance for the 'zippered' code for macCatalyst" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "clang-target" -d "Separately set the target we should use for internal Clang instance" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "color-diagnostics" -d "Print diagnostics in color" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "compiler-assertions" -d "Enable internal self-checks while compiling" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "continue-building-after-errors" -d "Continue building, even after errors are encountered" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "coverage-prefix-map" -d "Remap source paths in coverage info" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -s "c" -o "cxx-interoperability-mode" -d "Enables C++ interoperability; pass 'default' to enable or 'off' to disable" -xa "default off" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "debug-info-format" -d "Specify the debug info format type to either 'dwarf' or 'codeview'" -xa "dwarf codeview" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "debug-info-store-invocation" -d "Emit the compiler invocation in the debug info." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "debug-prefix-map" -d "Remap source paths in debug info" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "default-isolation" -d "Specify the default actor isolation: MainActor or nonisolated. Defaults to nonisolated." -xa "MainActor nonisolated" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "diagnostic-style" -d "The formatting style used when printing diagnostics ('swift' or 'llvm')" -xa "swift llvm" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "disable-actor-data-race-checks" -d "Disable runtime checks for actor data races" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "disable-autolinking-runtime-compatibility-concurrency" -d "Do not use autolinking for the concurrency runtime compatibility library" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "disable-autolinking-runtime-compatibility-dynamic-replacements" -d "Do not use autolinking for the dynamic replacement runtime compatibility library" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "disable-autolinking-runtime-compatibility" -d "Do not use autolinking for runtime compatibility libraries" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "disable-clang-target" -d "Disable a separately specified target triple for Clang instance to use" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "disable-dynamic-actor-isolation" -d "Disable dynamic actor isolation checks" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "disable-experimental-feature" -d "Disable an experimental feature" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "disable-incremental-imports" -d "Disable cross-module incremental build metadata and driver scheduling for Swift modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "disable-only-one-dependency-file" -d "Disables incremental build optimization that only produces one dependencies file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "disable-sandbox" -d "Disable using the sandbox when executing subprocesses" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "disable-upcoming-feature" -d "Disable a feature that will be introduced in an upcoming language version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "disallow-use-new-driver" -d "Disable using new swift-driver" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -s "d" -o "dwarf-version" -d "DWARF debug info version to produce if requested" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -s "D" -o "D" -d "Marks a conditional compilation flag as true" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "embed-tbd-for-module" -d "Embed symbols from the module in the emitted tbd file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "emit-module-dependencies-path" -d "Emit a discovered dependencies file for the emit-module task to <path>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "emit-module-serialize-diagnostics-path" -d "Emit a serialized diagnostics file for the emit-module task to <path>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "enable-actor-data-race-checks" -d "Emit runtime checks for actor data races" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "enable-autolinking-runtime-compatibility-bytecode-layouts" -d "Enable autolinking for the bytecode layouts runtime compatibility library" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "enable-bare-slash-regex" -d "Enable the use of forward slash regular-expression literal syntax" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "enable-builtin-module" -d "Enables the explicit import of the Builtin module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "enable-deterministic-check" -d "Check compiler output determinism by running it twice" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "enable-experimental-additive-arithmetic-derivation" -d "Enable experimental 'AdditiveArithmetic' derived conformances" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "enable-experimental-concise-pound-file" -d "Enable experimental concise '#file' identifier" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "enable-experimental-feature" -d "Enable an experimental feature" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "enable-experimental-forward-mode-differentiation" -d "Enable experimental forward mode differentiation" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "enable-incremental-imports" -d "Enable cross-module incremental build metadata and driver scheduling for Swift modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "enable-library-evolution" -d "Build the module to allow binary-compatible library evolution" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "enable-only-one-dependency-file" -d "Enables incremental build optimization that only produces one dependencies file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "enable-upcoming-feature" -d "Enable a feature that will be introduced in an upcoming language version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "enforce-exclusivity" -d "Enforce law of exclusivity" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "executor-factory" -d "Specify the factory to use to create the default executors for Swift Concurrency.  This must be a type conforming to the 'ExecutorFactory' protocol." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "experimental-allow-non-resilient-access" -d "Deprecated; use -allow-non-resilient-access instead" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "experimental-package-bypass-resilience" -d "Deprecated; has no effect" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "experimental-package-cmo-abort-on-deserialization-fail" -d "Abort if a deserialization error is found while package optimization is enabled" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "experimental-package-cmo" -d "Deprecated; use -package-cmo instead" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "explain-module-dependency-detailed" -d "Emit remarks describing every possible dependency path that explains why compilation may depend on a module with a given name." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "explain-module-dependency" -d "Emit remark describing why compilation may depend on a module with a given name." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "explicit-auto-linking" -d "Instead of linker-load directives, have the driver specify all link dependencies on the linker invocation. Requires '-explicit-module-build'." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "export-as" -d "Module name to use when referenced in clients module interfaces" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "external-plugin-path" -d "Add directory to the plugin search path with a plugin server executable" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -s "e" -o "e" -d "Executes a line of code provided on the command line" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "file-compilation-dir" -d "The compilation directory to embed in the debug info. Coverage mapping is not supported yet." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "file-prefix-map" -d "Remap source paths in debug, coverage, and index info" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "framework" -d "Specifies a framework which should be linked against" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "Fsystem" -d "Add directory to system framework search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -s "F" -o "F" -d "Add directory to framework search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "gdwarf-types" -d "Emit full DWARF type info." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "gline-tables-only" -d "Emit minimal debug info for backtraces only" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "gnone" -d "Don't emit debug info" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -s "g" -o "g" -d "Emit debug info. This is the preferred setting for debugging with LLDB." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "help" -d "Display available options" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "in-process-plugin-server-path" -d "Path to dynamic library plugin server" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "index-ignore-clang-modules" -d "Avoid indexing clang modules (pcms)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "index-include-locals" -d "Include local definitions/references in the produced index data." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "index-store-path" -d "Store indexing data to <path>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "index-unit-output-path" -d "Use <path> as the output path in the produced index data." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "Isystem" -d "Add directory to the system import search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -s "I" -o "I" -d "Add directory to the import search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -s "j" -o "j" -d "Number of commands to execute in parallel" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "libc" -d "libc runtime library to use" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "link-objc-runtime" -d "Deprecated" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "load-pass-plugin" -d "Load LLVM pass plugin from a dynamic shared object file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "load-plugin-executable" -d "Path to a compiler plugin executable and a comma-separated list of module names where the macro types are declared" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "load-plugin-library" -d "Path to a dynamic library containing compiler plugins such as macros" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "load-resolved-plugin" -d "Path to resolved plugin configuration and a comma-separated list of module names where the macro types are declared. Library path and exectuable path can be empty if not used" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "locale" -d "Choose a language for diagnostic messages" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "localization-path" -d "Path to localized diagnostic messages directory" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -s "L" -o "L" -d "Add directory to library link search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -s "l" -o "l" -d "Specifies a library which should be linked against" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "module-abi-name" -d "ABI name to use for the contents of this module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "module-alias" -d "If a source file imports or references module <alias_name>, the <real_name> is used for the contents of the file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "module-cache-path" -d "Specifies the module cache path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "module-link-name" -d "Library to link against when using this module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "module-name" -d "Name of the module to build" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "no-color-diagnostics" -d "Do not print diagnostics in color" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "no-warnings-as-errors" -d "Treat warnings as warnings" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "nostdimport" -d "Don't search the standard library or toolchain import paths for modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "nostdlibimport" -d "Don't search the standard library import path for modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "num-threads" -d "Enable multi-threading and specify number of threads" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "Onone" -d "Compile without any optimization" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "Osize" -d "Compile with optimizations and target small code size" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "Ounchecked" -d "Compile with optimizations and remove runtime safety checks" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -s "O" -o "O" -d "Compile with optimizations" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "package-cmo" -d "Enable optimization to perform defalut CMO within a package boundary" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "package-name" -d "Name of the package the module belongs to" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "plugin-path" -d "Add directory to the plugin search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "prefix-serialized-debugging-options" -d "Apply debug prefix mappings to serialized debug info in Swiftmodule files" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "pretty-print" -d "Pretty-print the output JSON" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "print-educational-notes" -d "Include educational notes in printed diagnostic output, if available" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "print-supported-features" -d "Print information about features supported by the compiler" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "print-target-info" -d "Print target information for the given target <triple>, such as x86_64-apple-macos10.9" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "project-name" -d "Name of the project this module to build belongs to" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "public-module-name" -d "Public facing module name to use in diagnostics and documentation" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "Rabi-inference" -d "Emit a remark when an '@abi' attribute adds an attribute or modifier to the ABI declaration based on its presence in the API" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "Rcache-compile-job" -d "Show remarks for compiler caching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "Rcross-import" -d "Emit a remark if a cross-import of a module is triggered." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "remove-runtime-asserts" -d "Remove runtime safety checks." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "Rindexing-system-module" -d "Emit a remark when indexing a system module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "Rmacro-loading" -d "Emit remarks about loaded macro implementations" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "Rmodule-api-import" -d "Emit remarks about the import bridging in each element composing the API" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "Rmodule-loading" -d "Emit remarks about loaded module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "Rmodule-recovery" -d "Emit remarks about contextual inconsistencies in loaded modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "Rmodule-serialization" -d "Emit remarks about module serialization" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "Rpass-missed" -d "Report missed transformations by optimization passes whose name matches the given POSIX regular expression" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "Rpass" -d "Report performed transformations by optimization passes whose name matches the given POSIX regular expression" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "Rskip-explicit-interface-build" -d "Emit a remark if an explicit module interface invocation has an early exit because the expected output is up-to-date" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "runtime-compatibility-version" -d "Link compatibility library for Swift runtime version, or 'none'" -xa "none" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "save-optimization-record-passes" -d "Only include passes which match a specified regular expression in the generated optimization record (by default, include all passes)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "save-optimization-record-path" -d "Specify the file name of any generated optimization record" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "save-optimization-record" -d "Generate an optimization record file in a specific format (default: YAML)" -xa "YAML" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "save-optimization-record" -d "Generate a YAML optimization record file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "scanner-prefix-map-sdk" -d "Remap paths within SDK reported by dependency scanner" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "scanner-prefix-map-toolchain" -d "Remap paths within toolchain directory reported by dependency scanner" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "scanner-prefix-map" -d "Remap paths reported by dependency scanner" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "sdk-module-cache-path" -d "Specifies the module cache path for explicitly-built SDK modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "sdk" -d "Compile against <sdk>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "serialize-diagnostics-path" -d "Emit a serialized diagnostics file to <path>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "static-executable" -d "Statically link the executable" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "static-stdlib" -d "Statically link the Swift standard library" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "strict-concurrency" -d "Specify the how strict concurrency checking will be. The value may be 'minimal' (most 'Sendable' checking is disabled), 'targeted' ('Sendable' checking is enabled in code that uses the concurrency model, or 'complete' ('Sendable' and other checking is enabled for all code in the module)" -xa "minimal targeted complete" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "strict-memory-safety" -d "Enable strict memory safety checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "suppress-remarks" -d "Suppress all remarks" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "suppress-warnings" -d "Suppress all warnings" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "swift-ptrauth-mode" -d "Mode for staging pointer authentication. Supported modes are LegacyAndStrip, NewAndStrip and NewAndAuth." -xa "LegacyAndStrip NewAndStrip NewAndAuth" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "swift-version" -d "Interpret input according to a specific Swift language version number" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "sysroot" -d "Native Platform sysroot" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "target-cpu" -d "Generate code for a particular CPU variant" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "target-min-inlining-version" -d "Require inlinable code with no '@available' attribute to back-deploy to this version of the '-target' OS" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "target-variant" -d "Generate 'zippered' code for macCatalyst that can run on the specified variant target triple in addition to the main -target triple" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "target" -d "Generate code for the given target <triple>, such as x86_64-apple-macos10.9" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "use-ld" -d "Specifies the flavor of the linker to be used" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "user-module-version" -d "Module version specified from Swift module authors" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "validate-clang-modules-once" -d "Don't verify input files for Clang modules if the module has been successfully validated or loaded during this build session" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "version" -d "Print version information and exit" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "vfsoverlay" -d "Add directory to VFS overlay file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "visualc-tools-root" -d "VisualC++ Tools Root" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "visualc-tools-version" -d "VisualC++ ToolSet Version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -s "v" -o "v" -d "Show commands to run and use verbose output" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "warn-concurrency" -d "Warn about code that is unsafe according to the Swift Concurrency model and will become ill-formed in a future language version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "warn-implicit-overrides" -d "Warn about implicit overrides of protocol members" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "warnings-as-errors" -d "Treat warnings as errors" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "windows-sdk-root" -d "Windows SDK Root" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "windows-sdk-version" -d "Windows SDK Version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "working-directory" -d "Resolve file paths relative to the specified directory" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "Xcc" -d "Pass <arg> to the C/C++/Objective-C compiler" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "Xlinker" -d "Specifies an option which should be passed to the linker" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "access-notes-path" -d "Specify YAML file to override attributes on Swift declarations in this module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "allow-non-resilient-access" -d "Ensures all contents are generated besides exportable decls in the binary module, so non-resilient access can be allowed" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "allowable-client" -d "Module names that are allowed to import this module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "assert-config" -d "Specify the assert_configuration replacement. Possible values are Debug, Release, Unchecked, DisableReplacement." -xa "Debug Release Unchecked DisableReplacement" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "build-id" -d "Specify the build ID argument passed to the linker" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "cache-compile-job" -d "Enable compiler caching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "cache-disable-replay" -d "Skip loading the compilation result from cache" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "cas-path" -d "Path to CAS" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "cas-plugin-option" -d "Option pass to CAS Plugin" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "cas-plugin-path" -d "Path to CAS Plugin" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "clang-build-session-file" -d "Use the last modification time of <file> as the underlying Clang build session timestamp" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "clang-scanner-module-cache-path" -d "Specifies the Clang dependency scanner module cache path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "clang-target-variant" -d "Separately set the target we should use for internal Clang instance for the 'zippered' code for macCatalyst" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "clang-target" -d "Separately set the target we should use for internal Clang instance" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "color-diagnostics" -d "Print diagnostics in color" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "compiler-assertions" -d "Enable internal self-checks while compiling" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "continue-building-after-errors" -d "Continue building, even after errors are encountered" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "coverage-prefix-map" -d "Remap source paths in coverage info" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -s "c" -o "cxx-interoperability-mode" -d "Enables C++ interoperability; pass 'default' to enable or 'off' to disable" -xa "default off" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "debug-info-format" -d "Specify the debug info format type to either 'dwarf' or 'codeview'" -xa "dwarf codeview" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "debug-info-store-invocation" -d "Emit the compiler invocation in the debug info." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "debug-prefix-map" -d "Remap source paths in debug info" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "default-isolation" -d "Specify the default actor isolation: MainActor or nonisolated. Defaults to nonisolated." -xa "MainActor nonisolated" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "diagnostic-style" -d "The formatting style used when printing diagnostics ('swift' or 'llvm')" -xa "swift llvm" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "disable-actor-data-race-checks" -d "Disable runtime checks for actor data races" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "disable-autolinking-runtime-compatibility-concurrency" -d "Do not use autolinking for the concurrency runtime compatibility library" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "disable-autolinking-runtime-compatibility-dynamic-replacements" -d "Do not use autolinking for the dynamic replacement runtime compatibility library" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "disable-autolinking-runtime-compatibility" -d "Do not use autolinking for runtime compatibility libraries" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "disable-clang-target" -d "Disable a separately specified target triple for Clang instance to use" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "disable-dynamic-actor-isolation" -d "Disable dynamic actor isolation checks" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "disable-experimental-feature" -d "Disable an experimental feature" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "disable-incremental-imports" -d "Disable cross-module incremental build metadata and driver scheduling for Swift modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "disable-only-one-dependency-file" -d "Disables incremental build optimization that only produces one dependencies file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "disable-sandbox" -d "Disable using the sandbox when executing subprocesses" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "disable-upcoming-feature" -d "Disable a feature that will be introduced in an upcoming language version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "disallow-use-new-driver" -d "Disable using new swift-driver" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -s "d" -o "dwarf-version" -d "DWARF debug info version to produce if requested" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -s "D" -o "D" -d "Marks a conditional compilation flag as true" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "embed-tbd-for-module" -d "Embed symbols from the module in the emitted tbd file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "emit-module-dependencies-path" -d "Emit a discovered dependencies file for the emit-module task to <path>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "emit-module-serialize-diagnostics-path" -d "Emit a serialized diagnostics file for the emit-module task to <path>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "enable-actor-data-race-checks" -d "Emit runtime checks for actor data races" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "enable-autolinking-runtime-compatibility-bytecode-layouts" -d "Enable autolinking for the bytecode layouts runtime compatibility library" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "enable-bare-slash-regex" -d "Enable the use of forward slash regular-expression literal syntax" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "enable-builtin-module" -d "Enables the explicit import of the Builtin module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "enable-deterministic-check" -d "Check compiler output determinism by running it twice" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "enable-experimental-additive-arithmetic-derivation" -d "Enable experimental 'AdditiveArithmetic' derived conformances" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "enable-experimental-concise-pound-file" -d "Enable experimental concise '#file' identifier" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "enable-experimental-feature" -d "Enable an experimental feature" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "enable-experimental-forward-mode-differentiation" -d "Enable experimental forward mode differentiation" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "enable-incremental-imports" -d "Enable cross-module incremental build metadata and driver scheduling for Swift modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "enable-library-evolution" -d "Build the module to allow binary-compatible library evolution" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "enable-only-one-dependency-file" -d "Enables incremental build optimization that only produces one dependencies file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "enable-upcoming-feature" -d "Enable a feature that will be introduced in an upcoming language version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "enforce-exclusivity" -d "Enforce law of exclusivity" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "executor-factory" -d "Specify the factory to use to create the default executors for Swift Concurrency.  This must be a type conforming to the 'ExecutorFactory' protocol." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "experimental-allow-non-resilient-access" -d "Deprecated; use -allow-non-resilient-access instead" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "experimental-package-bypass-resilience" -d "Deprecated; has no effect" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "experimental-package-cmo-abort-on-deserialization-fail" -d "Abort if a deserialization error is found while package optimization is enabled" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "experimental-package-cmo" -d "Deprecated; use -package-cmo instead" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "explain-module-dependency-detailed" -d "Emit remarks describing every possible dependency path that explains why compilation may depend on a module with a given name." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "explain-module-dependency" -d "Emit remark describing why compilation may depend on a module with a given name." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "explicit-auto-linking" -d "Instead of linker-load directives, have the driver specify all link dependencies on the linker invocation. Requires '-explicit-module-build'." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "export-as" -d "Module name to use when referenced in clients module interfaces" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "external-plugin-path" -d "Add directory to the plugin search path with a plugin server executable" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -s "e" -o "e" -d "Executes a line of code provided on the command line" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "file-compilation-dir" -d "The compilation directory to embed in the debug info. Coverage mapping is not supported yet." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "file-prefix-map" -d "Remap source paths in debug, coverage, and index info" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "framework" -d "Specifies a framework which should be linked against" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "Fsystem" -d "Add directory to system framework search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -s "F" -o "F" -d "Add directory to framework search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "gdwarf-types" -d "Emit full DWARF type info." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "gline-tables-only" -d "Emit minimal debug info for backtraces only" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "gnone" -d "Don't emit debug info" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -s "g" -o "g" -d "Emit debug info. This is the preferred setting for debugging with LLDB." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "help" -d "Display available options" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "in-process-plugin-server-path" -d "Path to dynamic library plugin server" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "index-ignore-clang-modules" -d "Avoid indexing clang modules (pcms)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "index-include-locals" -d "Include local definitions/references in the produced index data." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "index-store-path" -d "Store indexing data to <path>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "index-unit-output-path" -d "Use <path> as the output path in the produced index data." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "Isystem" -d "Add directory to the system import search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -s "I" -o "I" -d "Add directory to the import search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -s "j" -o "j" -d "Number of commands to execute in parallel" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "libc" -d "libc runtime library to use" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "link-objc-runtime" -d "Deprecated" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "load-pass-plugin" -d "Load LLVM pass plugin from a dynamic shared object file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "load-plugin-executable" -d "Path to a compiler plugin executable and a comma-separated list of module names where the macro types are declared" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "load-plugin-library" -d "Path to a dynamic library containing compiler plugins such as macros" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "load-resolved-plugin" -d "Path to resolved plugin configuration and a comma-separated list of module names where the macro types are declared. Library path and exectuable path can be empty if not used" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "locale" -d "Choose a language for diagnostic messages" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "localization-path" -d "Path to localized diagnostic messages directory" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -s "L" -o "L" -d "Add directory to library link search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -s "l" -o "l" -d "Specifies a library which should be linked against" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "module-abi-name" -d "ABI name to use for the contents of this module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "module-alias" -d "If a source file imports or references module <alias_name>, the <real_name> is used for the contents of the file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "module-cache-path" -d "Specifies the module cache path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "module-link-name" -d "Library to link against when using this module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "module-name" -d "Name of the module to build" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "no-color-diagnostics" -d "Do not print diagnostics in color" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "no-warnings-as-errors" -d "Treat warnings as warnings" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "nostdimport" -d "Don't search the standard library or toolchain import paths for modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "nostdlibimport" -d "Don't search the standard library import path for modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "num-threads" -d "Enable multi-threading and specify number of threads" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "Onone" -d "Compile without any optimization" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "Osize" -d "Compile with optimizations and target small code size" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "Ounchecked" -d "Compile with optimizations and remove runtime safety checks" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -s "O" -o "O" -d "Compile with optimizations" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "package-cmo" -d "Enable optimization to perform defalut CMO within a package boundary" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "package-name" -d "Name of the package the module belongs to" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "plugin-path" -d "Add directory to the plugin search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "prefix-serialized-debugging-options" -d "Apply debug prefix mappings to serialized debug info in Swiftmodule files" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "pretty-print" -d "Pretty-print the output JSON" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "print-educational-notes" -d "Include educational notes in printed diagnostic output, if available" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "print-supported-features" -d "Print information about features supported by the compiler" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "print-target-info" -d "Print target information for the given target <triple>, such as x86_64-apple-macos10.9" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "project-name" -d "Name of the project this module to build belongs to" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "public-module-name" -d "Public facing module name to use in diagnostics and documentation" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "Rabi-inference" -d "Emit a remark when an '@abi' attribute adds an attribute or modifier to the ABI declaration based on its presence in the API" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "Rcache-compile-job" -d "Show remarks for compiler caching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "Rcross-import" -d "Emit a remark if a cross-import of a module is triggered." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "remove-runtime-asserts" -d "Remove runtime safety checks." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "Rindexing-system-module" -d "Emit a remark when indexing a system module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "Rmacro-loading" -d "Emit remarks about loaded macro implementations" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "Rmodule-api-import" -d "Emit remarks about the import bridging in each element composing the API" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "Rmodule-loading" -d "Emit remarks about loaded module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "Rmodule-recovery" -d "Emit remarks about contextual inconsistencies in loaded modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "Rmodule-serialization" -d "Emit remarks about module serialization" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "Rpass-missed" -d "Report missed transformations by optimization passes whose name matches the given POSIX regular expression" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "Rpass" -d "Report performed transformations by optimization passes whose name matches the given POSIX regular expression" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "Rskip-explicit-interface-build" -d "Emit a remark if an explicit module interface invocation has an early exit because the expected output is up-to-date" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "runtime-compatibility-version" -d "Link compatibility library for Swift runtime version, or 'none'" -xa "none" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "save-optimization-record-passes" -d "Only include passes which match a specified regular expression in the generated optimization record (by default, include all passes)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "save-optimization-record-path" -d "Specify the file name of any generated optimization record" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "save-optimization-record" -d "Generate an optimization record file in a specific format (default: YAML)" -xa "YAML" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "save-optimization-record" -d "Generate a YAML optimization record file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "scanner-prefix-map-sdk" -d "Remap paths within SDK reported by dependency scanner" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "scanner-prefix-map-toolchain" -d "Remap paths within toolchain directory reported by dependency scanner" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "scanner-prefix-map" -d "Remap paths reported by dependency scanner" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "sdk-module-cache-path" -d "Specifies the module cache path for explicitly-built SDK modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "sdk" -d "Compile against <sdk>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "serialize-diagnostics-path" -d "Emit a serialized diagnostics file to <path>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "static-executable" -d "Statically link the executable" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "static-stdlib" -d "Statically link the Swift standard library" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "strict-concurrency" -d "Specify the how strict concurrency checking will be. The value may be 'minimal' (most 'Sendable' checking is disabled), 'targeted' ('Sendable' checking is enabled in code that uses the concurrency model, or 'complete' ('Sendable' and other checking is enabled for all code in the module)" -xa "minimal targeted complete" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "strict-memory-safety" -d "Enable strict memory safety checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "suppress-remarks" -d "Suppress all remarks" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "suppress-warnings" -d "Suppress all warnings" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "swift-ptrauth-mode" -d "Mode for staging pointer authentication. Supported modes are LegacyAndStrip, NewAndStrip and NewAndAuth." -xa "LegacyAndStrip NewAndStrip NewAndAuth" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "swift-version" -d "Interpret input according to a specific Swift language version number" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "sysroot" -d "Native Platform sysroot" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "target-cpu" -d "Generate code for a particular CPU variant" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "target-min-inlining-version" -d "Require inlinable code with no '@available' attribute to back-deploy to this version of the '-target' OS" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "target-variant" -d "Generate 'zippered' code for macCatalyst that can run on the specified variant target triple in addition to the main -target triple" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "target" -d "Generate code for the given target <triple>, such as x86_64-apple-macos10.9" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "use-ld" -d "Specifies the flavor of the linker to be used" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "user-module-version" -d "Module version specified from Swift module authors" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "validate-clang-modules-once" -d "Don't verify input files for Clang modules if the module has been successfully validated or loaded during this build session" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "version" -d "Print version information and exit" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "vfsoverlay" -d "Add directory to VFS overlay file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "visualc-tools-root" -d "VisualC++ Tools Root" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "visualc-tools-version" -d "VisualC++ ToolSet Version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -s "v" -o "v" -d "Show commands to run and use verbose output" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "warn-concurrency" -d "Warn about code that is unsafe according to the Swift Concurrency model and will become ill-formed in a future language version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "warn-implicit-overrides" -d "Warn about implicit overrides of protocol members" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "warnings-as-errors" -d "Treat warnings as errors" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "windows-sdk-root" -d "Windows SDK Root" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "windows-sdk-version" -d "Windows SDK Version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "working-directory" -d "Resolve file paths relative to the specified directory" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "Xcc" -d "Pass <arg> to the C/C++/Objective-C compiler" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -o "Xlinker" -d "Specifies an option which should be passed to the linker" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "access-notes-path" -d "Specify YAML file to override attributes on Swift declarations in this module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "allow-non-resilient-access" -d "Ensures all contents are generated besides exportable decls in the binary module, so non-resilient access can be allowed" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "allowable-client" -d "Module names that are allowed to import this module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "assert-config" -d "Specify the assert_configuration replacement. Possible values are Debug, Release, Unchecked, DisableReplacement." -xa "Debug Release Unchecked DisableReplacement" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "build-id" -d "Specify the build ID argument passed to the linker" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "cache-compile-job" -d "Enable compiler caching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "cache-disable-replay" -d "Skip loading the compilation result from cache" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "cas-path" -d "Path to CAS" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "cas-plugin-option" -d "Option pass to CAS Plugin" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "cas-plugin-path" -d "Path to CAS Plugin" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "clang-build-session-file" -d "Use the last modification time of <file> as the underlying Clang build session timestamp" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "clang-scanner-module-cache-path" -d "Specifies the Clang dependency scanner module cache path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "clang-target-variant" -d "Separately set the target we should use for internal Clang instance for the 'zippered' code for macCatalyst" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "clang-target" -d "Separately set the target we should use for internal Clang instance" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "color-diagnostics" -d "Print diagnostics in color" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "compiler-assertions" -d "Enable internal self-checks while compiling" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "continue-building-after-errors" -d "Continue building, even after errors are encountered" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "coverage-prefix-map" -d "Remap source paths in coverage info" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -s "c" -o "cxx-interoperability-mode" -d "Enables C++ interoperability; pass 'default' to enable or 'off' to disable" -xa "default off" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "debug-info-format" -d "Specify the debug info format type to either 'dwarf' or 'codeview'" -xa "dwarf codeview" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "debug-info-store-invocation" -d "Emit the compiler invocation in the debug info." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "debug-prefix-map" -d "Remap source paths in debug info" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "default-isolation" -d "Specify the default actor isolation: MainActor or nonisolated. Defaults to nonisolated." -xa "MainActor nonisolated" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "diagnostic-style" -d "The formatting style used when printing diagnostics ('swift' or 'llvm')" -xa "swift llvm" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "disable-actor-data-race-checks" -d "Disable runtime checks for actor data races" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "disable-autolinking-runtime-compatibility-concurrency" -d "Do not use autolinking for the concurrency runtime compatibility library" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "disable-autolinking-runtime-compatibility-dynamic-replacements" -d "Do not use autolinking for the dynamic replacement runtime compatibility library" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "disable-autolinking-runtime-compatibility" -d "Do not use autolinking for runtime compatibility libraries" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "disable-clang-target" -d "Disable a separately specified target triple for Clang instance to use" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "disable-dynamic-actor-isolation" -d "Disable dynamic actor isolation checks" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "disable-experimental-feature" -d "Disable an experimental feature" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "disable-incremental-imports" -d "Disable cross-module incremental build metadata and driver scheduling for Swift modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "disable-only-one-dependency-file" -d "Disables incremental build optimization that only produces one dependencies file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "disable-sandbox" -d "Disable using the sandbox when executing subprocesses" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "disable-upcoming-feature" -d "Disable a feature that will be introduced in an upcoming language version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "disallow-use-new-driver" -d "Disable using new swift-driver" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -s "d" -o "dwarf-version" -d "DWARF debug info version to produce if requested" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -s "D" -o "D" -d "Marks a conditional compilation flag as true" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "embed-tbd-for-module" -d "Embed symbols from the module in the emitted tbd file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "emit-module-dependencies-path" -d "Emit a discovered dependencies file for the emit-module task to <path>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "emit-module-serialize-diagnostics-path" -d "Emit a serialized diagnostics file for the emit-module task to <path>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "enable-actor-data-race-checks" -d "Emit runtime checks for actor data races" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "enable-autolinking-runtime-compatibility-bytecode-layouts" -d "Enable autolinking for the bytecode layouts runtime compatibility library" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "enable-bare-slash-regex" -d "Enable the use of forward slash regular-expression literal syntax" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "enable-builtin-module" -d "Enables the explicit import of the Builtin module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "enable-deterministic-check" -d "Check compiler output determinism by running it twice" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "enable-experimental-additive-arithmetic-derivation" -d "Enable experimental 'AdditiveArithmetic' derived conformances" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "enable-experimental-concise-pound-file" -d "Enable experimental concise '#file' identifier" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "enable-experimental-feature" -d "Enable an experimental feature" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "enable-experimental-forward-mode-differentiation" -d "Enable experimental forward mode differentiation" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "enable-incremental-imports" -d "Enable cross-module incremental build metadata and driver scheduling for Swift modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "enable-library-evolution" -d "Build the module to allow binary-compatible library evolution" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "enable-only-one-dependency-file" -d "Enables incremental build optimization that only produces one dependencies file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "enable-upcoming-feature" -d "Enable a feature that will be introduced in an upcoming language version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "enforce-exclusivity" -d "Enforce law of exclusivity" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "executor-factory" -d "Specify the factory to use to create the default executors for Swift Concurrency.  This must be a type conforming to the 'ExecutorFactory' protocol." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "experimental-allow-non-resilient-access" -d "Deprecated; use -allow-non-resilient-access instead" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "experimental-package-bypass-resilience" -d "Deprecated; has no effect" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "experimental-package-cmo-abort-on-deserialization-fail" -d "Abort if a deserialization error is found while package optimization is enabled" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "experimental-package-cmo" -d "Deprecated; use -package-cmo instead" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "explain-module-dependency-detailed" -d "Emit remarks describing every possible dependency path that explains why compilation may depend on a module with a given name." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "explain-module-dependency" -d "Emit remark describing why compilation may depend on a module with a given name." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "explicit-auto-linking" -d "Instead of linker-load directives, have the driver specify all link dependencies on the linker invocation. Requires '-explicit-module-build'." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "export-as" -d "Module name to use when referenced in clients module interfaces" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "external-plugin-path" -d "Add directory to the plugin search path with a plugin server executable" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -s "e" -o "e" -d "Executes a line of code provided on the command line" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "file-compilation-dir" -d "The compilation directory to embed in the debug info. Coverage mapping is not supported yet." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "file-prefix-map" -d "Remap source paths in debug, coverage, and index info" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "framework" -d "Specifies a framework which should be linked against" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "Fsystem" -d "Add directory to system framework search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -s "F" -o "F" -d "Add directory to framework search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "gdwarf-types" -d "Emit full DWARF type info." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "gline-tables-only" -d "Emit minimal debug info for backtraces only" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "gnone" -d "Don't emit debug info" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -s "g" -o "g" -d "Emit debug info. This is the preferred setting for debugging with LLDB." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "help" -d "Display available options" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "in-process-plugin-server-path" -d "Path to dynamic library plugin server" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "index-ignore-clang-modules" -d "Avoid indexing clang modules (pcms)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "index-include-locals" -d "Include local definitions/references in the produced index data." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "index-store-path" -d "Store indexing data to <path>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "index-unit-output-path" -d "Use <path> as the output path in the produced index data." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "Isystem" -d "Add directory to the system import search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -s "I" -o "I" -d "Add directory to the import search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -s "j" -o "j" -d "Number of commands to execute in parallel" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "libc" -d "libc runtime library to use" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "link-objc-runtime" -d "Deprecated" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "load-pass-plugin" -d "Load LLVM pass plugin from a dynamic shared object file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "load-plugin-executable" -d "Path to a compiler plugin executable and a comma-separated list of module names where the macro types are declared" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "load-plugin-library" -d "Path to a dynamic library containing compiler plugins such as macros" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "load-resolved-plugin" -d "Path to resolved plugin configuration and a comma-separated list of module names where the macro types are declared. Library path and exectuable path can be empty if not used" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "locale" -d "Choose a language for diagnostic messages" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "localization-path" -d "Path to localized diagnostic messages directory" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -s "L" -o "L" -d "Add directory to library link search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -s "l" -o "l" -d "Specifies a library which should be linked against" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "module-abi-name" -d "ABI name to use for the contents of this module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "module-alias" -d "If a source file imports or references module <alias_name>, the <real_name> is used for the contents of the file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "module-cache-path" -d "Specifies the module cache path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "module-link-name" -d "Library to link against when using this module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "module-name" -d "Name of the module to build" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "no-color-diagnostics" -d "Do not print diagnostics in color" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "no-warnings-as-errors" -d "Treat warnings as warnings" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "nostdimport" -d "Don't search the standard library or toolchain import paths for modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "nostdlibimport" -d "Don't search the standard library import path for modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "num-threads" -d "Enable multi-threading and specify number of threads" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "Onone" -d "Compile without any optimization" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "Osize" -d "Compile with optimizations and target small code size" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "Ounchecked" -d "Compile with optimizations and remove runtime safety checks" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -s "O" -o "O" -d "Compile with optimizations" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "package-cmo" -d "Enable optimization to perform defalut CMO within a package boundary" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "package-name" -d "Name of the package the module belongs to" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "plugin-path" -d "Add directory to the plugin search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "prefix-serialized-debugging-options" -d "Apply debug prefix mappings to serialized debug info in Swiftmodule files" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "pretty-print" -d "Pretty-print the output JSON" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "print-educational-notes" -d "Include educational notes in printed diagnostic output, if available" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "print-supported-features" -d "Print information about features supported by the compiler" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "print-target-info" -d "Print target information for the given target <triple>, such as x86_64-apple-macos10.9" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "project-name" -d "Name of the project this module to build belongs to" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "public-module-name" -d "Public facing module name to use in diagnostics and documentation" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "Rabi-inference" -d "Emit a remark when an '@abi' attribute adds an attribute or modifier to the ABI declaration based on its presence in the API" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "Rcache-compile-job" -d "Show remarks for compiler caching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "Rcross-import" -d "Emit a remark if a cross-import of a module is triggered." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "remove-runtime-asserts" -d "Remove runtime safety checks." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "Rindexing-system-module" -d "Emit a remark when indexing a system module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "Rmacro-loading" -d "Emit remarks about loaded macro implementations" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "Rmodule-api-import" -d "Emit remarks about the import bridging in each element composing the API" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "Rmodule-loading" -d "Emit remarks about loaded module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "Rmodule-recovery" -d "Emit remarks about contextual inconsistencies in loaded modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "Rmodule-serialization" -d "Emit remarks about module serialization" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "Rpass-missed" -d "Report missed transformations by optimization passes whose name matches the given POSIX regular expression" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "Rpass" -d "Report performed transformations by optimization passes whose name matches the given POSIX regular expression" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "Rskip-explicit-interface-build" -d "Emit a remark if an explicit module interface invocation has an early exit because the expected output is up-to-date" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "runtime-compatibility-version" -d "Link compatibility library for Swift runtime version, or 'none'" -xa "none" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "save-optimization-record-passes" -d "Only include passes which match a specified regular expression in the generated optimization record (by default, include all passes)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "save-optimization-record-path" -d "Specify the file name of any generated optimization record" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "save-optimization-record" -d "Generate an optimization record file in a specific format (default: YAML)" -xa "YAML" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "save-optimization-record" -d "Generate a YAML optimization record file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "scanner-prefix-map-sdk" -d "Remap paths within SDK reported by dependency scanner" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "scanner-prefix-map-toolchain" -d "Remap paths within toolchain directory reported by dependency scanner" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "scanner-prefix-map" -d "Remap paths reported by dependency scanner" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "sdk-module-cache-path" -d "Specifies the module cache path for explicitly-built SDK modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "sdk" -d "Compile against <sdk>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "serialize-diagnostics-path" -d "Emit a serialized diagnostics file to <path>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "static-executable" -d "Statically link the executable" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "static-stdlib" -d "Statically link the Swift standard library" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "strict-concurrency" -d "Specify the how strict concurrency checking will be. The value may be 'minimal' (most 'Sendable' checking is disabled), 'targeted' ('Sendable' checking is enabled in code that uses the concurrency model, or 'complete' ('Sendable' and other checking is enabled for all code in the module)" -xa "minimal targeted complete" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "strict-memory-safety" -d "Enable strict memory safety checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "suppress-remarks" -d "Suppress all remarks" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "suppress-warnings" -d "Suppress all warnings" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "swift-ptrauth-mode" -d "Mode for staging pointer authentication. Supported modes are LegacyAndStrip, NewAndStrip and NewAndAuth." -xa "LegacyAndStrip NewAndStrip NewAndAuth" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "swift-version" -d "Interpret input according to a specific Swift language version number" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "sysroot" -d "Native Platform sysroot" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "target-cpu" -d "Generate code for a particular CPU variant" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "target-min-inlining-version" -d "Require inlinable code with no '@available' attribute to back-deploy to this version of the '-target' OS" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "target-variant" -d "Generate 'zippered' code for macCatalyst that can run on the specified variant target triple in addition to the main -target triple" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "target" -d "Generate code for the given target <triple>, such as x86_64-apple-macos10.9" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "use-ld" -d "Specifies the flavor of the linker to be used" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "user-module-version" -d "Module version specified from Swift module authors" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "validate-clang-modules-once" -d "Don't verify input files for Clang modules if the module has been successfully validated or loaded during this build session" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "version" -d "Print version information and exit" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "vfsoverlay" -d "Add directory to VFS overlay file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "visualc-tools-root" -d "VisualC++ Tools Root" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "visualc-tools-version" -d "VisualC++ ToolSet Version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -s "v" -o "v" -d "Show commands to run and use verbose output" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "warn-concurrency" -d "Warn about code that is unsafe according to the Swift Concurrency model and will become ill-formed in a future language version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "warn-implicit-overrides" -d "Warn about implicit overrides of protocol members" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "warnings-as-errors" -d "Treat warnings as errors" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "windows-sdk-root" -d "Windows SDK Root" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "windows-sdk-version" -d "Windows SDK Version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "working-directory" -d "Resolve file paths relative to the specified directory" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "Xcc" -d "Pass <arg> to the C/C++/Objective-C compiler" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "Xlinker" -d "Specifies an option which should be passed to the linker" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -s "v" -l "verbose" -d "Increase verbosity to include informational output." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "very-verbose" -d "Increase verbosity to include debug output." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -s "q" -l "quiet" -d "Decrease verbosity to only include error output." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "color-diagnostics" -d "Enables or disables color diagnostics when printing to a TTY." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "no-color-diagnostics" -d "Enables or disables color diagnostics when printing to a TTY." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "disable-sandbox" -d "Disable using the sandbox when executing subprocesses." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "netrc" -d "Use netrc file even in cases where other credential stores are preferred." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "enable-netrc" -d "Load credentials from a netrc file." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "disable-netrc" -d "Load credentials from a netrc file." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "netrc-file" -d "Specify the netrc file path." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "enable-keychain" -d "Search credentials in macOS keychain." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "disable-keychain" -d "Search credentials in macOS keychain." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "resolver-fingerprint-checking" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "resolver-signing-entity-checking" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "enable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "disable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "enable-prefetching" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "disable-prefetching" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "force-resolved-versions" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "disable-automatic-resolution" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "only-use-versions-from-resolved-file" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "skip-update" -d "Skip updating dependencies from their remote during a resolution." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "disable-scm-to-registry-transformation" -d "Disable source control to registry transformation." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "use-registry-identity-for-scm" -d "Look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "replace-scm-with-registry" -d "Look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "default-registry-url" -d "Default registry URL to use, instead of the registries.json configuration file." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -s "c" -l "configuration" -d "Build with configuration" -xa "debug release" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "Xcc" -d "Pass flag through to all C compiler invocations." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "Xswiftc" -d "Pass flag through to all Swift compiler invocations." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "Xlinker" -d "Pass flag through to all linker invocations." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "Xcxx" -d "Pass flag through to all C++ compiler invocations." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "triple" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "sdk" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "toolchain" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "swift-sdk" -d "Filter for selecting a specific Swift SDK to build with." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "sanitize" -d "Turn on runtime checks for erroneous behavior" -xa "address thread undefined scudo" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "auto-index-store" -d "Enable or disable indexing-while-building feature." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "enable-index-store" -d "Enable or disable indexing-while-building feature." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "disable-index-store" -d "Enable or disable indexing-while-building feature." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "enable-parseable-module-interfaces" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -s "j" -l "jobs" -d "The number of jobs to spawn in parallel during the build process." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "use-integrated-swift-driver" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "explicit-target-dependency-import-check" -d "A flag that indicates this build should check whether targets only import their explicitly-declared dependencies." -xa "none warn error" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "experimental-explicit-module-build" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "build-system" -xa "native swiftbuild xcode" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "debug-info-format" -d "The Debug Information Format to use." -xa "dwarf codeview none" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "enable-dead-strip" -d "Disable/enable dead code stripping by the linker." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "disable-dead-strip" -d "Disable/enable dead code stripping by the linker." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "disable-local-rpath" -d "Disable adding ＄ORIGIN/@loader_path to the rpath by default." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "build-tests" -d "Build both source and test targets." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "enable-code-coverage" -d "Enable code coverage." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "disable-code-coverage" -d "Enable code coverage." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "show-bin-path" -d "Print the binary output path." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "print-manifest-job-graph" -d "Write the command graph for the build manifest as a Graphviz file." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "print-pif-manifest-graph" -d "Write the PIF JSON sent to Swift Build as a Graphviz file." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "target" -d "Build the specified target." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "product" -d "Build the specified product." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "enable-xctest" -d "Enable support for XCTest." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "disable-xctest" -d "Enable support for XCTest." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "enable-swift-testing" -d "Enable support for Swift Testing." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "disable-swift-testing" -d "Enable support for Swift Testing." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "traits" -d "Enables the passed traits of the package. Multiple traits can be specified by providing a comma separated list e.g. `--traits Trait1,Trait2`. When enabling specific traits the defaults traits need to explictily enabled as well by passing `defaults` to this command." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "enable-all-traits" -d "Enables all traits of the package." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "disable-default-traits" -d "Disables all default traits of the package." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "static-swift-stdlib" -d "Link Swift stdlib statically." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "no-static-swift-stdlib" -d "Link Swift stdlib statically." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -l "version" -d "Show the version." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -s "h" -l "help" -d "Show help information." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'build'" -o "help" -d "Show help information." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -s "v" -l "verbose" -d "Increase verbosity to include informational output." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -l "very-verbose" -d "Increase verbosity to include debug output." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -l "vv" -d "Increase verbosity to include debug output." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -s "q" -l "quiet" -d "Decrease verbosity to only include error output." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -l "color-diagnostics" -d "Enables or disables color diagnostics when printing to a TTY. By default, color diagnostics are enabled when connected to a TTY and disabled otherwise." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -l "no-color-diagnostics" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -l "disable-sandbox" -d "Disable using the sandbox when executing subprocesses." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -l "netrc" -d "Use netrc file even in cases where other credential stores are preferred." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -l "enable-netrc" -d "Load credentials from a netrc file." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -l "disable-netrc" -d "Load credentials from a netrc file." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -l "netrc-file" -d "Specify the netrc file path." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -l "enable-keychain" -d "Search credentials in macOS keychain." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -l "disable-keychain" -d "Search credentials in macOS keychain." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -l "resolver-fingerprint-checking" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -l "resolver-signing-entity-checking" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -l "enable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -l "disable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -l "enable-prefetching" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -l "disable-prefetching" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "force-resolved-versions" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "disable-automatic-resolution" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "only-use-versions-from-resolved-file" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -l "skip-update" -d "Skip updating dependencies from their remote during a resolution." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -l "disable-scm-to-registry-transformation" -d "Disable source control to registry transformation." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -l "use-registry-identity-for-scm" -d "Look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -l "replace-scm-with-registry" -d "Look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -l "default-registry-url" -d "Default registry URL to use, instead of the registries.json configuration file." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -s "c" -l "configuration" -d "Build with configuration" -xa "debug release" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "Xcc" -d "Pass flag through to all C compiler invocations." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "Xswiftc" -d "Pass flag through to all Swift compiler invocations." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "Xlinker" -d "Pass flag through to all linker invocations." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "Xcxx" -d "Pass flag through to all C++ compiler invocations." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -l "triple" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -l "sdk" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -l "toolchain" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -l "swift-sdk" -d "Filter for selecting a specific Swift SDK to build with." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -l "sanitize" -d "Turn on runtime checks for erroneous behavior" -xa "address thread undefined scudo" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -l "auto-index-store" -d "Enable or disable indexing-while-building feature." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -l "enable-index-store" -d "Enable or disable indexing-while-building feature." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -l "disable-index-store" -d "Enable or disable indexing-while-building feature." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -l "enable-parseable-module-interfaces" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -s "j" -l "jobs" -d "The number of jobs to spawn in parallel during the build process." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -l "use-integrated-swift-driver" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -l "explicit-target-dependency-import-check" -d "A flag that indicates this build should check whether targets only import their explicitly-declared dependencies." -xa "none warn error" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -l "experimental-explicit-module-build" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -l "build-system" -xa "native swiftbuild xcode" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -o "debug-info-format" -d "The Debug Information Format to use." -xa "dwarf codeview none" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -l "enable-dead-strip" -d "Disable/enable dead code stripping by the linker." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -l "disable-dead-strip" -d "Disable/enable dead code stripping by the linker." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -l "disable-local-rpath" -d "Disable adding ＄ORIGIN/@loader_path to the rpath by default." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -l "version" -d "Show the version." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'package'" -s "h" -l "help" -d "Show help information." # global
complete -f -c "swift" -n "__fish_seen_subcommand_from 'package'" -a "add-dependency" -d "Add a package dependency to the manifest." # sub
complete -f -c "swift" -n "__fish_seen_subcommand_from 'package'" -a "add-product" -d "Add a new product to the manifest." # sub
complete -f -c "swift" -n "__fish_seen_subcommand_from 'package'" -a "add-target" -d "Add a new target to the manifest." # sub
complete -f -c "swift" -n "__fish_seen_subcommand_from 'package'" -a "add-target-dependency" -d "Add a new target dependency to the manifest." # sub
complete -f -c "swift" -n "__fish_seen_subcommand_from 'package'" -a "add-setting" -d "Add a new setting to the manifest." # sub
complete -f -c "swift" -n "__fish_seen_subcommand_from 'package'" -a "clean" -d "Delete build artifacts." # sub
complete -f -c "swift" -n "__fish_seen_subcommand_from 'package'" -a "purge-cache" -d "Purge the global repository cache." # sub
complete -f -c "swift" -n "__fish_seen_subcommand_from 'package'" -a "reset" -d "Reset the complete cache/build directory." # sub
complete -f -c "swift" -n "__fish_seen_subcommand_from 'package'" -a "update" -d "Update package dependencies." # sub
complete -f -c "swift" -n "__fish_seen_subcommand_from 'package'" -a "describe" -d "Describe the current package." # sub
complete -f -c "swift" -n "__fish_seen_subcommand_from 'package'" -a "init" -d "Initialize a new package." # sub
complete -f -c "swift" -n "__fish_seen_subcommand_from 'package'" -a "migrate" -d "Migrate a package or its individual targets to use the given set of features." # sub
complete -f -c "swift" -n "__fish_seen_subcommand_from 'package'" -a "experimental-install" -d "Offers the ability to install executable products of the current package." # sub
complete -f -c "swift" -n "__fish_seen_subcommand_from 'package'" -a "experimental-uninstall" -d "Offers the ability to uninstall executable products previously installed by `swift package experimental-install`." # sub
complete -f -c "swift" -n "__fish_seen_subcommand_from 'package'" -a "diagnose-api-breaking-changes" -d "Diagnose API-breaking changes to Swift modules in a package." # sub
complete -f -c "swift" -n "__fish_seen_subcommand_from 'package'" -a "dump-symbol-graph" -d "Dump symbol graphs." # sub
complete -f -c "swift" -n "__fish_seen_subcommand_from 'package'" -a "dump-package" -d "Print parsed Package.swift as JSON." # sub
complete -f -c "swift" -n "__fish_seen_subcommand_from 'package'" -a "edit" -d "Put a package in editable mode." # sub
complete -f -c "swift" -n "__fish_seen_subcommand_from 'package'" -a "unedit" -d "Remove a package from editable mode." # sub
complete -f -c "swift" -n "__fish_seen_subcommand_from 'package'" -a "config" -d "Manipulate configuration of the package" # sub
complete -f -c "swift" -n "__fish_seen_subcommand_from 'package'" -a "resolve" -d "Resolve package dependencies." # sub
complete -f -c "swift" -n "__fish_seen_subcommand_from 'package'" -a "show-dependencies" -d "Print the resolved dependency graph." # sub
complete -f -c "swift" -n "__fish_seen_subcommand_from 'package'" -a "show-executables" -d "List the available executables from this package." # sub
complete -f -c "swift" -n "__fish_seen_subcommand_from 'package'" -a "tools-version" -d "Manipulate tools version of the current package." # sub
complete -f -c "swift" -n "__fish_seen_subcommand_from 'package'" -a "compute-checksum" -d "Compute the checksum for a binary artifact." # sub
complete -f -c "swift" -n "__fish_seen_subcommand_from 'package'" -a "archive-source" -d "Create a source archive for the package." # sub
complete -f -c "swift" -n "__fish_seen_subcommand_from 'package'" -a "completion-tool" -d "Command to generate shell completions." # sub
complete -f -c "swift" -n "__fish_seen_subcommand_from 'package'" -a "plugin" -d "Invoke a command plugin or perform other actions on command plugins." # sub
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -s "v" -l "verbose" -d "Increase verbosity to include informational output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -l "very-verbose" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -l "vv" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -s "q" -l "quiet" -d "Decrease verbosity to only include error output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -l "color-diagnostics" -d "Enables or disables color diagnostics when printing to a TTY. By default, color diagnostics are enabled when connected to a TTY and disabled otherwise." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -l "no-color-diagnostics" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -l "disable-sandbox" -d "Disable using the sandbox when executing subprocesses." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -l "netrc" -d "Use netrc file even in cases where other credential stores are preferred." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -l "enable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -l "disable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -l "netrc-file" -d "Specify the netrc file path." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -l "enable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -l "disable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -l "resolver-fingerprint-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -l "resolver-signing-entity-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -l "enable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -l "disable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -l "enable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -l "disable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -o "force-resolved-versions" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -o "disable-automatic-resolution" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -o "only-use-versions-from-resolved-file" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -l "skip-update" -d "Skip updating dependencies from their remote during a resolution." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -l "disable-scm-to-registry-transformation" -d "Disable source control to registry transformation." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -l "use-registry-identity-for-scm" -d "Look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -l "replace-scm-with-registry" -d "Look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -l "default-registry-url" -d "Default registry URL to use, instead of the registries.json configuration file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -s "c" -l "configuration" -d "Build with configuration" -xa "debug release" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -o "Xcc" -d "Pass flag through to all C compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -o "Xswiftc" -d "Pass flag through to all Swift compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -o "Xlinker" -d "Pass flag through to all linker invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -o "Xcxx" -d "Pass flag through to all C++ compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -l "triple" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -l "sdk" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -l "toolchain" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -l "swift-sdk" -d "Filter for selecting a specific Swift SDK to build with." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -l "sanitize" -d "Turn on runtime checks for erroneous behavior" -xa "address thread undefined scudo" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -l "auto-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -l "enable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -l "disable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -l "enable-parseable-module-interfaces" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -s "j" -l "jobs" -d "The number of jobs to spawn in parallel during the build process." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -l "use-integrated-swift-driver" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -l "explicit-target-dependency-import-check" -d "A flag that indicates this build should check whether targets only import their explicitly-declared dependencies." -xa "none warn error" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -l "experimental-explicit-module-build" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -l "build-system" -xa "native swiftbuild xcode" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -o "debug-info-format" -d "The Debug Information Format to use." -xa "dwarf codeview none" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -l "enable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -l "disable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-dependency'" -l "disable-local-rpath" -d "Disable adding ＄ORIGIN/@loader_path to the rpath by default." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -s "v" -l "verbose" -d "Increase verbosity to include informational output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -l "very-verbose" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -l "vv" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -s "q" -l "quiet" -d "Decrease verbosity to only include error output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -l "color-diagnostics" -d "Enables or disables color diagnostics when printing to a TTY. By default, color diagnostics are enabled when connected to a TTY and disabled otherwise." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -l "no-color-diagnostics" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -l "disable-sandbox" -d "Disable using the sandbox when executing subprocesses." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -l "netrc" -d "Use netrc file even in cases where other credential stores are preferred." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -l "enable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -l "disable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -l "netrc-file" -d "Specify the netrc file path." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -l "enable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -l "disable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -l "resolver-fingerprint-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -l "resolver-signing-entity-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -l "enable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -l "disable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -l "enable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -l "disable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -o "force-resolved-versions" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -o "disable-automatic-resolution" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -o "only-use-versions-from-resolved-file" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -l "skip-update" -d "Skip updating dependencies from their remote during a resolution." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -l "disable-scm-to-registry-transformation" -d "Disable source control to registry transformation." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -l "use-registry-identity-for-scm" -d "Look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -l "replace-scm-with-registry" -d "Look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -l "default-registry-url" -d "Default registry URL to use, instead of the registries.json configuration file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -s "c" -l "configuration" -d "Build with configuration" -xa "debug release" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -o "Xcc" -d "Pass flag through to all C compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -o "Xswiftc" -d "Pass flag through to all Swift compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -o "Xlinker" -d "Pass flag through to all linker invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -o "Xcxx" -d "Pass flag through to all C++ compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -l "triple" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -l "sdk" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -l "toolchain" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -l "swift-sdk" -d "Filter for selecting a specific Swift SDK to build with." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -l "sanitize" -d "Turn on runtime checks for erroneous behavior" -xa "address thread undefined scudo" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -l "auto-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -l "enable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -l "disable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -l "enable-parseable-module-interfaces" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -s "j" -l "jobs" -d "The number of jobs to spawn in parallel during the build process." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -l "use-integrated-swift-driver" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -l "explicit-target-dependency-import-check" -d "A flag that indicates this build should check whether targets only import their explicitly-declared dependencies." -xa "none warn error" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -l "experimental-explicit-module-build" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -l "build-system" -xa "native swiftbuild xcode" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -o "debug-info-format" -d "The Debug Information Format to use." -xa "dwarf codeview none" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -l "enable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -l "disable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-product'" -l "disable-local-rpath" -d "Disable adding ＄ORIGIN/@loader_path to the rpath by default." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -s "v" -l "verbose" -d "Increase verbosity to include informational output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -l "very-verbose" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -l "vv" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -s "q" -l "quiet" -d "Decrease verbosity to only include error output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -l "color-diagnostics" -d "Enables or disables color diagnostics when printing to a TTY. By default, color diagnostics are enabled when connected to a TTY and disabled otherwise." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -l "no-color-diagnostics" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -l "disable-sandbox" -d "Disable using the sandbox when executing subprocesses." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -l "netrc" -d "Use netrc file even in cases where other credential stores are preferred." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -l "enable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -l "disable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -l "netrc-file" -d "Specify the netrc file path." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -l "enable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -l "disable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -l "resolver-fingerprint-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -l "resolver-signing-entity-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -l "enable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -l "disable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -l "enable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -l "disable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -o "force-resolved-versions" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -o "disable-automatic-resolution" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -o "only-use-versions-from-resolved-file" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -l "skip-update" -d "Skip updating dependencies from their remote during a resolution." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -l "disable-scm-to-registry-transformation" -d "Disable source control to registry transformation." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -l "use-registry-identity-for-scm" -d "Look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -l "replace-scm-with-registry" -d "Look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -l "default-registry-url" -d "Default registry URL to use, instead of the registries.json configuration file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -s "c" -l "configuration" -d "Build with configuration" -xa "debug release" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -o "Xcc" -d "Pass flag through to all C compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -o "Xswiftc" -d "Pass flag through to all Swift compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -o "Xlinker" -d "Pass flag through to all linker invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -o "Xcxx" -d "Pass flag through to all C++ compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -l "triple" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -l "sdk" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -l "toolchain" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -l "swift-sdk" -d "Filter for selecting a specific Swift SDK to build with." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -l "sanitize" -d "Turn on runtime checks for erroneous behavior" -xa "address thread undefined scudo" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -l "auto-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -l "enable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -l "disable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -l "enable-parseable-module-interfaces" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -s "j" -l "jobs" -d "The number of jobs to spawn in parallel during the build process." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -l "use-integrated-swift-driver" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -l "explicit-target-dependency-import-check" -d "A flag that indicates this build should check whether targets only import their explicitly-declared dependencies." -xa "none warn error" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -l "experimental-explicit-module-build" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -l "build-system" -xa "native swiftbuild xcode" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -o "debug-info-format" -d "The Debug Information Format to use." -xa "dwarf codeview none" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -l "enable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -l "disable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target'" -l "disable-local-rpath" -d "Disable adding ＄ORIGIN/@loader_path to the rpath by default." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -s "v" -l "verbose" -d "Increase verbosity to include informational output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -l "very-verbose" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -l "vv" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -s "q" -l "quiet" -d "Decrease verbosity to only include error output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -l "color-diagnostics" -d "Enables or disables color diagnostics when printing to a TTY. By default, color diagnostics are enabled when connected to a TTY and disabled otherwise." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -l "no-color-diagnostics" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -l "disable-sandbox" -d "Disable using the sandbox when executing subprocesses." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -l "netrc" -d "Use netrc file even in cases where other credential stores are preferred." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -l "enable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -l "disable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -l "netrc-file" -d "Specify the netrc file path." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -l "enable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -l "disable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -l "resolver-fingerprint-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -l "resolver-signing-entity-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -l "enable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -l "disable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -l "enable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -l "disable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -o "force-resolved-versions" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -o "disable-automatic-resolution" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -o "only-use-versions-from-resolved-file" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -l "skip-update" -d "Skip updating dependencies from their remote during a resolution." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -l "disable-scm-to-registry-transformation" -d "Disable source control to registry transformation." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -l "use-registry-identity-for-scm" -d "Look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -l "replace-scm-with-registry" -d "Look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -l "default-registry-url" -d "Default registry URL to use, instead of the registries.json configuration file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -s "c" -l "configuration" -d "Build with configuration" -xa "debug release" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -o "Xcc" -d "Pass flag through to all C compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -o "Xswiftc" -d "Pass flag through to all Swift compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -o "Xlinker" -d "Pass flag through to all linker invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -o "Xcxx" -d "Pass flag through to all C++ compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -l "triple" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -l "sdk" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -l "toolchain" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -l "swift-sdk" -d "Filter for selecting a specific Swift SDK to build with." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -l "sanitize" -d "Turn on runtime checks for erroneous behavior" -xa "address thread undefined scudo" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -l "auto-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -l "enable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -l "disable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -l "enable-parseable-module-interfaces" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -s "j" -l "jobs" -d "The number of jobs to spawn in parallel during the build process." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -l "use-integrated-swift-driver" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -l "explicit-target-dependency-import-check" -d "A flag that indicates this build should check whether targets only import their explicitly-declared dependencies." -xa "none warn error" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -l "experimental-explicit-module-build" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -l "build-system" -xa "native swiftbuild xcode" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -o "debug-info-format" -d "The Debug Information Format to use." -xa "dwarf codeview none" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -l "enable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -l "disable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-target-dependency'" -l "disable-local-rpath" -d "Disable adding ＄ORIGIN/@loader_path to the rpath by default." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -s "v" -l "verbose" -d "Increase verbosity to include informational output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -l "very-verbose" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -l "vv" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -s "q" -l "quiet" -d "Decrease verbosity to only include error output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -l "color-diagnostics" -d "Enables or disables color diagnostics when printing to a TTY. By default, color diagnostics are enabled when connected to a TTY and disabled otherwise." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -l "no-color-diagnostics" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -l "disable-sandbox" -d "Disable using the sandbox when executing subprocesses." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -l "netrc" -d "Use netrc file even in cases where other credential stores are preferred." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -l "enable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -l "disable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -l "netrc-file" -d "Specify the netrc file path." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -l "enable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -l "disable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -l "resolver-fingerprint-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -l "resolver-signing-entity-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -l "enable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -l "disable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -l "enable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -l "disable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -o "force-resolved-versions" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -o "disable-automatic-resolution" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -o "only-use-versions-from-resolved-file" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -l "skip-update" -d "Skip updating dependencies from their remote during a resolution." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -l "disable-scm-to-registry-transformation" -d "Disable source control to registry transformation." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -l "use-registry-identity-for-scm" -d "Look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -l "replace-scm-with-registry" -d "Look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -l "default-registry-url" -d "Default registry URL to use, instead of the registries.json configuration file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -s "c" -l "configuration" -d "Build with configuration" -xa "debug release" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -o "Xcc" -d "Pass flag through to all C compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -o "Xswiftc" -d "Pass flag through to all Swift compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -o "Xlinker" -d "Pass flag through to all linker invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -o "Xcxx" -d "Pass flag through to all C++ compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -l "triple" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -l "sdk" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -l "toolchain" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -l "swift-sdk" -d "Filter for selecting a specific Swift SDK to build with." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -l "sanitize" -d "Turn on runtime checks for erroneous behavior" -xa "address thread undefined scudo" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -l "auto-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -l "enable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -l "disable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -l "enable-parseable-module-interfaces" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -s "j" -l "jobs" -d "The number of jobs to spawn in parallel during the build process." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -l "use-integrated-swift-driver" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -l "explicit-target-dependency-import-check" -d "A flag that indicates this build should check whether targets only import their explicitly-declared dependencies." -xa "none warn error" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -l "experimental-explicit-module-build" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -l "build-system" -xa "native swiftbuild xcode" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -o "debug-info-format" -d "The Debug Information Format to use." -xa "dwarf codeview none" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -l "enable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -l "disable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package add-setting'" -l "disable-local-rpath" -d "Disable adding ＄ORIGIN/@loader_path to the rpath by default." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -s "v" -l "verbose" -d "Increase verbosity to include informational output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -l "very-verbose" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -l "vv" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -s "q" -l "quiet" -d "Decrease verbosity to only include error output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -l "color-diagnostics" -d "Enables or disables color diagnostics when printing to a TTY. By default, color diagnostics are enabled when connected to a TTY and disabled otherwise." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -l "no-color-diagnostics" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -l "disable-sandbox" -d "Disable using the sandbox when executing subprocesses." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -l "netrc" -d "Use netrc file even in cases where other credential stores are preferred." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -l "enable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -l "disable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -l "netrc-file" -d "Specify the netrc file path." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -l "enable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -l "disable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -l "resolver-fingerprint-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -l "resolver-signing-entity-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -l "enable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -l "disable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -l "enable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -l "disable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -o "force-resolved-versions" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -o "disable-automatic-resolution" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -o "only-use-versions-from-resolved-file" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -l "skip-update" -d "Skip updating dependencies from their remote during a resolution." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -l "disable-scm-to-registry-transformation" -d "Disable source control to registry transformation." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -l "use-registry-identity-for-scm" -d "Look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -l "replace-scm-with-registry" -d "Look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -l "default-registry-url" -d "Default registry URL to use, instead of the registries.json configuration file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -s "c" -l "configuration" -d "Build with configuration" -xa "debug release" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -o "Xcc" -d "Pass flag through to all C compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -o "Xswiftc" -d "Pass flag through to all Swift compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -o "Xlinker" -d "Pass flag through to all linker invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -o "Xcxx" -d "Pass flag through to all C++ compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -l "triple" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -l "sdk" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -l "toolchain" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -l "swift-sdk" -d "Filter for selecting a specific Swift SDK to build with." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -l "sanitize" -d "Turn on runtime checks for erroneous behavior" -xa "address thread undefined scudo" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -l "auto-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -l "enable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -l "disable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -l "enable-parseable-module-interfaces" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -s "j" -l "jobs" -d "The number of jobs to spawn in parallel during the build process." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -l "use-integrated-swift-driver" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -l "explicit-target-dependency-import-check" -d "A flag that indicates this build should check whether targets only import their explicitly-declared dependencies." -xa "none warn error" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -l "experimental-explicit-module-build" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -l "build-system" -xa "native swiftbuild xcode" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -o "debug-info-format" -d "The Debug Information Format to use." -xa "dwarf codeview none" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -l "enable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -l "disable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package clean'" -l "disable-local-rpath" -d "Disable adding ＄ORIGIN/@loader_path to the rpath by default." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -s "v" -l "verbose" -d "Increase verbosity to include informational output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -l "very-verbose" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -l "vv" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -s "q" -l "quiet" -d "Decrease verbosity to only include error output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -l "color-diagnostics" -d "Enables or disables color diagnostics when printing to a TTY. By default, color diagnostics are enabled when connected to a TTY and disabled otherwise." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -l "no-color-diagnostics" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -l "disable-sandbox" -d "Disable using the sandbox when executing subprocesses." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -l "netrc" -d "Use netrc file even in cases where other credential stores are preferred." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -l "enable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -l "disable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -l "netrc-file" -d "Specify the netrc file path." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -l "enable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -l "disable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -l "resolver-fingerprint-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -l "resolver-signing-entity-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -l "enable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -l "disable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -l "enable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -l "disable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -o "force-resolved-versions" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -o "disable-automatic-resolution" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -o "only-use-versions-from-resolved-file" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -l "skip-update" -d "Skip updating dependencies from their remote during a resolution." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -l "disable-scm-to-registry-transformation" -d "Disable source control to registry transformation." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -l "use-registry-identity-for-scm" -d "Look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -l "replace-scm-with-registry" -d "Look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -l "default-registry-url" -d "Default registry URL to use, instead of the registries.json configuration file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -s "c" -l "configuration" -d "Build with configuration" -xa "debug release" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -o "Xcc" -d "Pass flag through to all C compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -o "Xswiftc" -d "Pass flag through to all Swift compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -o "Xlinker" -d "Pass flag through to all linker invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -o "Xcxx" -d "Pass flag through to all C++ compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -l "triple" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -l "sdk" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -l "toolchain" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -l "swift-sdk" -d "Filter for selecting a specific Swift SDK to build with." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -l "sanitize" -d "Turn on runtime checks for erroneous behavior" -xa "address thread undefined scudo" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -l "auto-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -l "enable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -l "disable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -l "enable-parseable-module-interfaces" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -s "j" -l "jobs" -d "The number of jobs to spawn in parallel during the build process." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -l "use-integrated-swift-driver" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -l "explicit-target-dependency-import-check" -d "A flag that indicates this build should check whether targets only import their explicitly-declared dependencies." -xa "none warn error" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -l "experimental-explicit-module-build" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -l "build-system" -xa "native swiftbuild xcode" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -o "debug-info-format" -d "The Debug Information Format to use." -xa "dwarf codeview none" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -l "enable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -l "disable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package purge-cache'" -l "disable-local-rpath" -d "Disable adding ＄ORIGIN/@loader_path to the rpath by default." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -s "v" -l "verbose" -d "Increase verbosity to include informational output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -l "very-verbose" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -l "vv" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -s "q" -l "quiet" -d "Decrease verbosity to only include error output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -l "color-diagnostics" -d "Enables or disables color diagnostics when printing to a TTY. By default, color diagnostics are enabled when connected to a TTY and disabled otherwise." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -l "no-color-diagnostics" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -l "disable-sandbox" -d "Disable using the sandbox when executing subprocesses." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -l "netrc" -d "Use netrc file even in cases where other credential stores are preferred." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -l "enable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -l "disable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -l "netrc-file" -d "Specify the netrc file path." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -l "enable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -l "disable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -l "resolver-fingerprint-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -l "resolver-signing-entity-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -l "enable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -l "disable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -l "enable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -l "disable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -o "force-resolved-versions" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -o "disable-automatic-resolution" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -o "only-use-versions-from-resolved-file" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -l "skip-update" -d "Skip updating dependencies from their remote during a resolution." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -l "disable-scm-to-registry-transformation" -d "Disable source control to registry transformation." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -l "use-registry-identity-for-scm" -d "Look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -l "replace-scm-with-registry" -d "Look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -l "default-registry-url" -d "Default registry URL to use, instead of the registries.json configuration file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -s "c" -l "configuration" -d "Build with configuration" -xa "debug release" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -o "Xcc" -d "Pass flag through to all C compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -o "Xswiftc" -d "Pass flag through to all Swift compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -o "Xlinker" -d "Pass flag through to all linker invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -o "Xcxx" -d "Pass flag through to all C++ compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -l "triple" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -l "sdk" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -l "toolchain" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -l "swift-sdk" -d "Filter for selecting a specific Swift SDK to build with." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -l "sanitize" -d "Turn on runtime checks for erroneous behavior" -xa "address thread undefined scudo" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -l "auto-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -l "enable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -l "disable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -l "enable-parseable-module-interfaces" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -s "j" -l "jobs" -d "The number of jobs to spawn in parallel during the build process." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -l "use-integrated-swift-driver" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -l "explicit-target-dependency-import-check" -d "A flag that indicates this build should check whether targets only import their explicitly-declared dependencies." -xa "none warn error" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -l "experimental-explicit-module-build" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -l "build-system" -xa "native swiftbuild xcode" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -o "debug-info-format" -d "The Debug Information Format to use." -xa "dwarf codeview none" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -l "enable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -l "disable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package reset'" -l "disable-local-rpath" -d "Disable adding ＄ORIGIN/@loader_path to the rpath by default." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -s "v" -l "verbose" -d "Increase verbosity to include informational output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -l "very-verbose" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -l "vv" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -s "q" -l "quiet" -d "Decrease verbosity to only include error output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -l "color-diagnostics" -d "Enables or disables color diagnostics when printing to a TTY. By default, color diagnostics are enabled when connected to a TTY and disabled otherwise." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -l "no-color-diagnostics" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -l "disable-sandbox" -d "Disable using the sandbox when executing subprocesses." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -l "netrc" -d "Use netrc file even in cases where other credential stores are preferred." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -l "enable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -l "disable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -l "netrc-file" -d "Specify the netrc file path." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -l "enable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -l "disable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -l "resolver-fingerprint-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -l "resolver-signing-entity-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -l "enable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -l "disable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -l "enable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -l "disable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -o "force-resolved-versions" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -o "disable-automatic-resolution" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -o "only-use-versions-from-resolved-file" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -l "skip-update" -d "Skip updating dependencies from their remote during a resolution." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -l "disable-scm-to-registry-transformation" -d "Disable source control to registry transformation." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -l "use-registry-identity-for-scm" -d "Look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -l "replace-scm-with-registry" -d "Look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -l "default-registry-url" -d "Default registry URL to use, instead of the registries.json configuration file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -s "c" -l "configuration" -d "Build with configuration" -xa "debug release" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -o "Xcc" -d "Pass flag through to all C compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -o "Xswiftc" -d "Pass flag through to all Swift compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -o "Xlinker" -d "Pass flag through to all linker invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -o "Xcxx" -d "Pass flag through to all C++ compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -l "triple" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -l "sdk" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -l "toolchain" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -l "swift-sdk" -d "Filter for selecting a specific Swift SDK to build with." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -l "sanitize" -d "Turn on runtime checks for erroneous behavior" -xa "address thread undefined scudo" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -l "auto-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -l "enable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -l "disable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -l "enable-parseable-module-interfaces" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -s "j" -l "jobs" -d "The number of jobs to spawn in parallel during the build process." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -l "use-integrated-swift-driver" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -l "explicit-target-dependency-import-check" -d "A flag that indicates this build should check whether targets only import their explicitly-declared dependencies." -xa "none warn error" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -l "experimental-explicit-module-build" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -l "build-system" -xa "native swiftbuild xcode" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -o "debug-info-format" -d "The Debug Information Format to use." -xa "dwarf codeview none" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -l "enable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -l "disable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package update'" -l "disable-local-rpath" -d "Disable adding ＄ORIGIN/@loader_path to the rpath by default." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -s "v" -l "verbose" -d "Increase verbosity to include informational output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -l "very-verbose" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -l "vv" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -s "q" -l "quiet" -d "Decrease verbosity to only include error output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -l "color-diagnostics" -d "Enables or disables color diagnostics when printing to a TTY. By default, color diagnostics are enabled when connected to a TTY and disabled otherwise." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -l "no-color-diagnostics" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -l "disable-sandbox" -d "Disable using the sandbox when executing subprocesses." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -l "netrc" -d "Use netrc file even in cases where other credential stores are preferred." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -l "enable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -l "disable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -l "netrc-file" -d "Specify the netrc file path." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -l "enable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -l "disable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -l "resolver-fingerprint-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -l "resolver-signing-entity-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -l "enable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -l "disable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -l "enable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -l "disable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -o "force-resolved-versions" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -o "disable-automatic-resolution" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -o "only-use-versions-from-resolved-file" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -l "skip-update" -d "Skip updating dependencies from their remote during a resolution." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -l "disable-scm-to-registry-transformation" -d "Disable source control to registry transformation." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -l "use-registry-identity-for-scm" -d "Look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -l "replace-scm-with-registry" -d "Look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -l "default-registry-url" -d "Default registry URL to use, instead of the registries.json configuration file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -s "c" -l "configuration" -d "Build with configuration" -xa "debug release" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -o "Xcc" -d "Pass flag through to all C compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -o "Xswiftc" -d "Pass flag through to all Swift compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -o "Xlinker" -d "Pass flag through to all linker invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -o "Xcxx" -d "Pass flag through to all C++ compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -l "triple" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -l "sdk" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -l "toolchain" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -l "swift-sdk" -d "Filter for selecting a specific Swift SDK to build with." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -l "sanitize" -d "Turn on runtime checks for erroneous behavior" -xa "address thread undefined scudo" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -l "auto-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -l "enable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -l "disable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -l "enable-parseable-module-interfaces" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -s "j" -l "jobs" -d "The number of jobs to spawn in parallel during the build process." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -l "use-integrated-swift-driver" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -l "explicit-target-dependency-import-check" -d "A flag that indicates this build should check whether targets only import their explicitly-declared dependencies." -xa "none warn error" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -l "experimental-explicit-module-build" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -l "build-system" -xa "native swiftbuild xcode" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -o "debug-info-format" -d "The Debug Information Format to use." -xa "dwarf codeview none" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -l "enable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -l "disable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package describe'" -l "disable-local-rpath" -d "Disable adding ＄ORIGIN/@loader_path to the rpath by default." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -s "v" -l "verbose" -d "Increase verbosity to include informational output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -l "very-verbose" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -l "vv" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -s "q" -l "quiet" -d "Decrease verbosity to only include error output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -l "color-diagnostics" -d "Enables or disables color diagnostics when printing to a TTY. By default, color diagnostics are enabled when connected to a TTY and disabled otherwise." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -l "no-color-diagnostics" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -l "disable-sandbox" -d "Disable using the sandbox when executing subprocesses." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -l "netrc" -d "Use netrc file even in cases where other credential stores are preferred." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -l "enable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -l "disable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -l "netrc-file" -d "Specify the netrc file path." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -l "enable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -l "disable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -l "resolver-fingerprint-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -l "resolver-signing-entity-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -l "enable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -l "disable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -l "enable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -l "disable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -o "force-resolved-versions" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -o "disable-automatic-resolution" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -o "only-use-versions-from-resolved-file" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -l "skip-update" -d "Skip updating dependencies from their remote during a resolution." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -l "disable-scm-to-registry-transformation" -d "Disable source control to registry transformation." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -l "use-registry-identity-for-scm" -d "Look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -l "replace-scm-with-registry" -d "Look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -l "default-registry-url" -d "Default registry URL to use, instead of the registries.json configuration file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -s "c" -l "configuration" -d "Build with configuration" -xa "debug release" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -o "Xcc" -d "Pass flag through to all C compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -o "Xswiftc" -d "Pass flag through to all Swift compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -o "Xlinker" -d "Pass flag through to all linker invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -o "Xcxx" -d "Pass flag through to all C++ compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -l "triple" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -l "sdk" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -l "toolchain" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -l "swift-sdk" -d "Filter for selecting a specific Swift SDK to build with." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -l "sanitize" -d "Turn on runtime checks for erroneous behavior" -xa "address thread undefined scudo" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -l "auto-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -l "enable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -l "disable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -l "enable-parseable-module-interfaces" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -s "j" -l "jobs" -d "The number of jobs to spawn in parallel during the build process." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -l "use-integrated-swift-driver" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -l "explicit-target-dependency-import-check" -d "A flag that indicates this build should check whether targets only import their explicitly-declared dependencies." -xa "none warn error" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -l "experimental-explicit-module-build" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -l "build-system" -xa "native swiftbuild xcode" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -o "debug-info-format" -d "The Debug Information Format to use." -xa "dwarf codeview none" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -l "enable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -l "disable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package init'" -l "disable-local-rpath" -d "Disable adding ＄ORIGIN/@loader_path to the rpath by default." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -s "v" -l "verbose" -d "Increase verbosity to include informational output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -l "very-verbose" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -l "vv" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -s "q" -l "quiet" -d "Decrease verbosity to only include error output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -l "color-diagnostics" -d "Enables or disables color diagnostics when printing to a TTY. By default, color diagnostics are enabled when connected to a TTY and disabled otherwise." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -l "no-color-diagnostics" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -l "disable-sandbox" -d "Disable using the sandbox when executing subprocesses." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -l "netrc" -d "Use netrc file even in cases where other credential stores are preferred." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -l "enable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -l "disable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -l "netrc-file" -d "Specify the netrc file path." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -l "enable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -l "disable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -l "resolver-fingerprint-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -l "resolver-signing-entity-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -l "enable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -l "disable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -l "enable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -l "disable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -o "force-resolved-versions" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -o "disable-automatic-resolution" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -o "only-use-versions-from-resolved-file" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -l "skip-update" -d "Skip updating dependencies from their remote during a resolution." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -l "disable-scm-to-registry-transformation" -d "Disable source control to registry transformation." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -l "use-registry-identity-for-scm" -d "Look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -l "replace-scm-with-registry" -d "Look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -l "default-registry-url" -d "Default registry URL to use, instead of the registries.json configuration file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -s "c" -l "configuration" -d "Build with configuration" -xa "debug release" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -o "Xcc" -d "Pass flag through to all C compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -o "Xswiftc" -d "Pass flag through to all Swift compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -o "Xlinker" -d "Pass flag through to all linker invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -o "Xcxx" -d "Pass flag through to all C++ compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -l "triple" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -l "sdk" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -l "toolchain" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -l "swift-sdk" -d "Filter for selecting a specific Swift SDK to build with." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -l "sanitize" -d "Turn on runtime checks for erroneous behavior" -xa "address thread undefined scudo" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -l "auto-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -l "enable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -l "disable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -l "enable-parseable-module-interfaces" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -s "j" -l "jobs" -d "The number of jobs to spawn in parallel during the build process." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -l "use-integrated-swift-driver" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -l "explicit-target-dependency-import-check" -d "A flag that indicates this build should check whether targets only import their explicitly-declared dependencies." -xa "none warn error" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -l "experimental-explicit-module-build" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -l "build-system" -xa "native swiftbuild xcode" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -o "debug-info-format" -d "The Debug Information Format to use." -xa "dwarf codeview none" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -l "enable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -l "disable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package migrate'" -l "disable-local-rpath" -d "Disable adding ＄ORIGIN/@loader_path to the rpath by default." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -s "v" -l "verbose" -d "Increase verbosity to include informational output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -l "very-verbose" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -l "vv" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -s "q" -l "quiet" -d "Decrease verbosity to only include error output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -l "color-diagnostics" -d "Enables or disables color diagnostics when printing to a TTY. By default, color diagnostics are enabled when connected to a TTY and disabled otherwise." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -l "no-color-diagnostics" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -l "disable-sandbox" -d "Disable using the sandbox when executing subprocesses." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -l "netrc" -d "Use netrc file even in cases where other credential stores are preferred." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -l "enable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -l "disable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -l "netrc-file" -d "Specify the netrc file path." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -l "enable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -l "disable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -l "resolver-fingerprint-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -l "resolver-signing-entity-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -l "enable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -l "disable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -l "enable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -l "disable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -o "force-resolved-versions" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -o "disable-automatic-resolution" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -o "only-use-versions-from-resolved-file" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -l "skip-update" -d "Skip updating dependencies from their remote during a resolution." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -l "disable-scm-to-registry-transformation" -d "Disable source control to registry transformation." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -l "use-registry-identity-for-scm" -d "Look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -l "replace-scm-with-registry" -d "Look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -l "default-registry-url" -d "Default registry URL to use, instead of the registries.json configuration file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -s "c" -l "configuration" -d "Build with configuration" -xa "debug release" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -o "Xcc" -d "Pass flag through to all C compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -o "Xswiftc" -d "Pass flag through to all Swift compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -o "Xlinker" -d "Pass flag through to all linker invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -o "Xcxx" -d "Pass flag through to all C++ compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -l "triple" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -l "sdk" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -l "toolchain" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -l "swift-sdk" -d "Filter for selecting a specific Swift SDK to build with." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -l "sanitize" -d "Turn on runtime checks for erroneous behavior" -xa "address thread undefined scudo" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -l "auto-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -l "enable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -l "disable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -l "enable-parseable-module-interfaces" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -s "j" -l "jobs" -d "The number of jobs to spawn in parallel during the build process." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -l "use-integrated-swift-driver" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -l "explicit-target-dependency-import-check" -d "A flag that indicates this build should check whether targets only import their explicitly-declared dependencies." -xa "none warn error" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -l "experimental-explicit-module-build" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -l "build-system" -xa "native swiftbuild xcode" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -o "debug-info-format" -d "The Debug Information Format to use." -xa "dwarf codeview none" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -l "enable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -l "disable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-install'" -l "disable-local-rpath" -d "Disable adding ＄ORIGIN/@loader_path to the rpath by default." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -s "v" -l "verbose" -d "Increase verbosity to include informational output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -l "very-verbose" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -l "vv" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -s "q" -l "quiet" -d "Decrease verbosity to only include error output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -l "color-diagnostics" -d "Enables or disables color diagnostics when printing to a TTY. By default, color diagnostics are enabled when connected to a TTY and disabled otherwise." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -l "no-color-diagnostics" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -l "disable-sandbox" -d "Disable using the sandbox when executing subprocesses." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -l "netrc" -d "Use netrc file even in cases where other credential stores are preferred." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -l "enable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -l "disable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -l "netrc-file" -d "Specify the netrc file path." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -l "enable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -l "disable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -l "resolver-fingerprint-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -l "resolver-signing-entity-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -l "enable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -l "disable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -l "enable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -l "disable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -o "force-resolved-versions" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -o "disable-automatic-resolution" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -o "only-use-versions-from-resolved-file" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -l "skip-update" -d "Skip updating dependencies from their remote during a resolution." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -l "disable-scm-to-registry-transformation" -d "Disable source control to registry transformation." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -l "use-registry-identity-for-scm" -d "Look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -l "replace-scm-with-registry" -d "Look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -l "default-registry-url" -d "Default registry URL to use, instead of the registries.json configuration file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -s "c" -l "configuration" -d "Build with configuration" -xa "debug release" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -o "Xcc" -d "Pass flag through to all C compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -o "Xswiftc" -d "Pass flag through to all Swift compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -o "Xlinker" -d "Pass flag through to all linker invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -o "Xcxx" -d "Pass flag through to all C++ compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -l "triple" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -l "sdk" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -l "toolchain" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -l "swift-sdk" -d "Filter for selecting a specific Swift SDK to build with." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -l "sanitize" -d "Turn on runtime checks for erroneous behavior" -xa "address thread undefined scudo" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -l "auto-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -l "enable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -l "disable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -l "enable-parseable-module-interfaces" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -s "j" -l "jobs" -d "The number of jobs to spawn in parallel during the build process." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -l "use-integrated-swift-driver" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -l "explicit-target-dependency-import-check" -d "A flag that indicates this build should check whether targets only import their explicitly-declared dependencies." -xa "none warn error" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -l "experimental-explicit-module-build" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -l "build-system" -xa "native swiftbuild xcode" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -o "debug-info-format" -d "The Debug Information Format to use." -xa "dwarf codeview none" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -l "enable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -l "disable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package experimental-uninstall'" -l "disable-local-rpath" -d "Disable adding ＄ORIGIN/@loader_path to the rpath by default." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -s "v" -l "verbose" -d "Increase verbosity to include informational output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -l "very-verbose" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -l "vv" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -s "q" -l "quiet" -d "Decrease verbosity to only include error output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -l "color-diagnostics" -d "Enables or disables color diagnostics when printing to a TTY. By default, color diagnostics are enabled when connected to a TTY and disabled otherwise." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -l "no-color-diagnostics" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -l "disable-sandbox" -d "Disable using the sandbox when executing subprocesses." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -l "netrc" -d "Use netrc file even in cases where other credential stores are preferred." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -l "enable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -l "disable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -l "netrc-file" -d "Specify the netrc file path." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -l "enable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -l "disable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -l "resolver-fingerprint-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -l "resolver-signing-entity-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -l "enable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -l "disable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -l "enable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -l "disable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -o "force-resolved-versions" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -o "disable-automatic-resolution" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -o "only-use-versions-from-resolved-file" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -l "skip-update" -d "Skip updating dependencies from their remote during a resolution." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -l "disable-scm-to-registry-transformation" -d "Disable source control to registry transformation." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -l "use-registry-identity-for-scm" -d "Look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -l "replace-scm-with-registry" -d "Look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -l "default-registry-url" -d "Default registry URL to use, instead of the registries.json configuration file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -s "c" -l "configuration" -d "Build with configuration" -xa "debug release" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -o "Xcc" -d "Pass flag through to all C compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -o "Xswiftc" -d "Pass flag through to all Swift compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -o "Xlinker" -d "Pass flag through to all linker invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -o "Xcxx" -d "Pass flag through to all C++ compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -l "triple" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -l "sdk" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -l "toolchain" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -l "swift-sdk" -d "Filter for selecting a specific Swift SDK to build with." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -l "sanitize" -d "Turn on runtime checks for erroneous behavior" -xa "address thread undefined scudo" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -l "auto-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -l "enable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -l "disable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -l "enable-parseable-module-interfaces" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -s "j" -l "jobs" -d "The number of jobs to spawn in parallel during the build process." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -l "use-integrated-swift-driver" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -l "explicit-target-dependency-import-check" -d "A flag that indicates this build should check whether targets only import their explicitly-declared dependencies." -xa "none warn error" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -l "experimental-explicit-module-build" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -l "build-system" -xa "native swiftbuild xcode" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -o "debug-info-format" -d "The Debug Information Format to use." -xa "dwarf codeview none" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -l "enable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -l "disable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package diagnose-api-breaking-changes'" -l "disable-local-rpath" -d "Disable adding ＄ORIGIN/@loader_path to the rpath by default." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -s "v" -l "verbose" -d "Increase verbosity to include informational output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -l "very-verbose" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -l "vv" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -s "q" -l "quiet" -d "Decrease verbosity to only include error output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -l "color-diagnostics" -d "Enables or disables color diagnostics when printing to a TTY. By default, color diagnostics are enabled when connected to a TTY and disabled otherwise." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -l "no-color-diagnostics" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -l "disable-sandbox" -d "Disable using the sandbox when executing subprocesses." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -l "netrc" -d "Use netrc file even in cases where other credential stores are preferred." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -l "enable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -l "disable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -l "netrc-file" -d "Specify the netrc file path." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -l "enable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -l "disable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -l "resolver-fingerprint-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -l "resolver-signing-entity-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -l "enable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -l "disable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -l "enable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -l "disable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -o "force-resolved-versions" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -o "disable-automatic-resolution" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -o "only-use-versions-from-resolved-file" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -l "skip-update" -d "Skip updating dependencies from their remote during a resolution." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -l "disable-scm-to-registry-transformation" -d "Disable source control to registry transformation." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -l "use-registry-identity-for-scm" -d "Look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -l "replace-scm-with-registry" -d "Look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -l "default-registry-url" -d "Default registry URL to use, instead of the registries.json configuration file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -s "c" -l "configuration" -d "Build with configuration" -xa "debug release" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -o "Xcc" -d "Pass flag through to all C compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -o "Xswiftc" -d "Pass flag through to all Swift compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -o "Xlinker" -d "Pass flag through to all linker invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -o "Xcxx" -d "Pass flag through to all C++ compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -l "triple" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -l "sdk" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -l "toolchain" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -l "swift-sdk" -d "Filter for selecting a specific Swift SDK to build with." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -l "sanitize" -d "Turn on runtime checks for erroneous behavior" -xa "address thread undefined scudo" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -l "auto-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -l "enable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -l "disable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -l "enable-parseable-module-interfaces" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -s "j" -l "jobs" -d "The number of jobs to spawn in parallel during the build process." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -l "use-integrated-swift-driver" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -l "explicit-target-dependency-import-check" -d "A flag that indicates this build should check whether targets only import their explicitly-declared dependencies." -xa "none warn error" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -l "experimental-explicit-module-build" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -l "build-system" -xa "native swiftbuild xcode" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -o "debug-info-format" -d "The Debug Information Format to use." -xa "dwarf codeview none" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -l "enable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -l "disable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-symbol-graph'" -l "disable-local-rpath" -d "Disable adding ＄ORIGIN/@loader_path to the rpath by default." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -s "v" -l "verbose" -d "Increase verbosity to include informational output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -l "very-verbose" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -l "vv" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -s "q" -l "quiet" -d "Decrease verbosity to only include error output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -l "color-diagnostics" -d "Enables or disables color diagnostics when printing to a TTY. By default, color diagnostics are enabled when connected to a TTY and disabled otherwise." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -l "no-color-diagnostics" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -l "disable-sandbox" -d "Disable using the sandbox when executing subprocesses." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -l "netrc" -d "Use netrc file even in cases where other credential stores are preferred." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -l "enable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -l "disable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -l "netrc-file" -d "Specify the netrc file path." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -l "enable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -l "disable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -l "resolver-fingerprint-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -l "resolver-signing-entity-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -l "enable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -l "disable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -l "enable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -l "disable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -o "force-resolved-versions" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -o "disable-automatic-resolution" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -o "only-use-versions-from-resolved-file" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -l "skip-update" -d "Skip updating dependencies from their remote during a resolution." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -l "disable-scm-to-registry-transformation" -d "Disable source control to registry transformation." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -l "use-registry-identity-for-scm" -d "Look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -l "replace-scm-with-registry" -d "Look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -l "default-registry-url" -d "Default registry URL to use, instead of the registries.json configuration file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -s "c" -l "configuration" -d "Build with configuration" -xa "debug release" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -o "Xcc" -d "Pass flag through to all C compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -o "Xswiftc" -d "Pass flag through to all Swift compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -o "Xlinker" -d "Pass flag through to all linker invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -o "Xcxx" -d "Pass flag through to all C++ compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -l "triple" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -l "sdk" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -l "toolchain" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -l "swift-sdk" -d "Filter for selecting a specific Swift SDK to build with." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -l "sanitize" -d "Turn on runtime checks for erroneous behavior" -xa "address thread undefined scudo" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -l "auto-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -l "enable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -l "disable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -l "enable-parseable-module-interfaces" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -s "j" -l "jobs" -d "The number of jobs to spawn in parallel during the build process." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -l "use-integrated-swift-driver" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -l "explicit-target-dependency-import-check" -d "A flag that indicates this build should check whether targets only import their explicitly-declared dependencies." -xa "none warn error" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -l "experimental-explicit-module-build" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -l "build-system" -xa "native swiftbuild xcode" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -o "debug-info-format" -d "The Debug Information Format to use." -xa "dwarf codeview none" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -l "enable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -l "disable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package dump-package'" -l "disable-local-rpath" -d "Disable adding ＄ORIGIN/@loader_path to the rpath by default." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -s "v" -l "verbose" -d "Increase verbosity to include informational output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -l "very-verbose" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -l "vv" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -s "q" -l "quiet" -d "Decrease verbosity to only include error output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -l "color-diagnostics" -d "Enables or disables color diagnostics when printing to a TTY. By default, color diagnostics are enabled when connected to a TTY and disabled otherwise." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -l "no-color-diagnostics" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -l "disable-sandbox" -d "Disable using the sandbox when executing subprocesses." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -l "netrc" -d "Use netrc file even in cases where other credential stores are preferred." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -l "enable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -l "disable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -l "netrc-file" -d "Specify the netrc file path." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -l "enable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -l "disable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -l "resolver-fingerprint-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -l "resolver-signing-entity-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -l "enable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -l "disable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -l "enable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -l "disable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -o "force-resolved-versions" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -o "disable-automatic-resolution" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -o "only-use-versions-from-resolved-file" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -l "skip-update" -d "Skip updating dependencies from their remote during a resolution." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -l "disable-scm-to-registry-transformation" -d "Disable source control to registry transformation." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -l "use-registry-identity-for-scm" -d "Look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -l "replace-scm-with-registry" -d "Look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -l "default-registry-url" -d "Default registry URL to use, instead of the registries.json configuration file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -s "c" -l "configuration" -d "Build with configuration" -xa "debug release" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -o "Xcc" -d "Pass flag through to all C compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -o "Xswiftc" -d "Pass flag through to all Swift compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -o "Xlinker" -d "Pass flag through to all linker invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -o "Xcxx" -d "Pass flag through to all C++ compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -l "triple" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -l "sdk" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -l "toolchain" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -l "swift-sdk" -d "Filter for selecting a specific Swift SDK to build with." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -l "sanitize" -d "Turn on runtime checks for erroneous behavior" -xa "address thread undefined scudo" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -l "auto-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -l "enable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -l "disable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -l "enable-parseable-module-interfaces" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -s "j" -l "jobs" -d "The number of jobs to spawn in parallel during the build process." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -l "use-integrated-swift-driver" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -l "explicit-target-dependency-import-check" -d "A flag that indicates this build should check whether targets only import their explicitly-declared dependencies." -xa "none warn error" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -l "experimental-explicit-module-build" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -l "build-system" -xa "native swiftbuild xcode" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -o "debug-info-format" -d "The Debug Information Format to use." -xa "dwarf codeview none" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -l "enable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -l "disable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package edit'" -l "disable-local-rpath" -d "Disable adding ＄ORIGIN/@loader_path to the rpath by default." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -s "v" -l "verbose" -d "Increase verbosity to include informational output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -l "very-verbose" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -l "vv" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -s "q" -l "quiet" -d "Decrease verbosity to only include error output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -l "color-diagnostics" -d "Enables or disables color diagnostics when printing to a TTY. By default, color diagnostics are enabled when connected to a TTY and disabled otherwise." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -l "no-color-diagnostics" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -l "disable-sandbox" -d "Disable using the sandbox when executing subprocesses." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -l "netrc" -d "Use netrc file even in cases where other credential stores are preferred." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -l "enable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -l "disable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -l "netrc-file" -d "Specify the netrc file path." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -l "enable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -l "disable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -l "resolver-fingerprint-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -l "resolver-signing-entity-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -l "enable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -l "disable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -l "enable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -l "disable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -o "force-resolved-versions" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -o "disable-automatic-resolution" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -o "only-use-versions-from-resolved-file" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -l "skip-update" -d "Skip updating dependencies from their remote during a resolution." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -l "disable-scm-to-registry-transformation" -d "Disable source control to registry transformation." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -l "use-registry-identity-for-scm" -d "Look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -l "replace-scm-with-registry" -d "Look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -l "default-registry-url" -d "Default registry URL to use, instead of the registries.json configuration file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -s "c" -l "configuration" -d "Build with configuration" -xa "debug release" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -o "Xcc" -d "Pass flag through to all C compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -o "Xswiftc" -d "Pass flag through to all Swift compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -o "Xlinker" -d "Pass flag through to all linker invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -o "Xcxx" -d "Pass flag through to all C++ compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -l "triple" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -l "sdk" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -l "toolchain" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -l "swift-sdk" -d "Filter for selecting a specific Swift SDK to build with." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -l "sanitize" -d "Turn on runtime checks for erroneous behavior" -xa "address thread undefined scudo" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -l "auto-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -l "enable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -l "disable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -l "enable-parseable-module-interfaces" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -s "j" -l "jobs" -d "The number of jobs to spawn in parallel during the build process." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -l "use-integrated-swift-driver" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -l "explicit-target-dependency-import-check" -d "A flag that indicates this build should check whether targets only import their explicitly-declared dependencies." -xa "none warn error" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -l "experimental-explicit-module-build" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -l "build-system" -xa "native swiftbuild xcode" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -o "debug-info-format" -d "The Debug Information Format to use." -xa "dwarf codeview none" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -l "enable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -l "disable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package unedit'" -l "disable-local-rpath" -d "Disable adding ＄ORIGIN/@loader_path to the rpath by default." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -s "v" -l "verbose" -d "Increase verbosity to include informational output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -l "very-verbose" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -l "vv" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -s "q" -l "quiet" -d "Decrease verbosity to only include error output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -l "color-diagnostics" -d "Enables or disables color diagnostics when printing to a TTY. By default, color diagnostics are enabled when connected to a TTY and disabled otherwise." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -l "no-color-diagnostics" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -l "disable-sandbox" -d "Disable using the sandbox when executing subprocesses." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -l "netrc" -d "Use netrc file even in cases where other credential stores are preferred." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -l "enable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -l "disable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -l "netrc-file" -d "Specify the netrc file path." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -l "enable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -l "disable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -l "resolver-fingerprint-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -l "resolver-signing-entity-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -l "enable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -l "disable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -l "enable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -l "disable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -o "force-resolved-versions" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -o "disable-automatic-resolution" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -o "only-use-versions-from-resolved-file" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -l "skip-update" -d "Skip updating dependencies from their remote during a resolution." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -l "disable-scm-to-registry-transformation" -d "Disable source control to registry transformation." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -l "use-registry-identity-for-scm" -d "Look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -l "replace-scm-with-registry" -d "Look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -l "default-registry-url" -d "Default registry URL to use, instead of the registries.json configuration file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -s "c" -l "configuration" -d "Build with configuration" -xa "debug release" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -o "Xcc" -d "Pass flag through to all C compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -o "Xswiftc" -d "Pass flag through to all Swift compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -o "Xlinker" -d "Pass flag through to all linker invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -o "Xcxx" -d "Pass flag through to all C++ compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -l "triple" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -l "sdk" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -l "toolchain" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -l "swift-sdk" -d "Filter for selecting a specific Swift SDK to build with." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -l "sanitize" -d "Turn on runtime checks for erroneous behavior" -xa "address thread undefined scudo" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -l "auto-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -l "enable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -l "disable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -l "enable-parseable-module-interfaces" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -s "j" -l "jobs" -d "The number of jobs to spawn in parallel during the build process." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -l "use-integrated-swift-driver" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -l "explicit-target-dependency-import-check" -d "A flag that indicates this build should check whether targets only import their explicitly-declared dependencies." -xa "none warn error" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -l "experimental-explicit-module-build" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -l "build-system" -xa "native swiftbuild xcode" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -o "debug-info-format" -d "The Debug Information Format to use." -xa "dwarf codeview none" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -l "enable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -l "disable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package config'" -l "disable-local-rpath" -d "Disable adding ＄ORIGIN/@loader_path to the rpath by default." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -s "v" -l "verbose" -d "Increase verbosity to include informational output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -l "very-verbose" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -l "vv" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -s "q" -l "quiet" -d "Decrease verbosity to only include error output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -l "color-diagnostics" -d "Enables or disables color diagnostics when printing to a TTY. By default, color diagnostics are enabled when connected to a TTY and disabled otherwise." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -l "no-color-diagnostics" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -l "disable-sandbox" -d "Disable using the sandbox when executing subprocesses." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -l "netrc" -d "Use netrc file even in cases where other credential stores are preferred." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -l "enable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -l "disable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -l "netrc-file" -d "Specify the netrc file path." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -l "enable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -l "disable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -l "resolver-fingerprint-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -l "resolver-signing-entity-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -l "enable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -l "disable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -l "enable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -l "disable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -o "force-resolved-versions" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -o "disable-automatic-resolution" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -o "only-use-versions-from-resolved-file" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -l "skip-update" -d "Skip updating dependencies from their remote during a resolution." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -l "disable-scm-to-registry-transformation" -d "Disable source control to registry transformation." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -l "use-registry-identity-for-scm" -d "Look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -l "replace-scm-with-registry" -d "Look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -l "default-registry-url" -d "Default registry URL to use, instead of the registries.json configuration file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -s "c" -l "configuration" -d "Build with configuration" -xa "debug release" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -o "Xcc" -d "Pass flag through to all C compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -o "Xswiftc" -d "Pass flag through to all Swift compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -o "Xlinker" -d "Pass flag through to all linker invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -o "Xcxx" -d "Pass flag through to all C++ compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -l "triple" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -l "sdk" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -l "toolchain" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -l "swift-sdk" -d "Filter for selecting a specific Swift SDK to build with." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -l "sanitize" -d "Turn on runtime checks for erroneous behavior" -xa "address thread undefined scudo" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -l "auto-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -l "enable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -l "disable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -l "enable-parseable-module-interfaces" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -s "j" -l "jobs" -d "The number of jobs to spawn in parallel during the build process." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -l "use-integrated-swift-driver" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -l "explicit-target-dependency-import-check" -d "A flag that indicates this build should check whether targets only import their explicitly-declared dependencies." -xa "none warn error" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -l "experimental-explicit-module-build" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -l "build-system" -xa "native swiftbuild xcode" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -o "debug-info-format" -d "The Debug Information Format to use." -xa "dwarf codeview none" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -l "enable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -l "disable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package resolve'" -l "disable-local-rpath" -d "Disable adding ＄ORIGIN/@loader_path to the rpath by default." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -s "v" -l "verbose" -d "Increase verbosity to include informational output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -l "very-verbose" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -l "vv" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -s "q" -l "quiet" -d "Decrease verbosity to only include error output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -l "color-diagnostics" -d "Enables or disables color diagnostics when printing to a TTY. By default, color diagnostics are enabled when connected to a TTY and disabled otherwise." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -l "no-color-diagnostics" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -l "disable-sandbox" -d "Disable using the sandbox when executing subprocesses." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -l "netrc" -d "Use netrc file even in cases where other credential stores are preferred." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -l "enable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -l "disable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -l "netrc-file" -d "Specify the netrc file path." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -l "enable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -l "disable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -l "resolver-fingerprint-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -l "resolver-signing-entity-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -l "enable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -l "disable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -l "enable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -l "disable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -o "force-resolved-versions" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -o "disable-automatic-resolution" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -o "only-use-versions-from-resolved-file" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -l "skip-update" -d "Skip updating dependencies from their remote during a resolution." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -l "disable-scm-to-registry-transformation" -d "Disable source control to registry transformation." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -l "use-registry-identity-for-scm" -d "Look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -l "replace-scm-with-registry" -d "Look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -l "default-registry-url" -d "Default registry URL to use, instead of the registries.json configuration file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -s "c" -l "configuration" -d "Build with configuration" -xa "debug release" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -o "Xcc" -d "Pass flag through to all C compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -o "Xswiftc" -d "Pass flag through to all Swift compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -o "Xlinker" -d "Pass flag through to all linker invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -o "Xcxx" -d "Pass flag through to all C++ compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -l "triple" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -l "sdk" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -l "toolchain" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -l "swift-sdk" -d "Filter for selecting a specific Swift SDK to build with." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -l "sanitize" -d "Turn on runtime checks for erroneous behavior" -xa "address thread undefined scudo" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -l "auto-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -l "enable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -l "disable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -l "enable-parseable-module-interfaces" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -s "j" -l "jobs" -d "The number of jobs to spawn in parallel during the build process." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -l "use-integrated-swift-driver" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -l "explicit-target-dependency-import-check" -d "A flag that indicates this build should check whether targets only import their explicitly-declared dependencies." -xa "none warn error" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -l "experimental-explicit-module-build" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -l "build-system" -xa "native swiftbuild xcode" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -o "debug-info-format" -d "The Debug Information Format to use." -xa "dwarf codeview none" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -l "enable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -l "disable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-dependencies'" -l "disable-local-rpath" -d "Disable adding ＄ORIGIN/@loader_path to the rpath by default." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -s "v" -l "verbose" -d "Increase verbosity to include informational output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -l "very-verbose" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -l "vv" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -s "q" -l "quiet" -d "Decrease verbosity to only include error output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -l "color-diagnostics" -d "Enables or disables color diagnostics when printing to a TTY. By default, color diagnostics are enabled when connected to a TTY and disabled otherwise." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -l "no-color-diagnostics" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -l "disable-sandbox" -d "Disable using the sandbox when executing subprocesses." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -l "netrc" -d "Use netrc file even in cases where other credential stores are preferred." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -l "enable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -l "disable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -l "netrc-file" -d "Specify the netrc file path." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -l "enable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -l "disable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -l "resolver-fingerprint-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -l "resolver-signing-entity-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -l "enable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -l "disable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -l "enable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -l "disable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -o "force-resolved-versions" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -o "disable-automatic-resolution" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -o "only-use-versions-from-resolved-file" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -l "skip-update" -d "Skip updating dependencies from their remote during a resolution." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -l "disable-scm-to-registry-transformation" -d "Disable source control to registry transformation." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -l "use-registry-identity-for-scm" -d "Look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -l "replace-scm-with-registry" -d "Look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -l "default-registry-url" -d "Default registry URL to use, instead of the registries.json configuration file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -s "c" -l "configuration" -d "Build with configuration" -xa "debug release" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -o "Xcc" -d "Pass flag through to all C compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -o "Xswiftc" -d "Pass flag through to all Swift compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -o "Xlinker" -d "Pass flag through to all linker invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -o "Xcxx" -d "Pass flag through to all C++ compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -l "triple" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -l "sdk" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -l "toolchain" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -l "swift-sdk" -d "Filter for selecting a specific Swift SDK to build with." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -l "sanitize" -d "Turn on runtime checks for erroneous behavior" -xa "address thread undefined scudo" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -l "auto-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -l "enable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -l "disable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -l "enable-parseable-module-interfaces" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -s "j" -l "jobs" -d "The number of jobs to spawn in parallel during the build process." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -l "use-integrated-swift-driver" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -l "explicit-target-dependency-import-check" -d "A flag that indicates this build should check whether targets only import their explicitly-declared dependencies." -xa "none warn error" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -l "experimental-explicit-module-build" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -l "build-system" -xa "native swiftbuild xcode" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -o "debug-info-format" -d "The Debug Information Format to use." -xa "dwarf codeview none" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -l "enable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -l "disable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package show-executables'" -l "disable-local-rpath" -d "Disable adding ＄ORIGIN/@loader_path to the rpath by default." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -s "v" -l "verbose" -d "Increase verbosity to include informational output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -l "very-verbose" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -l "vv" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -s "q" -l "quiet" -d "Decrease verbosity to only include error output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -l "color-diagnostics" -d "Enables or disables color diagnostics when printing to a TTY. By default, color diagnostics are enabled when connected to a TTY and disabled otherwise." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -l "no-color-diagnostics" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -l "disable-sandbox" -d "Disable using the sandbox when executing subprocesses." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -l "netrc" -d "Use netrc file even in cases where other credential stores are preferred." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -l "enable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -l "disable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -l "netrc-file" -d "Specify the netrc file path." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -l "enable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -l "disable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -l "resolver-fingerprint-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -l "resolver-signing-entity-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -l "enable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -l "disable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -l "enable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -l "disable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -o "force-resolved-versions" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -o "disable-automatic-resolution" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -o "only-use-versions-from-resolved-file" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -l "skip-update" -d "Skip updating dependencies from their remote during a resolution." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -l "disable-scm-to-registry-transformation" -d "Disable source control to registry transformation." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -l "use-registry-identity-for-scm" -d "Look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -l "replace-scm-with-registry" -d "Look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -l "default-registry-url" -d "Default registry URL to use, instead of the registries.json configuration file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -s "c" -l "configuration" -d "Build with configuration" -xa "debug release" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -o "Xcc" -d "Pass flag through to all C compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -o "Xswiftc" -d "Pass flag through to all Swift compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -o "Xlinker" -d "Pass flag through to all linker invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -o "Xcxx" -d "Pass flag through to all C++ compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -l "triple" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -l "sdk" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -l "toolchain" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -l "swift-sdk" -d "Filter for selecting a specific Swift SDK to build with." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -l "sanitize" -d "Turn on runtime checks for erroneous behavior" -xa "address thread undefined scudo" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -l "auto-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -l "enable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -l "disable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -l "enable-parseable-module-interfaces" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -s "j" -l "jobs" -d "The number of jobs to spawn in parallel during the build process." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -l "use-integrated-swift-driver" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -l "explicit-target-dependency-import-check" -d "A flag that indicates this build should check whether targets only import their explicitly-declared dependencies." -xa "none warn error" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -l "experimental-explicit-module-build" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -l "build-system" -xa "native swiftbuild xcode" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -o "debug-info-format" -d "The Debug Information Format to use." -xa "dwarf codeview none" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -l "enable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -l "disable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package tools-version'" -l "disable-local-rpath" -d "Disable adding ＄ORIGIN/@loader_path to the rpath by default." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -s "v" -l "verbose" -d "Increase verbosity to include informational output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -l "very-verbose" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -l "vv" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -s "q" -l "quiet" -d "Decrease verbosity to only include error output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -l "color-diagnostics" -d "Enables or disables color diagnostics when printing to a TTY. By default, color diagnostics are enabled when connected to a TTY and disabled otherwise." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -l "no-color-diagnostics" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -l "disable-sandbox" -d "Disable using the sandbox when executing subprocesses." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -l "netrc" -d "Use netrc file even in cases where other credential stores are preferred." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -l "enable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -l "disable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -l "netrc-file" -d "Specify the netrc file path." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -l "enable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -l "disable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -l "resolver-fingerprint-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -l "resolver-signing-entity-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -l "enable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -l "disable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -l "enable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -l "disable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -o "force-resolved-versions" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -o "disable-automatic-resolution" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -o "only-use-versions-from-resolved-file" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -l "skip-update" -d "Skip updating dependencies from their remote during a resolution." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -l "disable-scm-to-registry-transformation" -d "Disable source control to registry transformation." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -l "use-registry-identity-for-scm" -d "Look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -l "replace-scm-with-registry" -d "Look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -l "default-registry-url" -d "Default registry URL to use, instead of the registries.json configuration file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -s "c" -l "configuration" -d "Build with configuration" -xa "debug release" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -o "Xcc" -d "Pass flag through to all C compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -o "Xswiftc" -d "Pass flag through to all Swift compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -o "Xlinker" -d "Pass flag through to all linker invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -o "Xcxx" -d "Pass flag through to all C++ compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -l "triple" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -l "sdk" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -l "toolchain" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -l "swift-sdk" -d "Filter for selecting a specific Swift SDK to build with." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -l "sanitize" -d "Turn on runtime checks for erroneous behavior" -xa "address thread undefined scudo" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -l "auto-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -l "enable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -l "disable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -l "enable-parseable-module-interfaces" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -s "j" -l "jobs" -d "The number of jobs to spawn in parallel during the build process." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -l "use-integrated-swift-driver" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -l "explicit-target-dependency-import-check" -d "A flag that indicates this build should check whether targets only import their explicitly-declared dependencies." -xa "none warn error" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -l "experimental-explicit-module-build" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -l "build-system" -xa "native swiftbuild xcode" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -o "debug-info-format" -d "The Debug Information Format to use." -xa "dwarf codeview none" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -l "enable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -l "disable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package compute-checksum'" -l "disable-local-rpath" -d "Disable adding ＄ORIGIN/@loader_path to the rpath by default." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -s "v" -l "verbose" -d "Increase verbosity to include informational output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -l "very-verbose" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -l "vv" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -s "q" -l "quiet" -d "Decrease verbosity to only include error output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -l "color-diagnostics" -d "Enables or disables color diagnostics when printing to a TTY. By default, color diagnostics are enabled when connected to a TTY and disabled otherwise." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -l "no-color-diagnostics" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -l "disable-sandbox" -d "Disable using the sandbox when executing subprocesses." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -l "netrc" -d "Use netrc file even in cases where other credential stores are preferred." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -l "enable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -l "disable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -l "netrc-file" -d "Specify the netrc file path." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -l "enable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -l "disable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -l "resolver-fingerprint-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -l "resolver-signing-entity-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -l "enable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -l "disable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -l "enable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -l "disable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -o "force-resolved-versions" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -o "disable-automatic-resolution" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -o "only-use-versions-from-resolved-file" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -l "skip-update" -d "Skip updating dependencies from their remote during a resolution." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -l "disable-scm-to-registry-transformation" -d "Disable source control to registry transformation." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -l "use-registry-identity-for-scm" -d "Look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -l "replace-scm-with-registry" -d "Look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -l "default-registry-url" -d "Default registry URL to use, instead of the registries.json configuration file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -s "c" -l "configuration" -d "Build with configuration" -xa "debug release" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -o "Xcc" -d "Pass flag through to all C compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -o "Xswiftc" -d "Pass flag through to all Swift compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -o "Xlinker" -d "Pass flag through to all linker invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -o "Xcxx" -d "Pass flag through to all C++ compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -l "triple" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -l "sdk" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -l "toolchain" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -l "swift-sdk" -d "Filter for selecting a specific Swift SDK to build with." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -l "sanitize" -d "Turn on runtime checks for erroneous behavior" -xa "address thread undefined scudo" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -l "auto-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -l "enable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -l "disable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -l "enable-parseable-module-interfaces" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -s "j" -l "jobs" -d "The number of jobs to spawn in parallel during the build process." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -l "use-integrated-swift-driver" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -l "explicit-target-dependency-import-check" -d "A flag that indicates this build should check whether targets only import their explicitly-declared dependencies." -xa "none warn error" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -l "experimental-explicit-module-build" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -l "build-system" -xa "native swiftbuild xcode" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -o "debug-info-format" -d "The Debug Information Format to use." -xa "dwarf codeview none" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -l "enable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -l "disable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package archive-source'" -l "disable-local-rpath" -d "Disable adding ＄ORIGIN/@loader_path to the rpath by default." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -s "v" -l "verbose" -d "Increase verbosity to include informational output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -l "very-verbose" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -l "vv" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -s "q" -l "quiet" -d "Decrease verbosity to only include error output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -l "color-diagnostics" -d "Enables or disables color diagnostics when printing to a TTY. By default, color diagnostics are enabled when connected to a TTY and disabled otherwise." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -l "no-color-diagnostics" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -l "disable-sandbox" -d "Disable using the sandbox when executing subprocesses." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -l "netrc" -d "Use netrc file even in cases where other credential stores are preferred." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -l "enable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -l "disable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -l "netrc-file" -d "Specify the netrc file path." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -l "enable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -l "disable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -l "resolver-fingerprint-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -l "resolver-signing-entity-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -l "enable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -l "disable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -l "enable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -l "disable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -o "force-resolved-versions" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -o "disable-automatic-resolution" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -o "only-use-versions-from-resolved-file" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -l "skip-update" -d "Skip updating dependencies from their remote during a resolution." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -l "disable-scm-to-registry-transformation" -d "Disable source control to registry transformation." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -l "use-registry-identity-for-scm" -d "Look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -l "replace-scm-with-registry" -d "Look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -l "default-registry-url" -d "Default registry URL to use, instead of the registries.json configuration file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -s "c" -l "configuration" -d "Build with configuration" -xa "debug release" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -o "Xcc" -d "Pass flag through to all C compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -o "Xswiftc" -d "Pass flag through to all Swift compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -o "Xlinker" -d "Pass flag through to all linker invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -o "Xcxx" -d "Pass flag through to all C++ compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -l "triple" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -l "sdk" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -l "toolchain" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -l "swift-sdk" -d "Filter for selecting a specific Swift SDK to build with." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -l "sanitize" -d "Turn on runtime checks for erroneous behavior" -xa "address thread undefined scudo" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -l "auto-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -l "enable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -l "disable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -l "enable-parseable-module-interfaces" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -s "j" -l "jobs" -d "The number of jobs to spawn in parallel during the build process." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -l "use-integrated-swift-driver" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -l "explicit-target-dependency-import-check" -d "A flag that indicates this build should check whether targets only import their explicitly-declared dependencies." -xa "none warn error" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -l "experimental-explicit-module-build" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -l "build-system" -xa "native swiftbuild xcode" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -o "debug-info-format" -d "The Debug Information Format to use." -xa "dwarf codeview none" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -l "enable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -l "disable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package completion-tool'" -l "disable-local-rpath" -d "Disable adding ＄ORIGIN/@loader_path to the rpath by default." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -s "v" -l "verbose" -d "Increase verbosity to include informational output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -l "very-verbose" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -l "vv" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -s "q" -l "quiet" -d "Decrease verbosity to only include error output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -l "color-diagnostics" -d "Enables or disables color diagnostics when printing to a TTY. By default, color diagnostics are enabled when connected to a TTY and disabled otherwise." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -l "no-color-diagnostics" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -l "disable-sandbox" -d "Disable using the sandbox when executing subprocesses." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -l "netrc" -d "Use netrc file even in cases where other credential stores are preferred." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -l "enable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -l "disable-netrc" -d "Load credentials from a netrc file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -l "netrc-file" -d "Specify the netrc file path." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -l "enable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -l "disable-keychain" -d "Search credentials in macOS keychain." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -l "resolver-fingerprint-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -l "resolver-signing-entity-checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -l "enable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -l "disable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -l "enable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -l "disable-prefetching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -o "force-resolved-versions" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -o "disable-automatic-resolution" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -o "only-use-versions-from-resolved-file" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -l "skip-update" -d "Skip updating dependencies from their remote during a resolution." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -l "disable-scm-to-registry-transformation" -d "Disable source control to registry transformation." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -l "use-registry-identity-for-scm" -d "Look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -l "replace-scm-with-registry" -d "Look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -l "default-registry-url" -d "Default registry URL to use, instead of the registries.json configuration file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -s "c" -l "configuration" -d "Build with configuration" -xa "debug release" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -o "Xcc" -d "Pass flag through to all C compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -o "Xswiftc" -d "Pass flag through to all Swift compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -o "Xlinker" -d "Pass flag through to all linker invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -o "Xcxx" -d "Pass flag through to all C++ compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -l "triple" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -l "sdk" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -l "toolchain" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -l "swift-sdk" -d "Filter for selecting a specific Swift SDK to build with." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -l "sanitize" -d "Turn on runtime checks for erroneous behavior" -xa "address thread undefined scudo" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -l "auto-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -l "enable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -l "disable-index-store" -d "Enable or disable indexing-while-building feature." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -l "enable-parseable-module-interfaces" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -s "j" -l "jobs" -d "The number of jobs to spawn in parallel during the build process." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -l "use-integrated-swift-driver" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -l "explicit-target-dependency-import-check" -d "A flag that indicates this build should check whether targets only import their explicitly-declared dependencies." -xa "none warn error" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -l "experimental-explicit-module-build" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -l "build-system" -xa "native swiftbuild xcode" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -o "debug-info-format" -d "The Debug Information Format to use." -xa "dwarf codeview none" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -l "enable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -l "disable-dead-strip" -d "Disable/enable dead code stripping by the linker." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'package plugin'" -l "disable-local-rpath" -d "Disable adding ＄ORIGIN/@loader_path to the rpath by default." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -s "v" -l "verbose" -d "Increase verbosity to include informational output." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "very-verbose" -d "Increase verbosity to include debug output." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -s "q" -l "quiet" -d "Decrease verbosity to only include error output." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "color-diagnostics" -d "Enables or disables color diagnostics when printing to a TTY. \nBy default, color diagnostics are enabled when connected to a TTY and disabled otherwise." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "package-path" -d "Specify the package path to operate on (default current directory). This changes the working directory before any other operation." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "cache-path" -d "Specify the shared cache directory path." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "config-path" -d "Specify the shared configuration directory path." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "security-path" -d "Specify the shared security directory path." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "scratch-path" -d "Specify a custom scratch directory path. (default .build)" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "swift-sdks-path" -d "Path to the directory containing installed Swift SDKs." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "toolset" -d "Specify a toolset JSON file to use when building for the target platform. Use the option multiple times to specify more than one toolset. Toolsets will be merged in the order they're specified into a single final toolset for the current build." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "pkg-config-path" -d "Specify alternative path to search for pkg-config `.pc` files. Use the option multiple times to specify more than one path." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "enable-dependency-cache" -d "Use a shared cache when fetching dependencies." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "disable-dependency-cache" -d "Use a shared cache when fetching dependencies." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "enable-build-manifest-caching" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "disable-build-manifest-caching" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "manifest-cache" -d "Caching mode of Package.swift manifests. Valid values are: (shared: shared cache, local: package's build directory, none: disabled)" -xa "shared local none" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "enable-experimental-prebuilts" -d "Whether to use prebuilt swift-syntax libraries for macros." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "disable-experimental-prebuilts" -d "Whether to use prebuilt swift-syntax libraries for macros." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "disable-sandbox" -d "Disable using the sandbox when executing subprocesses." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "netrc" -d "Use netrc file even in cases where other credential stores are preferred." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "enable-netrc" -d "Load credentials from a netrc file." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "disable-netrc" -d "Load credentials from a netrc file." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "netrc-file" -d "Specify the netrc file path." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "enable-keychain" -d "Search credentials in macOS keychain." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "disable-keychain" -d "Search credentials in macOS keychain." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "resolver-fingerprint-checking" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "resolver-signing-entity-checking" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "enable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "disable-signature-validation" -d "Validate signature of a signed package release downloaded from registry." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "enable-prefetching" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "disable-prefetching" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "force-resolved-versions" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "disable-automatic-resolution" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "only-use-versions-from-resolved-file" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "skip-update" -d "Skip updating dependencies from their remote during a resolution." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "disable-scm-to-registry-transformation" -d "Disable source control to registry transformation." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "use-registry-identity-for-scm" -d "Look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "replace-scm-with-registry" -d "Look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "default-registry-url" -d "Default registry URL to use, instead of the registries.json configuration file." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -s "c" -l "configuration" -d "Build with configuration" -xa "debug release" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "Xcc" -d "Pass flag through to all C compiler invocations." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "Xswiftc" -d "Pass flag through to all Swift compiler invocations." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "Xlinker" -d "Pass flag through to all linker invocations." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "Xcxx" -d "Pass flag through to all C++ compiler invocations." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "triple" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "sdk" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "toolchain" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "swift-sdk" -d "Filter for selecting a specific Swift SDK to build with." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "sanitize" -d "Turn on runtime checks for erroneous behavior, possible values: address, thread, undefined, scudo." -xa "address thread undefined scudo" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "auto-index-store" -d "Enable or disable indexing-while-building feature." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "enable-index-store" -d "Enable or disable indexing-while-building feature." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "disable-index-store" -d "Enable or disable indexing-while-building feature." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "enable-parseable-module-interfaces" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -s "j" -l "jobs" -d "The number of jobs to spawn in parallel during the build process." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "use-integrated-swift-driver" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "explicit-target-dependency-import-check" -d "A flag that indicates this build should check whether targets only import their explicitly-declared dependencies." -xa "none warn error" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "experimental-explicit-module-build" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "build-system" -xa "native swiftbuild xcode" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -o "debug-info-format" -d "The Debug Information Format to use." -xa "dwarf codeview none" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "enable-dead-strip" -d "Disable/enable dead code stripping by the linker." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "disable-dead-strip" -d "Disable/enable dead code stripping by the linker." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "disable-local-rpath" -d "Disable adding ＄ORIGIN/@loader_path to the rpath by default." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "repl" -d "Launch Swift REPL for the package." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "debugger" -d "Launch the executable in a debugger session." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "run" -d "Launch the executable with the provided arguments." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "skip-build" -d "Skip building the executable product." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "build-tests" -d "Build both source and test targets." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "traits" -d "Enables the passed traits of the package. Multiple traits can be specified by providing a comma separated list e.g. `--traits Trait1,Trait2`. When enabling specific traits the defaults traits need to explictily enabled as well by passing `defaults` to this command." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "enable-all-traits" -d "Enables all traits of the package." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "disable-default-traits" -d "Disables all default traits of the package." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -l "version" -d "Show the version." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'run'" -s "h" -o "help" -d "Show help information." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "package-path" -d "Specify the package path to operate on (default current directory). This changes the working directory before any other operation." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "cache-path" -d "Specify the shared cache directory path." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "config-path" -d "Specify the shared configuration directory path." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "security-path" -d "Specify the shared security directory path." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "scratch-path" -d "Specify a custom scratch directory path. (default .build)" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "swift-sdks-path" -d "Path to the directory containing installed Swift SDKs." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "toolset" -d "Specify a toolset JSON file to use when building for the target platform. Use the option multiple times to specify more than one toolset. Toolsets will be merged in the order they're specified into a single final toolset for the current build." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "pkg-config-path" -d "Specify alternative path to search for pkg-config `.pc` files. Use the option multiple times to specify more than one path." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "enable-dependency-cache" -d "Use a shared cache when fetching dependencies. (default: --enable-dependency-cache)" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "disable-dependency-cache" -d "Use a shared cache when fetching dependencies. (default: --enable-dependency-cache)" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "enable-build-manifest-caching" -d "(default: --enable-build-manifest-caching)" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "disable-build-manifest-caching" -d "(default: --enable-build-manifest-caching)" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "manifest-cache" -d "Caching mode of Package.swift manifests. Valid values are: (shared: shared cache, local: package's build directory, none: disabled) (default: shared)" -xa "shared local none" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "enable-experimental-prebuilts" -d "Whether to use prebuilt swift-syntax libraries for macros. (default: --enable-experimental-prebuilts)" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "disable-experimental-prebuilts" -d "Whether to use prebuilt swift-syntax libraries for macros. (default: --enable-experimental-prebuilts)" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -s "v" -l "verbose" -d "Increase verbosity to include informational output." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "very-verbose" -d "Increase verbosity to include debug output." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "vv" -d "Increase verbosity to include debug output." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -s "q" -l "quiet" -d "Decrease verbosity to only include error output." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "color-diagnostics" -d "Enables or disables color diagnostics when printing to a TTY.  By default, color diagnostics are enabled when connected to a TTY and disabled otherwise. (default: --color-diagnostics)" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "no-color-diagnostics" -d "Enables or disables color diagnostics when printing to a TTY.  By default, color diagnostics are enabled when connected to a TTY and disabled otherwise. (default: --color-diagnostics)" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "disable-sandbox" -d "Disable using the sandbox when executing subprocesses." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "netrc" -d "Use netrc file even in cases where other credential stores are preferred." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "enable-netrc" -d "Load credentials from a netrc file. (default: --enable-netrc)" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "disable-netrc" -d "Load credentials from a netrc file. (default: --enable-netrc)" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "netrc-file" -d "Specify the netrc file path." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "enable-keychain" -d "Search credentials in macOS keychain. (default: --enable-keychain)" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "disable-keychain" -d "Search credentials in macOS keychain. (default: --enable-keychain)" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "resolver-fingerprint-checking" -d "(default: strict)" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "resolver-signing-entity-checking" -d "(default: warn)" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "enable-signature-validation" -d "Validate signature of a signed package release downloaded from registry. (default: --enable-signature-validation)" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "disable-signature-validation" -d "Validate signature of a signed package release downloaded from registry. (default: --enable-signature-validation)" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "enable-prefetching" -d "(default: --enable-prefetching)" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "disable-prefetching" -d "(default: --enable-prefetching)" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "force-resolved-versions" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "disable-automatic-resolution" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "only-use-versions-from-resolved-file" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "skip-update" -d "Skip updating dependencies from their remote during a resolution." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "disable-scm-to-registry-transformation" -d "Disable source control to registry transformation. (default: --disable-scm-to-registry-transformation)" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "use-registry-identity-for-scm" -d "Look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "replace-scm-with-registry" -d "Look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "default-registry-url" -d "Default registry URL to use, instead of the registries.json configuration file." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -s "c" -l "configuration" -d "Build with configuration (values: debug, release)" -xa "debug release" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "Xcc" -d "Pass flag through to all C compiler invocations." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "Xswiftc" -d "Pass flag through to all Swift compiler invocations." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "Xlinker" -d "Pass flag through to all linker invocations." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "Xcxx" -d "Pass flag through to all C++ compiler invocations." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "triple" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "sdk" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "toolchain" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "swift-sdk" -d "Filter for selecting a specific Swift SDK to build with." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "sanitize" -d "Turn on runtime checks for erroneous behavior, possible values: address, thread, undefined, scudo. (values: address, thread, undefined, scudo)" -xa "address thread undefined scudo" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "auto-index-store" -d "Enable or disable indexing-while-building feature. (default: --auto-index-store)" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "enable-index-store" -d "Enable or disable indexing-while-building feature. (default: --auto-index-store)" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "disable-index-store" -d "Enable or disable indexing-while-building feature. (default: --auto-index-store)" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "enable-parseable-module-interfaces" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -s "j" -l "jobs" -d "The number of jobs to spawn in parallel during the build process." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "use-integrated-swift-driver" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "explicit-target-dependency-import-check" -d "A flag that indicates this build should check whether targets only import their explicitly-declared dependencies. (values: none, warn, error; default: none)" -xa "none warn error" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "experimental-explicit-module-build" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "build-system" -d "(values: native, swiftbuild, xcode; default: native)" -xa "native swiftbuild xcode" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "debug-info-format" -d "The Debug Information Format to use. (values: dwarf, codeview, none; default: dwarf)" -xa "dwarf codeview none" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "enable-dead-strip" -d "Disable/enable dead code stripping by the linker. (default: --enable-dead-strip)" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "disable-dead-strip" -d "Disable/enable dead code stripping by the linker. (default: --enable-dead-strip)" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "disable-local-rpath" -d "Disable adding ＄ORIGIN/@loader_path to the rpath by default." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "skip-build" -d "Skip building the test target." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "enable-xctest" -d "Enable support for XCTest." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "disable-xctest" -d "Enable support for XCTest." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "enable-swift-testing" -d "Enable support for Swift Testing." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "disable-swift-testing" -d "Enable support for Swift Testing." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "attachments-path" -d "Path where attachments should be written (Swift Testing only). This path must be an existing directory the current user can write to. If not specified, any attachments created during testing are discarded." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "parallel" -d "Run the tests in parallel. (default: --no-parallel)" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "no-parallel" -d "Run the tests in parallel. (default: --no-parallel)" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "num-workers" -d "Number of tests to execute in parallel." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -s "l" -l "list-tests" -d "Lists test methods in specifier format." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "show-codecov-path" -d "Print the path of the exported code coverage JSON file." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "show-code-coverage-path" -d "Print the path of the exported code coverage JSON file." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "show-coverage-path" -d "Print the path of the exported code coverage JSON file." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -s "s" -l "specifier" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "filter" -d "Run test cases that match a regular expression, Format: '<test-target>.<test-case>' or '<test-target>.<test-case>/<test>'." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "skip" -d "Skip test cases that match a regular expression, Example: '--skip PerformanceTests'." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "xunit-output" -d "Path where the xUnit xml file should be generated." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "enable-testable-imports" -d "Enable or disable testable imports. Enabled by default. (default: --enable-testable-imports)" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "disable-testable-imports" -d "Enable or disable testable imports. Enabled by default. (default: --enable-testable-imports)" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "enable-code-coverage" -d "Enable code coverage. (default: --disable-code-coverage)" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "disable-code-coverage" -d "Enable code coverage. (default: --disable-code-coverage)" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "traits" -d "Enables the passed traits of the package. Multiple traits can be specified by providing a comma separated list e.g. `--traits Trait1,Trait2`. When enabling specific traits the defaults traits need to explictily enabled as well by passing `defaults` to this command." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "enable-all-traits" -d "Enables all traits of the package." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "disable-default-traits" -d "Disables all default traits of the package." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -l "version" -d "Show the version." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'test'" -s "h" -l "help" -d "Show help information." # global
complete -f -c "swift" -n "__fish_seen_subcommand_from 'test'" -a "list" -d "Lists test methods in specifier format" # sub
complete -f -c "swift" -n "__fish_seen_subcommand_from 'test'" -a "last" # sub
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "package-path" -d "Specify the package path to operate on (default current directory). This changes the working directory before any other operation." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "cache-path" -d "Specify the shared cache directory path." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "config-path" -d "Specify the shared configuration directory path." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "security-path" -d "Specify the shared security directory path." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "scratch-path" -d "Specify a custom scratch directory path. (default .build)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "swift-sdks-path" -d "Path to the directory containing installed Swift SDKs." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "toolset" -d "Specify a toolset JSON file to use when building for the target platform. Use the option multiple times to specify more than one toolset. Toolsets will be merged in the order they're specified into a single final toolset for the current build." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "pkg-config-path" -d "Specify alternative path to search for pkg-config `.pc` files. Use the option multiple times to specify more than one path." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "enable-dependency-cache" -d "Use a shared cache when fetching dependencies. (default: --enable-dependency-cache)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "disable-dependency-cache" -d "Use a shared cache when fetching dependencies. (default: --enable-dependency-cache)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "enable-build-manifest-caching" -d "(default: --enable-build-manifest-caching)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "disable-build-manifest-caching" -d "(default: --enable-build-manifest-caching)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "manifest-cache" -d "Caching mode of Package.swift manifests. Valid values are: (shared: shared cache, local: package's build directory, none: disabled) (default: shared)" -xa "shared local none" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "enable-experimental-prebuilts" -d "Whether to use prebuilt swift-syntax libraries for macros. (default: --enable-experimental-prebuilts)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "disable-experimental-prebuilts" -d "Whether to use prebuilt swift-syntax libraries for macros. (default: --enable-experimental-prebuilts)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -s "v" -l "verbose" -d "Increase verbosity to include informational output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "very-verbose" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "vv" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -s "q" -l "quiet" -d "Decrease verbosity to only include error output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "color-diagnostics" -d "Enables or disables color diagnostics when printing to a TTY.  By default, color diagnostics are enabled when connected to a TTY and disabled otherwise. (default: --color-diagnostics)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "no-color-diagnostics" -d "Enables or disables color diagnostics when printing to a TTY.  By default, color diagnostics are enabled when connected to a TTY and disabled otherwise. (default: --color-diagnostics)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "disable-sandbox" -d "Disable using the sandbox when executing subprocesses." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "netrc" -d "Use netrc file even in cases where other credential stores are preferred." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "enable-netrc" -d "Load credentials from a netrc file. (default: --enable-netrc)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "disable-netrc" -d "Load credentials from a netrc file. (default: --enable-netrc)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "netrc-file" -d "Specify the netrc file path." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "enable-keychain" -d "Search credentials in macOS keychain. (default: --enable-keychain)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "disable-keychain" -d "Search credentials in macOS keychain. (default: --enable-keychain)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "resolver-fingerprint-checking" -d "(default: strict)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "resolver-signing-entity-checking" -d "(default: warn)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "enable-signature-validation" -d "Validate signature of a signed package release downloaded from registry. (default: --enable-signature-validation)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "disable-signature-validation" -d "Validate signature of a signed package release downloaded from registry. (default: --enable-signature-validation)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "enable-prefetching" -d "(default: --enable-prefetching)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "disable-prefetching" -d "(default: --enable-prefetching)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "force-resolved-versions" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "disable-automatic-resolution" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "only-use-versions-from-resolved-file" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "skip-update" -d "Skip updating dependencies from their remote during a resolution." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "disable-scm-to-registry-transformation" -d "Disable source control to registry transformation. (default: --disable-scm-to-registry-transformation)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "use-registry-identity-for-scm" -d "Look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "replace-scm-with-registry" -d "Look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "default-registry-url" -d "Default registry URL to use, instead of the registries.json configuration file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -s "c" -l "configuration" -d "Build with configuration (values: debug, release)" -xa "debug release" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "Xcc" -d "Pass flag through to all C compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "Xswiftc" -d "Pass flag through to all Swift compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "Xlinker" -d "Pass flag through to all linker invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "Xcxx" -d "Pass flag through to all C++ compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "triple" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "sdk" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "toolchain" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "swift-sdk" -d "Filter for selecting a specific Swift SDK to build with." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "sanitize" -d "Turn on runtime checks for erroneous behavior, possible values: address, thread, undefined, scudo. (values: address, thread, undefined, scudo)" -xa "address thread undefined scudo" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "auto-index-store" -d "Enable or disable indexing-while-building feature. (default: --auto-index-store)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "enable-index-store" -d "Enable or disable indexing-while-building feature. (default: --auto-index-store)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "disable-index-store" -d "Enable or disable indexing-while-building feature. (default: --auto-index-store)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "enable-parseable-module-interfaces" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -s "j" -l "jobs" -d "The number of jobs to spawn in parallel during the build process." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "use-integrated-swift-driver" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "explicit-target-dependency-import-check" -d "A flag that indicates this build should check whether targets only import their explicitly-declared dependencies. (values: none, warn, error; default: none)" -xa "none warn error" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "experimental-explicit-module-build" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "build-system" -d "(values: native, swiftbuild, xcode; default: native)" -xa "native swiftbuild xcode" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "debug-info-format" -d "The Debug Information Format to use. (values: dwarf, codeview, none; default: dwarf)" -xa "dwarf codeview none" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "enable-dead-strip" -d "Disable/enable dead code stripping by the linker. (default: --enable-dead-strip)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "disable-dead-strip" -d "Disable/enable dead code stripping by the linker. (default: --enable-dead-strip)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "disable-local-rpath" -d "Disable adding ＄ORIGIN/@loader_path to the rpath by default." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "skip-build" -d "Skip building the test target." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "enable-xctest" -d "Enable support for XCTest." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "disable-xctest" -d "Enable support for XCTest." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "enable-swift-testing" -d "Enable support for Swift Testing." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "disable-swift-testing" -d "Enable support for Swift Testing." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "attachments-path" -d "Path where attachments should be written (Swift Testing only). This path must be an existing directory the current user can write to. If not specified, any attachments created during testing are discarded." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "parallel" -d "Run the tests in parallel. (default: --no-parallel)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "no-parallel" -d "Run the tests in parallel. (default: --no-parallel)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "num-workers" -d "Number of tests to execute in parallel." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -s "l" -l "list-tests" -d "Lists test methods in specifier format." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "show-codecov-path" -d "Print the path of the exported code coverage JSON file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "show-code-coverage-path" -d "Print the path of the exported code coverage JSON file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "show-coverage-path" -d "Print the path of the exported code coverage JSON file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -s "s" -l "specifier" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "filter" -d "Run test cases that match a regular expression, Format: '<test-target>.<test-case>' or '<test-target>.<test-case>/<test>'." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "skip" -d "Skip test cases that match a regular expression, Example: '--skip PerformanceTests'." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "xunit-output" -d "Path where the xUnit xml file should be generated." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "enable-testable-imports" -d "Enable or disable testable imports. Enabled by default. (default: --enable-testable-imports)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "disable-testable-imports" -d "Enable or disable testable imports. Enabled by default. (default: --enable-testable-imports)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "enable-code-coverage" -d "Enable code coverage. (default: --disable-code-coverage)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "disable-code-coverage" -d "Enable code coverage. (default: --disable-code-coverage)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "traits" -d "Enables the passed traits of the package. Multiple traits can be specified by providing a comma separated list e.g. `--traits Trait1,Trait2`. When enabling specific traits the defaults traits need to explictily enabled as well by passing `defaults` to this command." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "enable-all-traits" -d "Enables all traits of the package." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test list'" -l "disable-default-traits" -d "Disables all default traits of the package." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "package-path" -d "Specify the package path to operate on (default current directory). This changes the working directory before any other operation." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "cache-path" -d "Specify the shared cache directory path." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "config-path" -d "Specify the shared configuration directory path." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "security-path" -d "Specify the shared security directory path." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "scratch-path" -d "Specify a custom scratch directory path. (default .build)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "swift-sdks-path" -d "Path to the directory containing installed Swift SDKs." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "toolset" -d "Specify a toolset JSON file to use when building for the target platform. Use the option multiple times to specify more than one toolset. Toolsets will be merged in the order they're specified into a single final toolset for the current build." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "pkg-config-path" -d "Specify alternative path to search for pkg-config `.pc` files. Use the option multiple times to specify more than one path." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "enable-dependency-cache" -d "Use a shared cache when fetching dependencies. (default: --enable-dependency-cache)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "disable-dependency-cache" -d "Use a shared cache when fetching dependencies. (default: --enable-dependency-cache)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "enable-build-manifest-caching" -d "(default: --enable-build-manifest-caching)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "disable-build-manifest-caching" -d "(default: --enable-build-manifest-caching)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "manifest-cache" -d "Caching mode of Package.swift manifests. Valid values are: (shared: shared cache, local: package's build directory, none: disabled) (default: shared)" -xa "shared local none" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "enable-experimental-prebuilts" -d "Whether to use prebuilt swift-syntax libraries for macros. (default: --enable-experimental-prebuilts)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "disable-experimental-prebuilts" -d "Whether to use prebuilt swift-syntax libraries for macros. (default: --enable-experimental-prebuilts)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -s "v" -l "verbose" -d "Increase verbosity to include informational output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "very-verbose" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "vv" -d "Increase verbosity to include debug output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -s "q" -l "quiet" -d "Decrease verbosity to only include error output." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "color-diagnostics" -d "Enables or disables color diagnostics when printing to a TTY.  By default, color diagnostics are enabled when connected to a TTY and disabled otherwise. (default: --color-diagnostics)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "no-color-diagnostics" -d "Enables or disables color diagnostics when printing to a TTY.  By default, color diagnostics are enabled when connected to a TTY and disabled otherwise. (default: --color-diagnostics)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "disable-sandbox" -d "Disable using the sandbox when executing subprocesses." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "netrc" -d "Use netrc file even in cases where other credential stores are preferred." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "enable-netrc" -d "Load credentials from a netrc file. (default: --enable-netrc)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "disable-netrc" -d "Load credentials from a netrc file. (default: --enable-netrc)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "netrc-file" -d "Specify the netrc file path." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "enable-keychain" -d "Search credentials in macOS keychain. (default: --enable-keychain)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "disable-keychain" -d "Search credentials in macOS keychain. (default: --enable-keychain)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "resolver-fingerprint-checking" -d "(default: strict)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "resolver-signing-entity-checking" -d "(default: warn)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "enable-signature-validation" -d "Validate signature of a signed package release downloaded from registry. (default: --enable-signature-validation)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "disable-signature-validation" -d "Validate signature of a signed package release downloaded from registry. (default: --enable-signature-validation)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "enable-prefetching" -d "(default: --enable-prefetching)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "disable-prefetching" -d "(default: --enable-prefetching)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "force-resolved-versions" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "disable-automatic-resolution" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "only-use-versions-from-resolved-file" -d "Only use versions from the Package.resolved file and fail resolution if it is out-of-date." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "skip-update" -d "Skip updating dependencies from their remote during a resolution." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "disable-scm-to-registry-transformation" -d "Disable source control to registry transformation. (default: --disable-scm-to-registry-transformation)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "use-registry-identity-for-scm" -d "Look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "replace-scm-with-registry" -d "Look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "default-registry-url" -d "Default registry URL to use, instead of the registries.json configuration file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -s "c" -l "configuration" -d "Build with configuration (values: debug, release)" -xa "debug release" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "Xcc" -d "Pass flag through to all C compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "Xswiftc" -d "Pass flag through to all Swift compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "Xlinker" -d "Pass flag through to all linker invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "Xcxx" -d "Pass flag through to all C++ compiler invocations." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "triple" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "sdk" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "toolchain" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "swift-sdk" -d "Filter for selecting a specific Swift SDK to build with." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "sanitize" -d "Turn on runtime checks for erroneous behavior, possible values: address, thread, undefined, scudo. (values: address, thread, undefined, scudo)" -xa "address thread undefined scudo" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "auto-index-store" -d "Enable or disable indexing-while-building feature. (default: --auto-index-store)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "enable-index-store" -d "Enable or disable indexing-while-building feature. (default: --auto-index-store)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "disable-index-store" -d "Enable or disable indexing-while-building feature. (default: --auto-index-store)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "enable-parseable-module-interfaces" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -s "j" -l "jobs" -d "The number of jobs to spawn in parallel during the build process." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "use-integrated-swift-driver" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "explicit-target-dependency-import-check" -d "A flag that indicates this build should check whether targets only import their explicitly-declared dependencies. (values: none, warn, error; default: none)" -xa "none warn error" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "experimental-explicit-module-build" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "build-system" -d "(values: native, swiftbuild, xcode; default: native)" -xa "native swiftbuild xcode" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "debug-info-format" -d "The Debug Information Format to use. (values: dwarf, codeview, none; default: dwarf)" -xa "dwarf codeview none" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "enable-dead-strip" -d "Disable/enable dead code stripping by the linker. (default: --enable-dead-strip)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "disable-dead-strip" -d "Disable/enable dead code stripping by the linker. (default: --enable-dead-strip)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "disable-local-rpath" -d "Disable adding ＄ORIGIN/@loader_path to the rpath by default." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "skip-build" -d "Skip building the test target." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "enable-xctest" -d "Enable support for XCTest." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "disable-xctest" -d "Enable support for XCTest." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "enable-swift-testing" -d "Enable support for Swift Testing." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "disable-swift-testing" -d "Enable support for Swift Testing." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "attachments-path" -d "Path where attachments should be written (Swift Testing only). This path must be an existing directory the current user can write to. If not specified, any attachments created during testing are discarded." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "parallel" -d "Run the tests in parallel. (default: --no-parallel)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "no-parallel" -d "Run the tests in parallel. (default: --no-parallel)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "num-workers" -d "Number of tests to execute in parallel." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -s "l" -l "list-tests" -d "Lists test methods in specifier format." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "show-codecov-path" -d "Print the path of the exported code coverage JSON file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "show-code-coverage-path" -d "Print the path of the exported code coverage JSON file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "show-coverage-path" -d "Print the path of the exported code coverage JSON file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -s "s" -l "specifier" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "filter" -d "Run test cases that match a regular expression, Format: '<test-target>.<test-case>' or '<test-target>.<test-case>/<test>'." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "skip" -d "Skip test cases that match a regular expression, Example: '--skip PerformanceTests'." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "xunit-output" -d "Path where the xUnit xml file should be generated." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "enable-testable-imports" -d "Enable or disable testable imports. Enabled by default. (default: --enable-testable-imports)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "disable-testable-imports" -d "Enable or disable testable imports. Enabled by default. (default: --enable-testable-imports)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "enable-code-coverage" -d "Enable code coverage. (default: --disable-code-coverage)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "disable-code-coverage" -d "Enable code coverage. (default: --disable-code-coverage)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "traits" -d "Enables the passed traits of the package. Multiple traits can be specified by providing a comma separated list e.g. `--traits Trait1,Trait2`. When enabling specific traits the defaults traits need to explictily enabled as well by passing `defaults` to this command." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "enable-all-traits" -d "Enables all traits of the package." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'test last'" -l "disable-default-traits" -d "Disables all default traits of the package." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "access-notes-path" -d "Specify YAML file to override attributes on Swift declarations in this module" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "allow-non-resilient-access" -d "Ensures all contents are generated besides exportable decls in the binary module, so non-resilient access can be allowed" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "allowable-client" -d "Module names that are allowed to import this module" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "assert-config" -d "Specify the assert_configuration replacement. Possible values are Debug, Release, Unchecked, DisableReplacement." -xa "Debug Release Unchecked DisableReplacement" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "build-id" -d "Specify the build ID argument passed to the linker" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "cache-compile-job" -d "Enable compiler caching" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "cache-disable-replay" -d "Skip loading the compilation result from cache" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "cas-path" -d "Path to CAS" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "cas-plugin-option" -d "Option pass to CAS Plugin" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "cas-plugin-path" -d "Path to CAS Plugin" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "clang-build-session-file" -d "Use the last modification time of <file> as the underlying Clang build session timestamp" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "clang-scanner-module-cache-path" -d "Specifies the Clang dependency scanner module cache path" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "clang-target-variant" -d "Separately set the target we should use for internal Clang instance for the 'zippered' code for macCatalyst" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "clang-target" -d "Separately set the target we should use for internal Clang instance" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "color-diagnostics" -d "Print diagnostics in color" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "compiler-assertions" -d "Enable internal self-checks while compiling" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "continue-building-after-errors" -d "Continue building, even after errors are encountered" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "coverage-prefix-map" -d "Remap source paths in coverage info" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "cxx-interoperability-mode" -d "Enables C++ interoperability; pass 'default' to enable or 'off' to disable" -xa "default off" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "debug-info-format" -d "Specify the debug info format type to either 'dwarf' or 'codeview'" -xa "dwarf codeview" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "debug-info-store-invocation" -d "Emit the compiler invocation in the debug info." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "debug-prefix-map" -d "Remap source paths in debug info" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "default-isolation" -d "Specify the default actor isolation: MainActor or nonisolated. Defaults to nonisolated." -xa "MainActor nonisolated" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "diagnostic-style" -d "The formatting style used when printing diagnostics ('swift' or 'llvm')" -xa "swift llvm" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "disable-actor-data-race-checks" -d "Disable runtime checks for actor data races" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "disable-autolinking-runtime-compatibility-concurrency" -d "Do not use autolinking for the concurrency runtime compatibility library" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "disable-autolinking-runtime-compatibility-dynamic-replacements" -d "Do not use autolinking for the dynamic replacement runtime compatibility library" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "disable-autolinking-runtime-compatibility" -d "Do not use autolinking for runtime compatibility libraries" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "disable-clang-target" -d "Disable a separately specified target triple for Clang instance to use" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "disable-dynamic-actor-isolation" -d "Disable dynamic actor isolation checks" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "disable-experimental-feature" -d "Disable an experimental feature" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "disable-incremental-imports" -d "Disable cross-module incremental build metadata and driver scheduling for Swift modules" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "disable-only-one-dependency-file" -d "Disables incremental build optimization that only produces one dependencies file" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "disable-sandbox" -d "Disable using the sandbox when executing subprocesses" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "disable-upcoming-feature" -d "Disable a feature that will be introduced in an upcoming language version" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "disallow-use-new-driver" -d "Disable using new swift-driver" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "dwarf-version" -d "DWARF debug info version to produce if requested" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -s "D" -o "D" -d "Marks a conditional compilation flag as true" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "embed-tbd-for-module" -d "Embed symbols from the module in the emitted tbd file" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "emit-module-dependencies-path" -d "Emit a discovered dependencies file for the emit-module task to <path>" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "emit-module-serialize-diagnostics-path" -d "Emit a serialized diagnostics file for the emit-module task to <path>" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "enable-actor-data-race-checks" -d "Emit runtime checks for actor data races" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "enable-autolinking-runtime-compatibility-bytecode-layouts" -d "Enable autolinking for the bytecode layouts runtime compatibility library" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "enable-bare-slash-regex" -d "Enable the use of forward slash regular-expression literal syntax" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "enable-builtin-module" -d "Enables the explicit import of the Builtin module" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "enable-deterministic-check" -d "Check compiler output determinism by running it twice" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "enable-experimental-additive-arithmetic-derivation" -d "Enable experimental 'AdditiveArithmetic' derived conformances" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "enable-experimental-concise-pound-file" -d "Enable experimental concise '#file' identifier" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "enable-experimental-feature" -d "Enable an experimental feature" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "enable-experimental-forward-mode-differentiation" -d "Enable experimental forward mode differentiation" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "enable-incremental-imports" -d "Enable cross-module incremental build metadata and driver scheduling for Swift modules" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "enable-library-evolution" -d "Build the module to allow binary-compatible library evolution" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "enable-only-one-dependency-file" -d "Enables incremental build optimization that only produces one dependencies file" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "enable-upcoming-feature" -d "Enable a feature that will be introduced in an upcoming language version" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "enforce-exclusivity" -d "Enforce law of exclusivity" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "executor-factory" -d "Specify the factory to use to create the default executors for Swift Concurrency.  This must be a type conforming to the 'ExecutorFactory' protocol." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "experimental-allow-non-resilient-access" -d "Deprecated; use -allow-non-resilient-access instead" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "experimental-package-bypass-resilience" -d "Deprecated; has no effect" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "experimental-package-cmo-abort-on-deserialization-fail" -d "Abort if a deserialization error is found while package optimization is enabled" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "experimental-package-cmo" -d "Deprecated; use -package-cmo instead" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "explain-module-dependency-detailed" -d "Emit remarks describing every possible dependency path that explains why compilation may depend on a module with a given name." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "explain-module-dependency" -d "Emit remark describing why compilation may depend on a module with a given name." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "explicit-auto-linking" -d "Instead of linker-load directives, have the driver specify all link dependencies on the linker invocation. Requires '-explicit-module-build'." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "export-as" -d "Module name to use when referenced in clients module interfaces" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "external-plugin-path" -d "Add directory to the plugin search path with a plugin server executable" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -s "e" -o "e" -d "Executes a line of code provided on the command line" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "file-compilation-dir" -d "The compilation directory to embed in the debug info. Coverage mapping is not supported yet." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "file-prefix-map" -d "Remap source paths in debug, coverage, and index info" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "framework" -d "Specifies a framework which should be linked against" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "Fsystem" -d "Add directory to system framework search path" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "F" -d "Add directory to framework search path" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "gdwarf-types" -d "Emit full DWARF type info." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "gline-tables-only" -d "Emit minimal debug info for backtraces only" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "gnone" -d "Don't emit debug info" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "g" -d "Emit debug info. This is the preferred setting for debugging with LLDB." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "help" -d "Display available options" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "in-process-plugin-server-path" -d "Path to dynamic library plugin server" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "index-ignore-clang-modules" -d "Avoid indexing clang modules (pcms)" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "index-include-locals" -d "Include local definitions/references in the produced index data." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "index-store-path" -d "Store indexing data to <path>" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "index-unit-output-path" -d "Use <path> as the output path in the produced index data." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "Isystem" -d "Add directory to the system import search path" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "I" -d "Add directory to the import search path" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -s "j" -o "j" -d "Number of commands to execute in parallel" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "libc" -d "libc runtime library to use" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "link-objc-runtime" -d "Deprecated" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "load-pass-plugin" -d "Load LLVM pass plugin from a dynamic shared object file." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "load-plugin-executable" -d "Path to a compiler plugin executable and a comma-separated list of module names where the macro types are declared" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "load-plugin-library" -d "Path to a dynamic library containing compiler plugins such as macros" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "load-resolved-plugin" -d "Path to resolved plugin configuration and a comma-separated list of module names where the macro types are declared. Library path and exectuable path can be empty if not used" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "locale" -d "Choose a language for diagnostic messages" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "localization-path" -d "Path to localized diagnostic messages directory" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -s "L" -o "L" -d "Add directory to library link search path" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -s "l" -o "l" -d "Specifies a library which should be linked against" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "module-abi-name" -d "ABI name to use for the contents of this module" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "module-alias" -d "If a source file imports or references module <alias_name>, the <real_name> is used for the contents of the file" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "module-cache-path" -d "Specifies the module cache path" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "module-link-name" -d "Library to link against when using this module" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "module-name" -d "Name of the module to build" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "no-color-diagnostics" -d "Do not print diagnostics in color" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "no-warnings-as-errors" -d "Treat warnings as warnings" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "nostdimport" -d "Don't search the standard library or toolchain import paths for modules" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "nostdlibimport" -d "Don't search the standard library import path for modules" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "num-threads" -d "Enable multi-threading and specify number of threads" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "Onone" -d "Compile without any optimization" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "Osize" -d "Compile with optimizations and target small code size" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "Ounchecked" -d "Compile with optimizations and remove runtime safety checks" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "O" -d "Compile with optimizations" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "package-cmo" -d "Enable optimization to perform defalut CMO within a package boundary" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "package-name" -d "Name of the package the module belongs to" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "plugin-path" -d "Add directory to the plugin search path" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "prefix-serialized-debugging-options" -d "Apply debug prefix mappings to serialized debug info in Swiftmodule files" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "pretty-print" -d "Pretty-print the output JSON" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "print-educational-notes" -d "Include educational notes in printed diagnostic output, if available" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "print-supported-features" -d "Print information about features supported by the compiler" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "print-target-info" -d "Print target information for the given target <triple>, such as x86_64-apple-macos10.9" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "project-name" -d "Name of the project this module to build belongs to" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "public-module-name" -d "Public facing module name to use in diagnostics and documentation" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "Rabi-inference" -d "Emit a remark when an '@abi' attribute adds an attribute or modifier to the ABI declaration based on its presence in the API" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "Rcache-compile-job" -d "Show remarks for compiler caching" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "Rcross-import" -d "Emit a remark if a cross-import of a module is triggered." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "remove-runtime-asserts" -d "Remove runtime safety checks." # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "Rindexing-system-module" -d "Emit a remark when indexing a system module" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "Rmacro-loading" -d "Emit remarks about loaded macro implementations" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "Rmodule-api-import" -d "Emit remarks about the import bridging in each element composing the API" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "Rmodule-loading" -d "Emit remarks about loaded module" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "Rmodule-recovery" -d "Emit remarks about contextual inconsistencies in loaded modules" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "Rmodule-serialization" -d "Emit remarks about module serialization" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "Rpass-missed" -d "Report missed transformations by optimization passes whose name matches the given POSIX regular expression" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "Rpass" -d "Report performed transformations by optimization passes whose name matches the given POSIX regular expression" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "Rskip-explicit-interface-build" -d "Emit a remark if an explicit module interface invocation has an early exit because the expected output is up-to-date" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "runtime-compatibility-version" -d "Link compatibility library for Swift runtime version, or 'none'" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "save-optimization-record-passes" -d "Only include passes which match a specified regular expression in the generated optimization record (by default, include all passes)" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "save-optimization-record-path" -d "Specify the file name of any generated optimization record" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "save-optimization-record" -d "Generate a YAML optimization record file" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "save-optimization-record" -d "Generate an optimization record file in a specific format (default: YAML)" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "scanner-prefix-map-sdk" -d "Remap paths within SDK reported by dependency scanner" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "scanner-prefix-map-toolchain" -d "Remap paths within toolchain directory reported by dependency scanner" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "scanner-prefix-map" -d "Remap paths reported by dependency scanner" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "sdk-module-cache-path" -d "Specifies the module cache path for explicitly-built SDK modules" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "sdk" -d "Compile against <sdk>" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "serialize-diagnostics-path" -d "Emit a serialized diagnostics file to <path>" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "static-executable" -d "Statically link the executable" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "static-stdlib" -d "Statically link the Swift standard library" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "strict-concurrency" -d "Specify the how strict concurrency checking will be. The value may be 'minimal' (most 'Sendable' checking is disabled), 'targeted' ('Sendable' checking is enabled in code that uses the concurrency model, or 'complete' ('Sendable' and other checking is enabled for all code in the module)" -xa "minimal targeted complete" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "strict-memory-safety" -d "Enable strict memory safety checking" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "suppress-remarks" -d "Suppress all remarks" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "suppress-warnings" -d "Suppress all warnings" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "swift-ptrauth-mode" -d "Mode for staging pointer authentication. Supported modes are LegacyAndStrip, NewAndStrip and NewAndAuth." -xa "LegacyAndStrip NewAndStrip NewAndAuth" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "swift-version" -d "Interpret input according to a specific Swift language version number" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "sysroot" -d "Native Platform sysroot" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "target-cpu" -d "Generate code for a particular CPU variant" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "target-min-inlining-version" -d "Require inlinable code with no '@available' attribute to back-deploy to this version of the '-target' OS" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "target-variant" -d "Generate 'zippered' code for macCatalyst that can run on the specified variant target triple in addition to the main -target triple" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "target" -d "Generate code for the given target <triple>, such as x86_64-apple-macos10.9" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "use-ld" -d "Specifies the flavor of the linker to be used" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "user-module-version" -d "Module version specified from Swift module authors" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "validate-clang-modules-once" -d "Don't verify input files for Clang modules if the module has been successfully validated or loaded during this build session" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "version" -d "Print version information and exit" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "vfsoverlay" -d "Add directory to VFS overlay file" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "visualc-tools-root" -d "VisualC++ Tools Root" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "visualc-tools-version" -d "VisualC++ ToolSet Version" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -s "v" -o "v" -d "Show commands to run and use verbose output" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "warn-concurrency" -d "Warn about code that is unsafe according to the Swift Concurrency model and will become ill-formed in a future language version" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "warn-implicit-overrides" -d "Warn about implicit overrides of protocol members" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "warnings-as-errors" -d "Treat warnings as errors" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "windows-sdk-root" -d "Windows SDK Root" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "windows-sdk-version" -d "Windows SDK Version" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "working-directory" -d "Resolve file paths relative to the specified directory" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "Xcc" -d "Pass <arg> to the C/C++/Objective-C compiler" # global
complete -c "swift" -n "__fish_seen_subcommand_from 'repl'" -o "Xlinker" -d "Specifies an option which should be passed to the linker" # global
complete -f -c "swift" -n "__fish_seen_subcommand_from 'repl'" -a "build" -d "Build Swift packages" # sub
complete -f -c "swift" -n "__fish_seen_subcommand_from 'repl'" -a "package" -d "Create and work on packages" # sub
complete -f -c "swift" -n "__fish_seen_subcommand_from 'repl'" -a "run" -d "Run a program from a package" # sub
complete -f -c "swift" -n "__fish_seen_subcommand_from 'repl'" -a "test" -d "Run package tests" # sub
complete -f -c "swift" -n "__fish_seen_subcommand_from 'repl'" -a "repl" -d "Experiment with Swift code interactively" # sub
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "access-notes-path" -d "Specify YAML file to override attributes on Swift declarations in this module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "allow-non-resilient-access" -d "Ensures all contents are generated besides exportable decls in the binary module, so non-resilient access can be allowed" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "allowable-client" -d "Module names that are allowed to import this module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "assert-config" -d "Specify the assert_configuration replacement. Possible values are Debug, Release, Unchecked, DisableReplacement." -xa "Debug Release Unchecked DisableReplacement" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "build-id" -d "Specify the build ID argument passed to the linker" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "cache-compile-job" -d "Enable compiler caching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "cache-disable-replay" -d "Skip loading the compilation result from cache" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "cas-path" -d "Path to CAS" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "cas-plugin-option" -d "Option pass to CAS Plugin" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "cas-plugin-path" -d "Path to CAS Plugin" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "clang-build-session-file" -d "Use the last modification time of <file> as the underlying Clang build session timestamp" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "clang-scanner-module-cache-path" -d "Specifies the Clang dependency scanner module cache path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "clang-target-variant" -d "Separately set the target we should use for internal Clang instance for the 'zippered' code for macCatalyst" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "clang-target" -d "Separately set the target we should use for internal Clang instance" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "color-diagnostics" -d "Print diagnostics in color" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "compiler-assertions" -d "Enable internal self-checks while compiling" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "continue-building-after-errors" -d "Continue building, even after errors are encountered" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "coverage-prefix-map" -d "Remap source paths in coverage info" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "cxx-interoperability-mode" -d "Enables C++ interoperability; pass 'default' to enable or 'off' to disable" -xa "default off" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "debug-info-format" -d "Specify the debug info format type to either 'dwarf' or 'codeview'" -xa "dwarf codeview" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "debug-info-store-invocation" -d "Emit the compiler invocation in the debug info." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "debug-prefix-map" -d "Remap source paths in debug info" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "default-isolation" -d "Specify the default actor isolation: MainActor or nonisolated. Defaults to nonisolated." -xa "MainActor nonisolated" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "diagnostic-style" -d "The formatting style used when printing diagnostics ('swift' or 'llvm')" -xa "swift llvm" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "disable-actor-data-race-checks" -d "Disable runtime checks for actor data races" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "disable-autolinking-runtime-compatibility-concurrency" -d "Do not use autolinking for the concurrency runtime compatibility library" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "disable-autolinking-runtime-compatibility-dynamic-replacements" -d "Do not use autolinking for the dynamic replacement runtime compatibility library" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "disable-autolinking-runtime-compatibility" -d "Do not use autolinking for runtime compatibility libraries" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "disable-clang-target" -d "Disable a separately specified target triple for Clang instance to use" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "disable-dynamic-actor-isolation" -d "Disable dynamic actor isolation checks" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "disable-experimental-feature" -d "Disable an experimental feature" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "disable-incremental-imports" -d "Disable cross-module incremental build metadata and driver scheduling for Swift modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "disable-only-one-dependency-file" -d "Disables incremental build optimization that only produces one dependencies file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "disable-sandbox" -d "Disable using the sandbox when executing subprocesses" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "disable-upcoming-feature" -d "Disable a feature that will be introduced in an upcoming language version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "disallow-use-new-driver" -d "Disable using new swift-driver" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "dwarf-version" -d "DWARF debug info version to produce if requested" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -s "D" -o "D" -d "Marks a conditional compilation flag as true" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "embed-tbd-for-module" -d "Embed symbols from the module in the emitted tbd file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "emit-module-dependencies-path" -d "Emit a discovered dependencies file for the emit-module task to <path>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "emit-module-serialize-diagnostics-path" -d "Emit a serialized diagnostics file for the emit-module task to <path>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "enable-actor-data-race-checks" -d "Emit runtime checks for actor data races" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "enable-autolinking-runtime-compatibility-bytecode-layouts" -d "Enable autolinking for the bytecode layouts runtime compatibility library" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "enable-bare-slash-regex" -d "Enable the use of forward slash regular-expression literal syntax" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "enable-builtin-module" -d "Enables the explicit import of the Builtin module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "enable-deterministic-check" -d "Check compiler output determinism by running it twice" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "enable-experimental-additive-arithmetic-derivation" -d "Enable experimental 'AdditiveArithmetic' derived conformances" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "enable-experimental-concise-pound-file" -d "Enable experimental concise '#file' identifier" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "enable-experimental-feature" -d "Enable an experimental feature" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "enable-experimental-forward-mode-differentiation" -d "Enable experimental forward mode differentiation" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "enable-incremental-imports" -d "Enable cross-module incremental build metadata and driver scheduling for Swift modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "enable-library-evolution" -d "Build the module to allow binary-compatible library evolution" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "enable-only-one-dependency-file" -d "Enables incremental build optimization that only produces one dependencies file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "enable-upcoming-feature" -d "Enable a feature that will be introduced in an upcoming language version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "enforce-exclusivity" -d "Enforce law of exclusivity" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "executor-factory" -d "Specify the factory to use to create the default executors for Swift Concurrency.  This must be a type conforming to the 'ExecutorFactory' protocol." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "experimental-allow-non-resilient-access" -d "Deprecated; use -allow-non-resilient-access instead" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "experimental-package-bypass-resilience" -d "Deprecated; has no effect" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "experimental-package-cmo-abort-on-deserialization-fail" -d "Abort if a deserialization error is found while package optimization is enabled" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "experimental-package-cmo" -d "Deprecated; use -package-cmo instead" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "explain-module-dependency-detailed" -d "Emit remarks describing every possible dependency path that explains why compilation may depend on a module with a given name." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "explain-module-dependency" -d "Emit remark describing why compilation may depend on a module with a given name." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "explicit-auto-linking" -d "Instead of linker-load directives, have the driver specify all link dependencies on the linker invocation. Requires '-explicit-module-build'." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "export-as" -d "Module name to use when referenced in clients module interfaces" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "external-plugin-path" -d "Add directory to the plugin search path with a plugin server executable" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -s "e" -o "e" -d "Executes a line of code provided on the command line" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "file-compilation-dir" -d "The compilation directory to embed in the debug info. Coverage mapping is not supported yet." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "file-prefix-map" -d "Remap source paths in debug, coverage, and index info" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "framework" -d "Specifies a framework which should be linked against" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "Fsystem" -d "Add directory to system framework search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "F" -d "Add directory to framework search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "gdwarf-types" -d "Emit full DWARF type info." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "gline-tables-only" -d "Emit minimal debug info for backtraces only" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "gnone" -d "Don't emit debug info" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "g" -d "Emit debug info. This is the preferred setting for debugging with LLDB." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "help" -d "Display available options" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "in-process-plugin-server-path" -d "Path to dynamic library plugin server" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "index-ignore-clang-modules" -d "Avoid indexing clang modules (pcms)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "index-include-locals" -d "Include local definitions/references in the produced index data." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "index-store-path" -d "Store indexing data to <path>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "index-unit-output-path" -d "Use <path> as the output path in the produced index data." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "Isystem" -d "Add directory to the system import search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "I" -d "Add directory to the import search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -s "j" -o "j" -d "Number of commands to execute in parallel" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "libc" -d "libc runtime library to use" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "link-objc-runtime" -d "Deprecated" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "load-pass-plugin" -d "Load LLVM pass plugin from a dynamic shared object file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "load-plugin-executable" -d "Path to a compiler plugin executable and a comma-separated list of module names where the macro types are declared" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "load-plugin-library" -d "Path to a dynamic library containing compiler plugins such as macros" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "load-resolved-plugin" -d "Path to resolved plugin configuration and a comma-separated list of module names where the macro types are declared. Library path and exectuable path can be empty if not used" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "locale" -d "Choose a language for diagnostic messages" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "localization-path" -d "Path to localized diagnostic messages directory" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -s "L" -o "L" -d "Add directory to library link search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -s "l" -o "l" -d "Specifies a library which should be linked against" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "module-abi-name" -d "ABI name to use for the contents of this module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "module-alias" -d "If a source file imports or references module <alias_name>, the <real_name> is used for the contents of the file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "module-cache-path" -d "Specifies the module cache path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "module-link-name" -d "Library to link against when using this module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "module-name" -d "Name of the module to build" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "no-color-diagnostics" -d "Do not print diagnostics in color" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "no-warnings-as-errors" -d "Treat warnings as warnings" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "nostdimport" -d "Don't search the standard library or toolchain import paths for modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "nostdlibimport" -d "Don't search the standard library import path for modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "num-threads" -d "Enable multi-threading and specify number of threads" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "Onone" -d "Compile without any optimization" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "Osize" -d "Compile with optimizations and target small code size" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "Ounchecked" -d "Compile with optimizations and remove runtime safety checks" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "O" -d "Compile with optimizations" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "package-cmo" -d "Enable optimization to perform defalut CMO within a package boundary" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "package-name" -d "Name of the package the module belongs to" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "plugin-path" -d "Add directory to the plugin search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "prefix-serialized-debugging-options" -d "Apply debug prefix mappings to serialized debug info in Swiftmodule files" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "pretty-print" -d "Pretty-print the output JSON" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "print-educational-notes" -d "Include educational notes in printed diagnostic output, if available" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "print-supported-features" -d "Print information about features supported by the compiler" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "print-target-info" -d "Print target information for the given target <triple>, such as x86_64-apple-macos10.9" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "project-name" -d "Name of the project this module to build belongs to" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "public-module-name" -d "Public facing module name to use in diagnostics and documentation" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "Rabi-inference" -d "Emit a remark when an '@abi' attribute adds an attribute or modifier to the ABI declaration based on its presence in the API" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "Rcache-compile-job" -d "Show remarks for compiler caching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "Rcross-import" -d "Emit a remark if a cross-import of a module is triggered." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "remove-runtime-asserts" -d "Remove runtime safety checks." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "Rindexing-system-module" -d "Emit a remark when indexing a system module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "Rmacro-loading" -d "Emit remarks about loaded macro implementations" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "Rmodule-api-import" -d "Emit remarks about the import bridging in each element composing the API" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "Rmodule-loading" -d "Emit remarks about loaded module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "Rmodule-recovery" -d "Emit remarks about contextual inconsistencies in loaded modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "Rmodule-serialization" -d "Emit remarks about module serialization" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "Rpass-missed" -d "Report missed transformations by optimization passes whose name matches the given POSIX regular expression" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "Rpass" -d "Report performed transformations by optimization passes whose name matches the given POSIX regular expression" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "Rskip-explicit-interface-build" -d "Emit a remark if an explicit module interface invocation has an early exit because the expected output is up-to-date" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "runtime-compatibility-version" -d "Link compatibility library for Swift runtime version, or 'none'" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "save-optimization-record-passes" -d "Only include passes which match a specified regular expression in the generated optimization record (by default, include all passes)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "save-optimization-record-path" -d "Specify the file name of any generated optimization record" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "save-optimization-record" -d "Generate a YAML optimization record file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "save-optimization-record" -d "Generate an optimization record file in a specific format (default: YAML)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "scanner-prefix-map-sdk" -d "Remap paths within SDK reported by dependency scanner" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "scanner-prefix-map-toolchain" -d "Remap paths within toolchain directory reported by dependency scanner" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "scanner-prefix-map" -d "Remap paths reported by dependency scanner" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "sdk-module-cache-path" -d "Specifies the module cache path for explicitly-built SDK modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "sdk" -d "Compile against <sdk>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "serialize-diagnostics-path" -d "Emit a serialized diagnostics file to <path>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "static-executable" -d "Statically link the executable" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "static-stdlib" -d "Statically link the Swift standard library" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "strict-concurrency" -d "Specify the how strict concurrency checking will be. The value may be 'minimal' (most 'Sendable' checking is disabled), 'targeted' ('Sendable' checking is enabled in code that uses the concurrency model, or 'complete' ('Sendable' and other checking is enabled for all code in the module)" -xa "minimal targeted complete" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "strict-memory-safety" -d "Enable strict memory safety checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "suppress-remarks" -d "Suppress all remarks" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "suppress-warnings" -d "Suppress all warnings" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "swift-ptrauth-mode" -d "Mode for staging pointer authentication. Supported modes are LegacyAndStrip, NewAndStrip and NewAndAuth." -xa "LegacyAndStrip NewAndStrip NewAndAuth" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "swift-version" -d "Interpret input according to a specific Swift language version number" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "sysroot" -d "Native Platform sysroot" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "target-cpu" -d "Generate code for a particular CPU variant" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "target-min-inlining-version" -d "Require inlinable code with no '@available' attribute to back-deploy to this version of the '-target' OS" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "target-variant" -d "Generate 'zippered' code for macCatalyst that can run on the specified variant target triple in addition to the main -target triple" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "target" -d "Generate code for the given target <triple>, such as x86_64-apple-macos10.9" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "use-ld" -d "Specifies the flavor of the linker to be used" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "user-module-version" -d "Module version specified from Swift module authors" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "validate-clang-modules-once" -d "Don't verify input files for Clang modules if the module has been successfully validated or loaded during this build session" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "version" -d "Print version information and exit" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "vfsoverlay" -d "Add directory to VFS overlay file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "visualc-tools-root" -d "VisualC++ Tools Root" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "visualc-tools-version" -d "VisualC++ ToolSet Version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -s "v" -o "v" -d "Show commands to run and use verbose output" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "warn-concurrency" -d "Warn about code that is unsafe according to the Swift Concurrency model and will become ill-formed in a future language version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "warn-implicit-overrides" -d "Warn about implicit overrides of protocol members" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "warnings-as-errors" -d "Treat warnings as errors" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "windows-sdk-root" -d "Windows SDK Root" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "windows-sdk-version" -d "Windows SDK Version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "working-directory" -d "Resolve file paths relative to the specified directory" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "Xcc" -d "Pass <arg> to the C/C++/Objective-C compiler" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl build'" -o "Xlinker" -d "Specifies an option which should be passed to the linker" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "access-notes-path" -d "Specify YAML file to override attributes on Swift declarations in this module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "allow-non-resilient-access" -d "Ensures all contents are generated besides exportable decls in the binary module, so non-resilient access can be allowed" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "allowable-client" -d "Module names that are allowed to import this module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "assert-config" -d "Specify the assert_configuration replacement. Possible values are Debug, Release, Unchecked, DisableReplacement." -xa "Debug Release Unchecked DisableReplacement" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "build-id" -d "Specify the build ID argument passed to the linker" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "cache-compile-job" -d "Enable compiler caching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "cache-disable-replay" -d "Skip loading the compilation result from cache" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "cas-path" -d "Path to CAS" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "cas-plugin-option" -d "Option pass to CAS Plugin" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "cas-plugin-path" -d "Path to CAS Plugin" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "clang-build-session-file" -d "Use the last modification time of <file> as the underlying Clang build session timestamp" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "clang-scanner-module-cache-path" -d "Specifies the Clang dependency scanner module cache path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "clang-target-variant" -d "Separately set the target we should use for internal Clang instance for the 'zippered' code for macCatalyst" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "clang-target" -d "Separately set the target we should use for internal Clang instance" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "color-diagnostics" -d "Print diagnostics in color" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "compiler-assertions" -d "Enable internal self-checks while compiling" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "continue-building-after-errors" -d "Continue building, even after errors are encountered" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "coverage-prefix-map" -d "Remap source paths in coverage info" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "cxx-interoperability-mode" -d "Enables C++ interoperability; pass 'default' to enable or 'off' to disable" -xa "default off" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "debug-info-format" -d "Specify the debug info format type to either 'dwarf' or 'codeview'" -xa "dwarf codeview" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "debug-info-store-invocation" -d "Emit the compiler invocation in the debug info." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "debug-prefix-map" -d "Remap source paths in debug info" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "default-isolation" -d "Specify the default actor isolation: MainActor or nonisolated. Defaults to nonisolated." -xa "MainActor nonisolated" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "diagnostic-style" -d "The formatting style used when printing diagnostics ('swift' or 'llvm')" -xa "swift llvm" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "disable-actor-data-race-checks" -d "Disable runtime checks for actor data races" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "disable-autolinking-runtime-compatibility-concurrency" -d "Do not use autolinking for the concurrency runtime compatibility library" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "disable-autolinking-runtime-compatibility-dynamic-replacements" -d "Do not use autolinking for the dynamic replacement runtime compatibility library" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "disable-autolinking-runtime-compatibility" -d "Do not use autolinking for runtime compatibility libraries" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "disable-clang-target" -d "Disable a separately specified target triple for Clang instance to use" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "disable-dynamic-actor-isolation" -d "Disable dynamic actor isolation checks" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "disable-experimental-feature" -d "Disable an experimental feature" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "disable-incremental-imports" -d "Disable cross-module incremental build metadata and driver scheduling for Swift modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "disable-only-one-dependency-file" -d "Disables incremental build optimization that only produces one dependencies file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "disable-sandbox" -d "Disable using the sandbox when executing subprocesses" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "disable-upcoming-feature" -d "Disable a feature that will be introduced in an upcoming language version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "disallow-use-new-driver" -d "Disable using new swift-driver" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "dwarf-version" -d "DWARF debug info version to produce if requested" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -s "D" -o "D" -d "Marks a conditional compilation flag as true" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "embed-tbd-for-module" -d "Embed symbols from the module in the emitted tbd file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "emit-module-dependencies-path" -d "Emit a discovered dependencies file for the emit-module task to <path>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "emit-module-serialize-diagnostics-path" -d "Emit a serialized diagnostics file for the emit-module task to <path>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "enable-actor-data-race-checks" -d "Emit runtime checks for actor data races" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "enable-autolinking-runtime-compatibility-bytecode-layouts" -d "Enable autolinking for the bytecode layouts runtime compatibility library" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "enable-bare-slash-regex" -d "Enable the use of forward slash regular-expression literal syntax" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "enable-builtin-module" -d "Enables the explicit import of the Builtin module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "enable-deterministic-check" -d "Check compiler output determinism by running it twice" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "enable-experimental-additive-arithmetic-derivation" -d "Enable experimental 'AdditiveArithmetic' derived conformances" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "enable-experimental-concise-pound-file" -d "Enable experimental concise '#file' identifier" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "enable-experimental-feature" -d "Enable an experimental feature" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "enable-experimental-forward-mode-differentiation" -d "Enable experimental forward mode differentiation" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "enable-incremental-imports" -d "Enable cross-module incremental build metadata and driver scheduling for Swift modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "enable-library-evolution" -d "Build the module to allow binary-compatible library evolution" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "enable-only-one-dependency-file" -d "Enables incremental build optimization that only produces one dependencies file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "enable-upcoming-feature" -d "Enable a feature that will be introduced in an upcoming language version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "enforce-exclusivity" -d "Enforce law of exclusivity" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "executor-factory" -d "Specify the factory to use to create the default executors for Swift Concurrency.  This must be a type conforming to the 'ExecutorFactory' protocol." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "experimental-allow-non-resilient-access" -d "Deprecated; use -allow-non-resilient-access instead" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "experimental-package-bypass-resilience" -d "Deprecated; has no effect" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "experimental-package-cmo-abort-on-deserialization-fail" -d "Abort if a deserialization error is found while package optimization is enabled" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "experimental-package-cmo" -d "Deprecated; use -package-cmo instead" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "explain-module-dependency-detailed" -d "Emit remarks describing every possible dependency path that explains why compilation may depend on a module with a given name." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "explain-module-dependency" -d "Emit remark describing why compilation may depend on a module with a given name." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "explicit-auto-linking" -d "Instead of linker-load directives, have the driver specify all link dependencies on the linker invocation. Requires '-explicit-module-build'." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "export-as" -d "Module name to use when referenced in clients module interfaces" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "external-plugin-path" -d "Add directory to the plugin search path with a plugin server executable" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -s "e" -o "e" -d "Executes a line of code provided on the command line" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "file-compilation-dir" -d "The compilation directory to embed in the debug info. Coverage mapping is not supported yet." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "file-prefix-map" -d "Remap source paths in debug, coverage, and index info" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "framework" -d "Specifies a framework which should be linked against" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "Fsystem" -d "Add directory to system framework search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "F" -d "Add directory to framework search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "gdwarf-types" -d "Emit full DWARF type info." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "gline-tables-only" -d "Emit minimal debug info for backtraces only" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "gnone" -d "Don't emit debug info" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "g" -d "Emit debug info. This is the preferred setting for debugging with LLDB." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "help" -d "Display available options" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "in-process-plugin-server-path" -d "Path to dynamic library plugin server" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "index-ignore-clang-modules" -d "Avoid indexing clang modules (pcms)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "index-include-locals" -d "Include local definitions/references in the produced index data." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "index-store-path" -d "Store indexing data to <path>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "index-unit-output-path" -d "Use <path> as the output path in the produced index data." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "Isystem" -d "Add directory to the system import search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "I" -d "Add directory to the import search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -s "j" -o "j" -d "Number of commands to execute in parallel" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "libc" -d "libc runtime library to use" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "link-objc-runtime" -d "Deprecated" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "load-pass-plugin" -d "Load LLVM pass plugin from a dynamic shared object file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "load-plugin-executable" -d "Path to a compiler plugin executable and a comma-separated list of module names where the macro types are declared" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "load-plugin-library" -d "Path to a dynamic library containing compiler plugins such as macros" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "load-resolved-plugin" -d "Path to resolved plugin configuration and a comma-separated list of module names where the macro types are declared. Library path and exectuable path can be empty if not used" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "locale" -d "Choose a language for diagnostic messages" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "localization-path" -d "Path to localized diagnostic messages directory" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -s "L" -o "L" -d "Add directory to library link search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -s "l" -o "l" -d "Specifies a library which should be linked against" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "module-abi-name" -d "ABI name to use for the contents of this module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "module-alias" -d "If a source file imports or references module <alias_name>, the <real_name> is used for the contents of the file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "module-cache-path" -d "Specifies the module cache path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "module-link-name" -d "Library to link against when using this module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "module-name" -d "Name of the module to build" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "no-color-diagnostics" -d "Do not print diagnostics in color" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "no-warnings-as-errors" -d "Treat warnings as warnings" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "nostdimport" -d "Don't search the standard library or toolchain import paths for modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "nostdlibimport" -d "Don't search the standard library import path for modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "num-threads" -d "Enable multi-threading and specify number of threads" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "Onone" -d "Compile without any optimization" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "Osize" -d "Compile with optimizations and target small code size" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "Ounchecked" -d "Compile with optimizations and remove runtime safety checks" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "O" -d "Compile with optimizations" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "package-cmo" -d "Enable optimization to perform defalut CMO within a package boundary" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "package-name" -d "Name of the package the module belongs to" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "plugin-path" -d "Add directory to the plugin search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "prefix-serialized-debugging-options" -d "Apply debug prefix mappings to serialized debug info in Swiftmodule files" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "pretty-print" -d "Pretty-print the output JSON" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "print-educational-notes" -d "Include educational notes in printed diagnostic output, if available" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "print-supported-features" -d "Print information about features supported by the compiler" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "print-target-info" -d "Print target information for the given target <triple>, such as x86_64-apple-macos10.9" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "project-name" -d "Name of the project this module to build belongs to" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "public-module-name" -d "Public facing module name to use in diagnostics and documentation" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "Rabi-inference" -d "Emit a remark when an '@abi' attribute adds an attribute or modifier to the ABI declaration based on its presence in the API" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "Rcache-compile-job" -d "Show remarks for compiler caching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "Rcross-import" -d "Emit a remark if a cross-import of a module is triggered." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "remove-runtime-asserts" -d "Remove runtime safety checks." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "Rindexing-system-module" -d "Emit a remark when indexing a system module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "Rmacro-loading" -d "Emit remarks about loaded macro implementations" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "Rmodule-api-import" -d "Emit remarks about the import bridging in each element composing the API" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "Rmodule-loading" -d "Emit remarks about loaded module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "Rmodule-recovery" -d "Emit remarks about contextual inconsistencies in loaded modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "Rmodule-serialization" -d "Emit remarks about module serialization" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "Rpass-missed" -d "Report missed transformations by optimization passes whose name matches the given POSIX regular expression" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "Rpass" -d "Report performed transformations by optimization passes whose name matches the given POSIX regular expression" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "Rskip-explicit-interface-build" -d "Emit a remark if an explicit module interface invocation has an early exit because the expected output is up-to-date" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "runtime-compatibility-version" -d "Link compatibility library for Swift runtime version, or 'none'" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "save-optimization-record-passes" -d "Only include passes which match a specified regular expression in the generated optimization record (by default, include all passes)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "save-optimization-record-path" -d "Specify the file name of any generated optimization record" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "save-optimization-record" -d "Generate a YAML optimization record file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "save-optimization-record" -d "Generate an optimization record file in a specific format (default: YAML)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "scanner-prefix-map-sdk" -d "Remap paths within SDK reported by dependency scanner" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "scanner-prefix-map-toolchain" -d "Remap paths within toolchain directory reported by dependency scanner" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "scanner-prefix-map" -d "Remap paths reported by dependency scanner" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "sdk-module-cache-path" -d "Specifies the module cache path for explicitly-built SDK modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "sdk" -d "Compile against <sdk>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "serialize-diagnostics-path" -d "Emit a serialized diagnostics file to <path>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "static-executable" -d "Statically link the executable" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "static-stdlib" -d "Statically link the Swift standard library" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "strict-concurrency" -d "Specify the how strict concurrency checking will be. The value may be 'minimal' (most 'Sendable' checking is disabled), 'targeted' ('Sendable' checking is enabled in code that uses the concurrency model, or 'complete' ('Sendable' and other checking is enabled for all code in the module)" -xa "minimal targeted complete" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "strict-memory-safety" -d "Enable strict memory safety checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "suppress-remarks" -d "Suppress all remarks" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "suppress-warnings" -d "Suppress all warnings" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "swift-ptrauth-mode" -d "Mode for staging pointer authentication. Supported modes are LegacyAndStrip, NewAndStrip and NewAndAuth." -xa "LegacyAndStrip NewAndStrip NewAndAuth" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "swift-version" -d "Interpret input according to a specific Swift language version number" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "sysroot" -d "Native Platform sysroot" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "target-cpu" -d "Generate code for a particular CPU variant" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "target-min-inlining-version" -d "Require inlinable code with no '@available' attribute to back-deploy to this version of the '-target' OS" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "target-variant" -d "Generate 'zippered' code for macCatalyst that can run on the specified variant target triple in addition to the main -target triple" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "target" -d "Generate code for the given target <triple>, such as x86_64-apple-macos10.9" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "use-ld" -d "Specifies the flavor of the linker to be used" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "user-module-version" -d "Module version specified from Swift module authors" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "validate-clang-modules-once" -d "Don't verify input files for Clang modules if the module has been successfully validated or loaded during this build session" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "version" -d "Print version information and exit" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "vfsoverlay" -d "Add directory to VFS overlay file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "visualc-tools-root" -d "VisualC++ Tools Root" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "visualc-tools-version" -d "VisualC++ ToolSet Version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -s "v" -o "v" -d "Show commands to run and use verbose output" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "warn-concurrency" -d "Warn about code that is unsafe according to the Swift Concurrency model and will become ill-formed in a future language version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "warn-implicit-overrides" -d "Warn about implicit overrides of protocol members" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "warnings-as-errors" -d "Treat warnings as errors" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "windows-sdk-root" -d "Windows SDK Root" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "windows-sdk-version" -d "Windows SDK Version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "working-directory" -d "Resolve file paths relative to the specified directory" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "Xcc" -d "Pass <arg> to the C/C++/Objective-C compiler" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl package'" -o "Xlinker" -d "Specifies an option which should be passed to the linker" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "access-notes-path" -d "Specify YAML file to override attributes on Swift declarations in this module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "allow-non-resilient-access" -d "Ensures all contents are generated besides exportable decls in the binary module, so non-resilient access can be allowed" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "allowable-client" -d "Module names that are allowed to import this module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "assert-config" -d "Specify the assert_configuration replacement. Possible values are Debug, Release, Unchecked, DisableReplacement." -xa "Debug Release Unchecked DisableReplacement" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "build-id" -d "Specify the build ID argument passed to the linker" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "cache-compile-job" -d "Enable compiler caching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "cache-disable-replay" -d "Skip loading the compilation result from cache" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "cas-path" -d "Path to CAS" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "cas-plugin-option" -d "Option pass to CAS Plugin" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "cas-plugin-path" -d "Path to CAS Plugin" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "clang-build-session-file" -d "Use the last modification time of <file> as the underlying Clang build session timestamp" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "clang-scanner-module-cache-path" -d "Specifies the Clang dependency scanner module cache path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "clang-target-variant" -d "Separately set the target we should use for internal Clang instance for the 'zippered' code for macCatalyst" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "clang-target" -d "Separately set the target we should use for internal Clang instance" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "color-diagnostics" -d "Print diagnostics in color" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "compiler-assertions" -d "Enable internal self-checks while compiling" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "continue-building-after-errors" -d "Continue building, even after errors are encountered" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "coverage-prefix-map" -d "Remap source paths in coverage info" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "cxx-interoperability-mode" -d "Enables C++ interoperability; pass 'default' to enable or 'off' to disable" -xa "default off" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "debug-info-format" -d "Specify the debug info format type to either 'dwarf' or 'codeview'" -xa "dwarf codeview" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "debug-info-store-invocation" -d "Emit the compiler invocation in the debug info." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "debug-prefix-map" -d "Remap source paths in debug info" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "default-isolation" -d "Specify the default actor isolation: MainActor or nonisolated. Defaults to nonisolated." -xa "MainActor nonisolated" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "diagnostic-style" -d "The formatting style used when printing diagnostics ('swift' or 'llvm')" -xa "swift llvm" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "disable-actor-data-race-checks" -d "Disable runtime checks for actor data races" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "disable-autolinking-runtime-compatibility-concurrency" -d "Do not use autolinking for the concurrency runtime compatibility library" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "disable-autolinking-runtime-compatibility-dynamic-replacements" -d "Do not use autolinking for the dynamic replacement runtime compatibility library" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "disable-autolinking-runtime-compatibility" -d "Do not use autolinking for runtime compatibility libraries" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "disable-clang-target" -d "Disable a separately specified target triple for Clang instance to use" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "disable-dynamic-actor-isolation" -d "Disable dynamic actor isolation checks" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "disable-experimental-feature" -d "Disable an experimental feature" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "disable-incremental-imports" -d "Disable cross-module incremental build metadata and driver scheduling for Swift modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "disable-only-one-dependency-file" -d "Disables incremental build optimization that only produces one dependencies file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "disable-sandbox" -d "Disable using the sandbox when executing subprocesses" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "disable-upcoming-feature" -d "Disable a feature that will be introduced in an upcoming language version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "disallow-use-new-driver" -d "Disable using new swift-driver" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "dwarf-version" -d "DWARF debug info version to produce if requested" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -s "D" -o "D" -d "Marks a conditional compilation flag as true" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "embed-tbd-for-module" -d "Embed symbols from the module in the emitted tbd file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "emit-module-dependencies-path" -d "Emit a discovered dependencies file for the emit-module task to <path>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "emit-module-serialize-diagnostics-path" -d "Emit a serialized diagnostics file for the emit-module task to <path>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "enable-actor-data-race-checks" -d "Emit runtime checks for actor data races" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "enable-autolinking-runtime-compatibility-bytecode-layouts" -d "Enable autolinking for the bytecode layouts runtime compatibility library" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "enable-bare-slash-regex" -d "Enable the use of forward slash regular-expression literal syntax" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "enable-builtin-module" -d "Enables the explicit import of the Builtin module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "enable-deterministic-check" -d "Check compiler output determinism by running it twice" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "enable-experimental-additive-arithmetic-derivation" -d "Enable experimental 'AdditiveArithmetic' derived conformances" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "enable-experimental-concise-pound-file" -d "Enable experimental concise '#file' identifier" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "enable-experimental-feature" -d "Enable an experimental feature" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "enable-experimental-forward-mode-differentiation" -d "Enable experimental forward mode differentiation" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "enable-incremental-imports" -d "Enable cross-module incremental build metadata and driver scheduling for Swift modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "enable-library-evolution" -d "Build the module to allow binary-compatible library evolution" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "enable-only-one-dependency-file" -d "Enables incremental build optimization that only produces one dependencies file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "enable-upcoming-feature" -d "Enable a feature that will be introduced in an upcoming language version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "enforce-exclusivity" -d "Enforce law of exclusivity" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "executor-factory" -d "Specify the factory to use to create the default executors for Swift Concurrency.  This must be a type conforming to the 'ExecutorFactory' protocol." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "experimental-allow-non-resilient-access" -d "Deprecated; use -allow-non-resilient-access instead" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "experimental-package-bypass-resilience" -d "Deprecated; has no effect" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "experimental-package-cmo-abort-on-deserialization-fail" -d "Abort if a deserialization error is found while package optimization is enabled" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "experimental-package-cmo" -d "Deprecated; use -package-cmo instead" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "explain-module-dependency-detailed" -d "Emit remarks describing every possible dependency path that explains why compilation may depend on a module with a given name." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "explain-module-dependency" -d "Emit remark describing why compilation may depend on a module with a given name." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "explicit-auto-linking" -d "Instead of linker-load directives, have the driver specify all link dependencies on the linker invocation. Requires '-explicit-module-build'." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "export-as" -d "Module name to use when referenced in clients module interfaces" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "external-plugin-path" -d "Add directory to the plugin search path with a plugin server executable" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -s "e" -o "e" -d "Executes a line of code provided on the command line" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "file-compilation-dir" -d "The compilation directory to embed in the debug info. Coverage mapping is not supported yet." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "file-prefix-map" -d "Remap source paths in debug, coverage, and index info" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "framework" -d "Specifies a framework which should be linked against" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "Fsystem" -d "Add directory to system framework search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "F" -d "Add directory to framework search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "gdwarf-types" -d "Emit full DWARF type info." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "gline-tables-only" -d "Emit minimal debug info for backtraces only" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "gnone" -d "Don't emit debug info" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "g" -d "Emit debug info. This is the preferred setting for debugging with LLDB." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "help" -d "Display available options" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "in-process-plugin-server-path" -d "Path to dynamic library plugin server" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "index-ignore-clang-modules" -d "Avoid indexing clang modules (pcms)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "index-include-locals" -d "Include local definitions/references in the produced index data." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "index-store-path" -d "Store indexing data to <path>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "index-unit-output-path" -d "Use <path> as the output path in the produced index data." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "Isystem" -d "Add directory to the system import search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "I" -d "Add directory to the import search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -s "j" -o "j" -d "Number of commands to execute in parallel" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "libc" -d "libc runtime library to use" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "link-objc-runtime" -d "Deprecated" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "load-pass-plugin" -d "Load LLVM pass plugin from a dynamic shared object file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "load-plugin-executable" -d "Path to a compiler plugin executable and a comma-separated list of module names where the macro types are declared" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "load-plugin-library" -d "Path to a dynamic library containing compiler plugins such as macros" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "load-resolved-plugin" -d "Path to resolved plugin configuration and a comma-separated list of module names where the macro types are declared. Library path and exectuable path can be empty if not used" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "locale" -d "Choose a language for diagnostic messages" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "localization-path" -d "Path to localized diagnostic messages directory" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -s "L" -o "L" -d "Add directory to library link search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -s "l" -o "l" -d "Specifies a library which should be linked against" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "module-abi-name" -d "ABI name to use for the contents of this module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "module-alias" -d "If a source file imports or references module <alias_name>, the <real_name> is used for the contents of the file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "module-cache-path" -d "Specifies the module cache path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "module-link-name" -d "Library to link against when using this module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "module-name" -d "Name of the module to build" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "no-color-diagnostics" -d "Do not print diagnostics in color" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "no-warnings-as-errors" -d "Treat warnings as warnings" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "nostdimport" -d "Don't search the standard library or toolchain import paths for modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "nostdlibimport" -d "Don't search the standard library import path for modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "num-threads" -d "Enable multi-threading and specify number of threads" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "Onone" -d "Compile without any optimization" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "Osize" -d "Compile with optimizations and target small code size" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "Ounchecked" -d "Compile with optimizations and remove runtime safety checks" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "O" -d "Compile with optimizations" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "package-cmo" -d "Enable optimization to perform defalut CMO within a package boundary" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "package-name" -d "Name of the package the module belongs to" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "plugin-path" -d "Add directory to the plugin search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "prefix-serialized-debugging-options" -d "Apply debug prefix mappings to serialized debug info in Swiftmodule files" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "pretty-print" -d "Pretty-print the output JSON" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "print-educational-notes" -d "Include educational notes in printed diagnostic output, if available" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "print-supported-features" -d "Print information about features supported by the compiler" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "print-target-info" -d "Print target information for the given target <triple>, such as x86_64-apple-macos10.9" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "project-name" -d "Name of the project this module to build belongs to" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "public-module-name" -d "Public facing module name to use in diagnostics and documentation" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "Rabi-inference" -d "Emit a remark when an '@abi' attribute adds an attribute or modifier to the ABI declaration based on its presence in the API" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "Rcache-compile-job" -d "Show remarks for compiler caching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "Rcross-import" -d "Emit a remark if a cross-import of a module is triggered." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "remove-runtime-asserts" -d "Remove runtime safety checks." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "Rindexing-system-module" -d "Emit a remark when indexing a system module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "Rmacro-loading" -d "Emit remarks about loaded macro implementations" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "Rmodule-api-import" -d "Emit remarks about the import bridging in each element composing the API" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "Rmodule-loading" -d "Emit remarks about loaded module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "Rmodule-recovery" -d "Emit remarks about contextual inconsistencies in loaded modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "Rmodule-serialization" -d "Emit remarks about module serialization" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "Rpass-missed" -d "Report missed transformations by optimization passes whose name matches the given POSIX regular expression" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "Rpass" -d "Report performed transformations by optimization passes whose name matches the given POSIX regular expression" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "Rskip-explicit-interface-build" -d "Emit a remark if an explicit module interface invocation has an early exit because the expected output is up-to-date" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "runtime-compatibility-version" -d "Link compatibility library for Swift runtime version, or 'none'" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "save-optimization-record-passes" -d "Only include passes which match a specified regular expression in the generated optimization record (by default, include all passes)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "save-optimization-record-path" -d "Specify the file name of any generated optimization record" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "save-optimization-record" -d "Generate a YAML optimization record file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "save-optimization-record" -d "Generate an optimization record file in a specific format (default: YAML)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "scanner-prefix-map-sdk" -d "Remap paths within SDK reported by dependency scanner" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "scanner-prefix-map-toolchain" -d "Remap paths within toolchain directory reported by dependency scanner" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "scanner-prefix-map" -d "Remap paths reported by dependency scanner" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "sdk-module-cache-path" -d "Specifies the module cache path for explicitly-built SDK modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "sdk" -d "Compile against <sdk>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "serialize-diagnostics-path" -d "Emit a serialized diagnostics file to <path>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "static-executable" -d "Statically link the executable" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "static-stdlib" -d "Statically link the Swift standard library" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "strict-concurrency" -d "Specify the how strict concurrency checking will be. The value may be 'minimal' (most 'Sendable' checking is disabled), 'targeted' ('Sendable' checking is enabled in code that uses the concurrency model, or 'complete' ('Sendable' and other checking is enabled for all code in the module)" -xa "minimal targeted complete" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "strict-memory-safety" -d "Enable strict memory safety checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "suppress-remarks" -d "Suppress all remarks" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "suppress-warnings" -d "Suppress all warnings" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "swift-ptrauth-mode" -d "Mode for staging pointer authentication. Supported modes are LegacyAndStrip, NewAndStrip and NewAndAuth." -xa "LegacyAndStrip NewAndStrip NewAndAuth" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "swift-version" -d "Interpret input according to a specific Swift language version number" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "sysroot" -d "Native Platform sysroot" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "target-cpu" -d "Generate code for a particular CPU variant" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "target-min-inlining-version" -d "Require inlinable code with no '@available' attribute to back-deploy to this version of the '-target' OS" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "target-variant" -d "Generate 'zippered' code for macCatalyst that can run on the specified variant target triple in addition to the main -target triple" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "target" -d "Generate code for the given target <triple>, such as x86_64-apple-macos10.9" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "use-ld" -d "Specifies the flavor of the linker to be used" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "user-module-version" -d "Module version specified from Swift module authors" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "validate-clang-modules-once" -d "Don't verify input files for Clang modules if the module has been successfully validated or loaded during this build session" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "version" -d "Print version information and exit" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "vfsoverlay" -d "Add directory to VFS overlay file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "visualc-tools-root" -d "VisualC++ Tools Root" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "visualc-tools-version" -d "VisualC++ ToolSet Version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -s "v" -o "v" -d "Show commands to run and use verbose output" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "warn-concurrency" -d "Warn about code that is unsafe according to the Swift Concurrency model and will become ill-formed in a future language version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "warn-implicit-overrides" -d "Warn about implicit overrides of protocol members" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "warnings-as-errors" -d "Treat warnings as errors" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "windows-sdk-root" -d "Windows SDK Root" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "windows-sdk-version" -d "Windows SDK Version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "working-directory" -d "Resolve file paths relative to the specified directory" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "Xcc" -d "Pass <arg> to the C/C++/Objective-C compiler" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl run'" -o "Xlinker" -d "Specifies an option which should be passed to the linker" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "access-notes-path" -d "Specify YAML file to override attributes on Swift declarations in this module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "allow-non-resilient-access" -d "Ensures all contents are generated besides exportable decls in the binary module, so non-resilient access can be allowed" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "allowable-client" -d "Module names that are allowed to import this module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "assert-config" -d "Specify the assert_configuration replacement. Possible values are Debug, Release, Unchecked, DisableReplacement." -xa "Debug Release Unchecked DisableReplacement" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "build-id" -d "Specify the build ID argument passed to the linker" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "cache-compile-job" -d "Enable compiler caching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "cache-disable-replay" -d "Skip loading the compilation result from cache" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "cas-path" -d "Path to CAS" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "cas-plugin-option" -d "Option pass to CAS Plugin" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "cas-plugin-path" -d "Path to CAS Plugin" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "clang-build-session-file" -d "Use the last modification time of <file> as the underlying Clang build session timestamp" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "clang-scanner-module-cache-path" -d "Specifies the Clang dependency scanner module cache path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "clang-target-variant" -d "Separately set the target we should use for internal Clang instance for the 'zippered' code for macCatalyst" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "clang-target" -d "Separately set the target we should use for internal Clang instance" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "color-diagnostics" -d "Print diagnostics in color" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "compiler-assertions" -d "Enable internal self-checks while compiling" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "continue-building-after-errors" -d "Continue building, even after errors are encountered" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "coverage-prefix-map" -d "Remap source paths in coverage info" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "cxx-interoperability-mode" -d "Enables C++ interoperability; pass 'default' to enable or 'off' to disable" -xa "default off" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "debug-info-format" -d "Specify the debug info format type to either 'dwarf' or 'codeview'" -xa "dwarf codeview" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "debug-info-store-invocation" -d "Emit the compiler invocation in the debug info." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "debug-prefix-map" -d "Remap source paths in debug info" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "default-isolation" -d "Specify the default actor isolation: MainActor or nonisolated. Defaults to nonisolated." -xa "MainActor nonisolated" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "diagnostic-style" -d "The formatting style used when printing diagnostics ('swift' or 'llvm')" -xa "swift llvm" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "disable-actor-data-race-checks" -d "Disable runtime checks for actor data races" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "disable-autolinking-runtime-compatibility-concurrency" -d "Do not use autolinking for the concurrency runtime compatibility library" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "disable-autolinking-runtime-compatibility-dynamic-replacements" -d "Do not use autolinking for the dynamic replacement runtime compatibility library" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "disable-autolinking-runtime-compatibility" -d "Do not use autolinking for runtime compatibility libraries" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "disable-clang-target" -d "Disable a separately specified target triple for Clang instance to use" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "disable-dynamic-actor-isolation" -d "Disable dynamic actor isolation checks" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "disable-experimental-feature" -d "Disable an experimental feature" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "disable-incremental-imports" -d "Disable cross-module incremental build metadata and driver scheduling for Swift modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "disable-only-one-dependency-file" -d "Disables incremental build optimization that only produces one dependencies file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "disable-sandbox" -d "Disable using the sandbox when executing subprocesses" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "disable-upcoming-feature" -d "Disable a feature that will be introduced in an upcoming language version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "disallow-use-new-driver" -d "Disable using new swift-driver" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "dwarf-version" -d "DWARF debug info version to produce if requested" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -s "D" -o "D" -d "Marks a conditional compilation flag as true" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "embed-tbd-for-module" -d "Embed symbols from the module in the emitted tbd file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "emit-module-dependencies-path" -d "Emit a discovered dependencies file for the emit-module task to <path>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "emit-module-serialize-diagnostics-path" -d "Emit a serialized diagnostics file for the emit-module task to <path>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "enable-actor-data-race-checks" -d "Emit runtime checks for actor data races" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "enable-autolinking-runtime-compatibility-bytecode-layouts" -d "Enable autolinking for the bytecode layouts runtime compatibility library" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "enable-bare-slash-regex" -d "Enable the use of forward slash regular-expression literal syntax" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "enable-builtin-module" -d "Enables the explicit import of the Builtin module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "enable-deterministic-check" -d "Check compiler output determinism by running it twice" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "enable-experimental-additive-arithmetic-derivation" -d "Enable experimental 'AdditiveArithmetic' derived conformances" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "enable-experimental-concise-pound-file" -d "Enable experimental concise '#file' identifier" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "enable-experimental-feature" -d "Enable an experimental feature" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "enable-experimental-forward-mode-differentiation" -d "Enable experimental forward mode differentiation" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "enable-incremental-imports" -d "Enable cross-module incremental build metadata and driver scheduling for Swift modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "enable-library-evolution" -d "Build the module to allow binary-compatible library evolution" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "enable-only-one-dependency-file" -d "Enables incremental build optimization that only produces one dependencies file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "enable-upcoming-feature" -d "Enable a feature that will be introduced in an upcoming language version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "enforce-exclusivity" -d "Enforce law of exclusivity" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "executor-factory" -d "Specify the factory to use to create the default executors for Swift Concurrency.  This must be a type conforming to the 'ExecutorFactory' protocol." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "experimental-allow-non-resilient-access" -d "Deprecated; use -allow-non-resilient-access instead" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "experimental-package-bypass-resilience" -d "Deprecated; has no effect" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "experimental-package-cmo-abort-on-deserialization-fail" -d "Abort if a deserialization error is found while package optimization is enabled" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "experimental-package-cmo" -d "Deprecated; use -package-cmo instead" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "explain-module-dependency-detailed" -d "Emit remarks describing every possible dependency path that explains why compilation may depend on a module with a given name." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "explain-module-dependency" -d "Emit remark describing why compilation may depend on a module with a given name." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "explicit-auto-linking" -d "Instead of linker-load directives, have the driver specify all link dependencies on the linker invocation. Requires '-explicit-module-build'." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "export-as" -d "Module name to use when referenced in clients module interfaces" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "external-plugin-path" -d "Add directory to the plugin search path with a plugin server executable" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -s "e" -o "e" -d "Executes a line of code provided on the command line" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "file-compilation-dir" -d "The compilation directory to embed in the debug info. Coverage mapping is not supported yet." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "file-prefix-map" -d "Remap source paths in debug, coverage, and index info" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "framework" -d "Specifies a framework which should be linked against" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "Fsystem" -d "Add directory to system framework search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "F" -d "Add directory to framework search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "gdwarf-types" -d "Emit full DWARF type info." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "gline-tables-only" -d "Emit minimal debug info for backtraces only" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "gnone" -d "Don't emit debug info" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "g" -d "Emit debug info. This is the preferred setting for debugging with LLDB." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "help" -d "Display available options" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "in-process-plugin-server-path" -d "Path to dynamic library plugin server" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "index-ignore-clang-modules" -d "Avoid indexing clang modules (pcms)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "index-include-locals" -d "Include local definitions/references in the produced index data." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "index-store-path" -d "Store indexing data to <path>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "index-unit-output-path" -d "Use <path> as the output path in the produced index data." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "Isystem" -d "Add directory to the system import search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "I" -d "Add directory to the import search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -s "j" -o "j" -d "Number of commands to execute in parallel" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "libc" -d "libc runtime library to use" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "link-objc-runtime" -d "Deprecated" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "load-pass-plugin" -d "Load LLVM pass plugin from a dynamic shared object file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "load-plugin-executable" -d "Path to a compiler plugin executable and a comma-separated list of module names where the macro types are declared" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "load-plugin-library" -d "Path to a dynamic library containing compiler plugins such as macros" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "load-resolved-plugin" -d "Path to resolved plugin configuration and a comma-separated list of module names where the macro types are declared. Library path and exectuable path can be empty if not used" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "locale" -d "Choose a language for diagnostic messages" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "localization-path" -d "Path to localized diagnostic messages directory" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -s "L" -o "L" -d "Add directory to library link search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -s "l" -o "l" -d "Specifies a library which should be linked against" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "module-abi-name" -d "ABI name to use for the contents of this module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "module-alias" -d "If a source file imports or references module <alias_name>, the <real_name> is used for the contents of the file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "module-cache-path" -d "Specifies the module cache path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "module-link-name" -d "Library to link against when using this module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "module-name" -d "Name of the module to build" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "no-color-diagnostics" -d "Do not print diagnostics in color" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "no-warnings-as-errors" -d "Treat warnings as warnings" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "nostdimport" -d "Don't search the standard library or toolchain import paths for modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "nostdlibimport" -d "Don't search the standard library import path for modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "num-threads" -d "Enable multi-threading and specify number of threads" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "Onone" -d "Compile without any optimization" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "Osize" -d "Compile with optimizations and target small code size" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "Ounchecked" -d "Compile with optimizations and remove runtime safety checks" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "O" -d "Compile with optimizations" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "package-cmo" -d "Enable optimization to perform defalut CMO within a package boundary" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "package-name" -d "Name of the package the module belongs to" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "plugin-path" -d "Add directory to the plugin search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "prefix-serialized-debugging-options" -d "Apply debug prefix mappings to serialized debug info in Swiftmodule files" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "pretty-print" -d "Pretty-print the output JSON" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "print-educational-notes" -d "Include educational notes in printed diagnostic output, if available" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "print-supported-features" -d "Print information about features supported by the compiler" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "print-target-info" -d "Print target information for the given target <triple>, such as x86_64-apple-macos10.9" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "project-name" -d "Name of the project this module to build belongs to" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "public-module-name" -d "Public facing module name to use in diagnostics and documentation" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "Rabi-inference" -d "Emit a remark when an '@abi' attribute adds an attribute or modifier to the ABI declaration based on its presence in the API" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "Rcache-compile-job" -d "Show remarks for compiler caching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "Rcross-import" -d "Emit a remark if a cross-import of a module is triggered." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "remove-runtime-asserts" -d "Remove runtime safety checks." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "Rindexing-system-module" -d "Emit a remark when indexing a system module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "Rmacro-loading" -d "Emit remarks about loaded macro implementations" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "Rmodule-api-import" -d "Emit remarks about the import bridging in each element composing the API" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "Rmodule-loading" -d "Emit remarks about loaded module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "Rmodule-recovery" -d "Emit remarks about contextual inconsistencies in loaded modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "Rmodule-serialization" -d "Emit remarks about module serialization" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "Rpass-missed" -d "Report missed transformations by optimization passes whose name matches the given POSIX regular expression" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "Rpass" -d "Report performed transformations by optimization passes whose name matches the given POSIX regular expression" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "Rskip-explicit-interface-build" -d "Emit a remark if an explicit module interface invocation has an early exit because the expected output is up-to-date" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "runtime-compatibility-version" -d "Link compatibility library for Swift runtime version, or 'none'" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "save-optimization-record-passes" -d "Only include passes which match a specified regular expression in the generated optimization record (by default, include all passes)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "save-optimization-record-path" -d "Specify the file name of any generated optimization record" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "save-optimization-record" -d "Generate a YAML optimization record file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "save-optimization-record" -d "Generate an optimization record file in a specific format (default: YAML)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "scanner-prefix-map-sdk" -d "Remap paths within SDK reported by dependency scanner" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "scanner-prefix-map-toolchain" -d "Remap paths within toolchain directory reported by dependency scanner" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "scanner-prefix-map" -d "Remap paths reported by dependency scanner" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "sdk-module-cache-path" -d "Specifies the module cache path for explicitly-built SDK modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "sdk" -d "Compile against <sdk>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "serialize-diagnostics-path" -d "Emit a serialized diagnostics file to <path>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "static-executable" -d "Statically link the executable" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "static-stdlib" -d "Statically link the Swift standard library" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "strict-concurrency" -d "Specify the how strict concurrency checking will be. The value may be 'minimal' (most 'Sendable' checking is disabled), 'targeted' ('Sendable' checking is enabled in code that uses the concurrency model, or 'complete' ('Sendable' and other checking is enabled for all code in the module)" -xa "minimal targeted complete" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "strict-memory-safety" -d "Enable strict memory safety checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "suppress-remarks" -d "Suppress all remarks" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "suppress-warnings" -d "Suppress all warnings" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "swift-ptrauth-mode" -d "Mode for staging pointer authentication. Supported modes are LegacyAndStrip, NewAndStrip and NewAndAuth." -xa "LegacyAndStrip NewAndStrip NewAndAuth" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "swift-version" -d "Interpret input according to a specific Swift language version number" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "sysroot" -d "Native Platform sysroot" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "target-cpu" -d "Generate code for a particular CPU variant" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "target-min-inlining-version" -d "Require inlinable code with no '@available' attribute to back-deploy to this version of the '-target' OS" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "target-variant" -d "Generate 'zippered' code for macCatalyst that can run on the specified variant target triple in addition to the main -target triple" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "target" -d "Generate code for the given target <triple>, such as x86_64-apple-macos10.9" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "use-ld" -d "Specifies the flavor of the linker to be used" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "user-module-version" -d "Module version specified from Swift module authors" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "validate-clang-modules-once" -d "Don't verify input files for Clang modules if the module has been successfully validated or loaded during this build session" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "version" -d "Print version information and exit" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "vfsoverlay" -d "Add directory to VFS overlay file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "visualc-tools-root" -d "VisualC++ Tools Root" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "visualc-tools-version" -d "VisualC++ ToolSet Version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -s "v" -o "v" -d "Show commands to run and use verbose output" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "warn-concurrency" -d "Warn about code that is unsafe according to the Swift Concurrency model and will become ill-formed in a future language version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "warn-implicit-overrides" -d "Warn about implicit overrides of protocol members" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "warnings-as-errors" -d "Treat warnings as errors" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "windows-sdk-root" -d "Windows SDK Root" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "windows-sdk-version" -d "Windows SDK Version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "working-directory" -d "Resolve file paths relative to the specified directory" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "Xcc" -d "Pass <arg> to the C/C++/Objective-C compiler" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl test'" -o "Xlinker" -d "Specifies an option which should be passed to the linker" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "access-notes-path" -d "Specify YAML file to override attributes on Swift declarations in this module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "allow-non-resilient-access" -d "Ensures all contents are generated besides exportable decls in the binary module, so non-resilient access can be allowed" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "allowable-client" -d "Module names that are allowed to import this module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "assert-config" -d "Specify the assert_configuration replacement. Possible values are Debug, Release, Unchecked, DisableReplacement." -xa "Debug Release Unchecked DisableReplacement" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "build-id" -d "Specify the build ID argument passed to the linker" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "cache-compile-job" -d "Enable compiler caching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "cache-disable-replay" -d "Skip loading the compilation result from cache" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "cas-path" -d "Path to CAS" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "cas-plugin-option" -d "Option pass to CAS Plugin" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "cas-plugin-path" -d "Path to CAS Plugin" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "clang-build-session-file" -d "Use the last modification time of <file> as the underlying Clang build session timestamp" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "clang-scanner-module-cache-path" -d "Specifies the Clang dependency scanner module cache path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "clang-target-variant" -d "Separately set the target we should use for internal Clang instance for the 'zippered' code for macCatalyst" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "clang-target" -d "Separately set the target we should use for internal Clang instance" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "color-diagnostics" -d "Print diagnostics in color" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "compiler-assertions" -d "Enable internal self-checks while compiling" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "continue-building-after-errors" -d "Continue building, even after errors are encountered" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "coverage-prefix-map" -d "Remap source paths in coverage info" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "cxx-interoperability-mode" -d "Enables C++ interoperability; pass 'default' to enable or 'off' to disable" -xa "default off" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "debug-info-format" -d "Specify the debug info format type to either 'dwarf' or 'codeview'" -xa "dwarf codeview" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "debug-info-store-invocation" -d "Emit the compiler invocation in the debug info." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "debug-prefix-map" -d "Remap source paths in debug info" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "default-isolation" -d "Specify the default actor isolation: MainActor or nonisolated. Defaults to nonisolated." -xa "MainActor nonisolated" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "diagnostic-style" -d "The formatting style used when printing diagnostics ('swift' or 'llvm')" -xa "swift llvm" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "disable-actor-data-race-checks" -d "Disable runtime checks for actor data races" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "disable-autolinking-runtime-compatibility-concurrency" -d "Do not use autolinking for the concurrency runtime compatibility library" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "disable-autolinking-runtime-compatibility-dynamic-replacements" -d "Do not use autolinking for the dynamic replacement runtime compatibility library" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "disable-autolinking-runtime-compatibility" -d "Do not use autolinking for runtime compatibility libraries" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "disable-clang-target" -d "Disable a separately specified target triple for Clang instance to use" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "disable-dynamic-actor-isolation" -d "Disable dynamic actor isolation checks" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "disable-experimental-feature" -d "Disable an experimental feature" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "disable-incremental-imports" -d "Disable cross-module incremental build metadata and driver scheduling for Swift modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "disable-only-one-dependency-file" -d "Disables incremental build optimization that only produces one dependencies file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "disable-sandbox" -d "Disable using the sandbox when executing subprocesses" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "disable-upcoming-feature" -d "Disable a feature that will be introduced in an upcoming language version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "disallow-use-new-driver" -d "Disable using new swift-driver" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "dwarf-version" -d "DWARF debug info version to produce if requested" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -s "D" -o "D" -d "Marks a conditional compilation flag as true" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "embed-tbd-for-module" -d "Embed symbols from the module in the emitted tbd file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "emit-module-dependencies-path" -d "Emit a discovered dependencies file for the emit-module task to <path>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "emit-module-serialize-diagnostics-path" -d "Emit a serialized diagnostics file for the emit-module task to <path>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "enable-actor-data-race-checks" -d "Emit runtime checks for actor data races" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "enable-autolinking-runtime-compatibility-bytecode-layouts" -d "Enable autolinking for the bytecode layouts runtime compatibility library" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "enable-bare-slash-regex" -d "Enable the use of forward slash regular-expression literal syntax" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "enable-builtin-module" -d "Enables the explicit import of the Builtin module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "enable-deterministic-check" -d "Check compiler output determinism by running it twice" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "enable-experimental-additive-arithmetic-derivation" -d "Enable experimental 'AdditiveArithmetic' derived conformances" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "enable-experimental-concise-pound-file" -d "Enable experimental concise '#file' identifier" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "enable-experimental-feature" -d "Enable an experimental feature" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "enable-experimental-forward-mode-differentiation" -d "Enable experimental forward mode differentiation" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "enable-incremental-imports" -d "Enable cross-module incremental build metadata and driver scheduling for Swift modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "enable-library-evolution" -d "Build the module to allow binary-compatible library evolution" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "enable-only-one-dependency-file" -d "Enables incremental build optimization that only produces one dependencies file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "enable-upcoming-feature" -d "Enable a feature that will be introduced in an upcoming language version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "enforce-exclusivity" -d "Enforce law of exclusivity" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "executor-factory" -d "Specify the factory to use to create the default executors for Swift Concurrency.  This must be a type conforming to the 'ExecutorFactory' protocol." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "experimental-allow-non-resilient-access" -d "Deprecated; use -allow-non-resilient-access instead" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "experimental-package-bypass-resilience" -d "Deprecated; has no effect" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "experimental-package-cmo-abort-on-deserialization-fail" -d "Abort if a deserialization error is found while package optimization is enabled" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "experimental-package-cmo" -d "Deprecated; use -package-cmo instead" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "explain-module-dependency-detailed" -d "Emit remarks describing every possible dependency path that explains why compilation may depend on a module with a given name." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "explain-module-dependency" -d "Emit remark describing why compilation may depend on a module with a given name." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "explicit-auto-linking" -d "Instead of linker-load directives, have the driver specify all link dependencies on the linker invocation. Requires '-explicit-module-build'." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "export-as" -d "Module name to use when referenced in clients module interfaces" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "external-plugin-path" -d "Add directory to the plugin search path with a plugin server executable" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -s "e" -o "e" -d "Executes a line of code provided on the command line" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "file-compilation-dir" -d "The compilation directory to embed in the debug info. Coverage mapping is not supported yet." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "file-prefix-map" -d "Remap source paths in debug, coverage, and index info" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "framework" -d "Specifies a framework which should be linked against" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "Fsystem" -d "Add directory to system framework search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "F" -d "Add directory to framework search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "gdwarf-types" -d "Emit full DWARF type info." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "gline-tables-only" -d "Emit minimal debug info for backtraces only" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "gnone" -d "Don't emit debug info" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "g" -d "Emit debug info. This is the preferred setting for debugging with LLDB." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "help" -d "Display available options" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "in-process-plugin-server-path" -d "Path to dynamic library plugin server" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "index-ignore-clang-modules" -d "Avoid indexing clang modules (pcms)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "index-include-locals" -d "Include local definitions/references in the produced index data." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "index-store-path" -d "Store indexing data to <path>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "index-unit-output-path" -d "Use <path> as the output path in the produced index data." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "Isystem" -d "Add directory to the system import search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "I" -d "Add directory to the import search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -s "j" -o "j" -d "Number of commands to execute in parallel" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "libc" -d "libc runtime library to use" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "link-objc-runtime" -d "Deprecated" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "load-pass-plugin" -d "Load LLVM pass plugin from a dynamic shared object file." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "load-plugin-executable" -d "Path to a compiler plugin executable and a comma-separated list of module names where the macro types are declared" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "load-plugin-library" -d "Path to a dynamic library containing compiler plugins such as macros" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "load-resolved-plugin" -d "Path to resolved plugin configuration and a comma-separated list of module names where the macro types are declared. Library path and exectuable path can be empty if not used" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "locale" -d "Choose a language for diagnostic messages" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "localization-path" -d "Path to localized diagnostic messages directory" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -s "L" -o "L" -d "Add directory to library link search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -s "l" -o "l" -d "Specifies a library which should be linked against" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "module-abi-name" -d "ABI name to use for the contents of this module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "module-alias" -d "If a source file imports or references module <alias_name>, the <real_name> is used for the contents of the file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "module-cache-path" -d "Specifies the module cache path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "module-link-name" -d "Library to link against when using this module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "module-name" -d "Name of the module to build" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "no-color-diagnostics" -d "Do not print diagnostics in color" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "no-warnings-as-errors" -d "Treat warnings as warnings" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "nostdimport" -d "Don't search the standard library or toolchain import paths for modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "nostdlibimport" -d "Don't search the standard library import path for modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "num-threads" -d "Enable multi-threading and specify number of threads" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "Onone" -d "Compile without any optimization" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "Osize" -d "Compile with optimizations and target small code size" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "Ounchecked" -d "Compile with optimizations and remove runtime safety checks" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "O" -d "Compile with optimizations" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "package-cmo" -d "Enable optimization to perform defalut CMO within a package boundary" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "package-name" -d "Name of the package the module belongs to" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "plugin-path" -d "Add directory to the plugin search path" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "prefix-serialized-debugging-options" -d "Apply debug prefix mappings to serialized debug info in Swiftmodule files" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "pretty-print" -d "Pretty-print the output JSON" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "print-educational-notes" -d "Include educational notes in printed diagnostic output, if available" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "print-supported-features" -d "Print information about features supported by the compiler" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "print-target-info" -d "Print target information for the given target <triple>, such as x86_64-apple-macos10.9" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "project-name" -d "Name of the project this module to build belongs to" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "public-module-name" -d "Public facing module name to use in diagnostics and documentation" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "Rabi-inference" -d "Emit a remark when an '@abi' attribute adds an attribute or modifier to the ABI declaration based on its presence in the API" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "Rcache-compile-job" -d "Show remarks for compiler caching" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "Rcross-import" -d "Emit a remark if a cross-import of a module is triggered." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "remove-runtime-asserts" -d "Remove runtime safety checks." # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "Rindexing-system-module" -d "Emit a remark when indexing a system module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "Rmacro-loading" -d "Emit remarks about loaded macro implementations" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "Rmodule-api-import" -d "Emit remarks about the import bridging in each element composing the API" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "Rmodule-loading" -d "Emit remarks about loaded module" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "Rmodule-recovery" -d "Emit remarks about contextual inconsistencies in loaded modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "Rmodule-serialization" -d "Emit remarks about module serialization" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "Rpass-missed" -d "Report missed transformations by optimization passes whose name matches the given POSIX regular expression" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "Rpass" -d "Report performed transformations by optimization passes whose name matches the given POSIX regular expression" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "Rskip-explicit-interface-build" -d "Emit a remark if an explicit module interface invocation has an early exit because the expected output is up-to-date" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "runtime-compatibility-version" -d "Link compatibility library for Swift runtime version, or 'none'" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "save-optimization-record-passes" -d "Only include passes which match a specified regular expression in the generated optimization record (by default, include all passes)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "save-optimization-record-path" -d "Specify the file name of any generated optimization record" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "save-optimization-record" -d "Generate a YAML optimization record file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "save-optimization-record" -d "Generate an optimization record file in a specific format (default: YAML)" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "scanner-prefix-map-sdk" -d "Remap paths within SDK reported by dependency scanner" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "scanner-prefix-map-toolchain" -d "Remap paths within toolchain directory reported by dependency scanner" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "scanner-prefix-map" -d "Remap paths reported by dependency scanner" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "sdk-module-cache-path" -d "Specifies the module cache path for explicitly-built SDK modules" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "sdk" -d "Compile against <sdk>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "serialize-diagnostics-path" -d "Emit a serialized diagnostics file to <path>" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "static-executable" -d "Statically link the executable" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "static-stdlib" -d "Statically link the Swift standard library" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "strict-concurrency" -d "Specify the how strict concurrency checking will be. The value may be 'minimal' (most 'Sendable' checking is disabled), 'targeted' ('Sendable' checking is enabled in code that uses the concurrency model, or 'complete' ('Sendable' and other checking is enabled for all code in the module)" -xa "minimal targeted complete" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "strict-memory-safety" -d "Enable strict memory safety checking" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "suppress-remarks" -d "Suppress all remarks" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "suppress-warnings" -d "Suppress all warnings" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "swift-ptrauth-mode" -d "Mode for staging pointer authentication. Supported modes are LegacyAndStrip, NewAndStrip and NewAndAuth." -xa "LegacyAndStrip NewAndStrip NewAndAuth" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "swift-version" -d "Interpret input according to a specific Swift language version number" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "sysroot" -d "Native Platform sysroot" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "target-cpu" -d "Generate code for a particular CPU variant" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "target-min-inlining-version" -d "Require inlinable code with no '@available' attribute to back-deploy to this version of the '-target' OS" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "target-variant" -d "Generate 'zippered' code for macCatalyst that can run on the specified variant target triple in addition to the main -target triple" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "target" -d "Generate code for the given target <triple>, such as x86_64-apple-macos10.9" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "use-ld" -d "Specifies the flavor of the linker to be used" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "user-module-version" -d "Module version specified from Swift module authors" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "validate-clang-modules-once" -d "Don't verify input files for Clang modules if the module has been successfully validated or loaded during this build session" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "version" -d "Print version information and exit" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "vfsoverlay" -d "Add directory to VFS overlay file" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "visualc-tools-root" -d "VisualC++ Tools Root" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "visualc-tools-version" -d "VisualC++ ToolSet Version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -s "v" -o "v" -d "Show commands to run and use verbose output" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "warn-concurrency" -d "Warn about code that is unsafe according to the Swift Concurrency model and will become ill-formed in a future language version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "warn-implicit-overrides" -d "Warn about implicit overrides of protocol members" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "warnings-as-errors" -d "Treat warnings as errors" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "windows-sdk-root" -d "Windows SDK Root" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "windows-sdk-version" -d "Windows SDK Version" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "working-directory" -d "Resolve file paths relative to the specified directory" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "Xcc" -d "Pass <arg> to the C/C++/Objective-C compiler" # subcommands flags
complete -c "swift" -n "__fish_seen_subcommand_from 'repl repl'" -o "Xlinker" -d "Specifies an option which should be passed to the linker" # subcommands flags