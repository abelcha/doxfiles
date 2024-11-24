# author: Arthur Liu
# GitHub: https://www.github.com/archmagees


##############################
# swift --version
complete -c swift -n '__swift_commands_conforms swift' -f -l version -d 'Print version information and exit' -f

# swift --help
complete -c swift -n '__swift_commands_conforms swift --help --version' -f -l help -d 'Display available options' -f

# swift subcommand --path `|` , where cursor blink and last option needs an path as its argument
complete -c swift -n '__swift_options_argument_is_path' -f


############################################################
### swift package
############################################################
complete -c swift -n '__swift_commands_conforms swift' -f -a package -r
complete -c swift -n '__swift_commands_conforms swift package' -a clean -d 'Delete build artifacts'
complete -c swift -n '__swift_commands_conforms swift package clean' -f
complete -c swift -n '__swift_commands_conforms swift package' -f -a completion-tool -d 'Completion tool (for shell completions)' -r
complete -c swift -n '__swift_commands_conforms swift package' -f -a config -d 'Manipulate configuration of the package' -r
complete -c swift -n '__swift_commands_conforms swift package' -f -a describe -d 'Describe the current package' -r
complete -c swift -n '__swift_commands_conforms swift package' -f -a dump-package -d 'Print parsed Package.swift as JSON' -f
complete -c swift -n '__swift_commands_conforms swift package' -f -a edit -d 'Put a package in editable mode' -f
complete -c swift -n '__swift_commands_conforms swift package' -f -a generate-xcodeproj -d 'Generates an Xcode project' -f
complete -c swift -n '__swift_commands_conforms swift package' -f -a init -d 'Initialize a new package' -f
complete -c swift -n '__swift_commands_conforms swift package' -f -a reset -d 'Reset the complete cache/build directory' -f
complete -c swift -n '__swift_commands_conforms swift package' -f -a resolve -d 'Resolve package dependencies' -f
complete -c swift -n '__swift_commands_conforms swift package' -f -a show-dependencies -d 'Print the resolved dependency graph' -f
complete -c swift -n '__swift_commands_conforms swift package' -f -a tools-version -d 'Manipulate tools version of the current package' -f
complete -c swift -n '__swift_commands_conforms swift package' -f -a unedit -d 'Remove a package from editable mode' -f
complete -c swift -n '__swift_commands_conforms swift package' -f -a update -d 'Update package dependencies' -f




############################################################
### swift subcommand [option]
############################################################
function __swift_commands_conforms
	set possible_cmds
	set options

	set all_cmds (commandline -opc)

	for word in $all_cmds
		if not string match -q -- '-*' $word
			set -a possible_cmds $word
		else
			set -a options $word
		end
	end

	# failsafe, the last input is an option which needs an argument, like:
	# `swift package --configuration|` now cursor stop at the end of input.
	if __swift_check_is_an_option_that_needs_argument $all_cmds[-1]
		return 1
	end

	set required_commands
	set exclusive_options

	for word in $argv
		if not string match -q -- '-*' $word
			set required_commands $required_commands $word
		else
			set exclusive_options $exclusive_options $word
		end
	end

	# almost help and version are exclusive with other options
	set exclusive_options $exclusive_options --help --version

	# exclude exclusiion options in advance
	for option in $exclusive_options
		if contains -- $option $options
			return 1
		end
	end

	set cmds_count (count $possible_cmds)

	for word in $options
		if __swift_check_is_an_option_that_needs_argument $word
				set cmds_count (math $cmds_count - 1)
		end
	end

	if [ $cmds_count -ne (count $required_commands) ]
		return 1
	end

	set counter 1
	for i in (seq 1 (count $possible_cmds))
		if [ (count $required_commands) -ge $counter ]
			if [ $possible_cmds[$i] = $required_commands[$counter] ]
				set counter (math $counter + 1)
			else if [ $required_commands[$counter] = subcommand ]
				switch $possible_cmds[$i]
					case 'package' 'build' 'run' 'test'
						set counter (math $counter + 1)
				end
			end
		end
	end

	if [ (count $required_commands) -ne (math $counter - 1) ]
		return 1
	end




	return 0
end

function __swift_options_conforms
	set possible_cmds
	set options

	set all_cmds (commandline -opc)

	for word in $all_cmds
		if not string match -q -- '-*' $word
			set -a possible_cmds $word
		else
			set -a options $word
		end
	end

	set required_commands
	set exclusive_options

	for word in $argv
		if not string match -q -- '-*' $word
			set required_commands $required_commands $word
		else
			set exclusive_options $exclusive_options $word
		end
	end



	set cmds_count (count $possible_cmds)

	for word in $options
		if __swift_check_is_an_option_that_needs_argument $word
				set cmds_count (math $cmds_count - 1)
		end
	end

	# failsafe, because the previous step could execute minus one more time if
	# the last input is an option which needs argument
	if [ $all_cmds[-1] = $argv[-1] ]
		set cmds_count (math $cmds_count + 1)
	end

	if [ $cmds_count -ne (count $required_commands) ]
		return 1
	end

	set counter 1
	for i in (seq 1 (count $possible_cmds))
		if [ (count $required_commands) -ge $counter ]
			if [ $possible_cmds[$i] = $required_commands[$counter] ]
				set counter (math $counter + 1)
			# else if [ $required_commands[$counter] = subcommand ]
			# 	switch $possible_cmds[$i]
			# 		case 'package' 'build' 'run' 'test'
			# 			set counter (math $counter + 1)
			# 	end
			end
		end
	end

	if [ (count $required_commands) -ne (math $counter - 1) ]
		return 1
	end

	if [ $all_cmds[-1] = $argv[-1] ]
		return 0
	end

	return 1
end



function __swift_options_argument_is_path
	set inputs (commandline -opc)
	switch $inputs[-1]
	case '--build-path' '--package-path' '--path' '--output'
		return 1
	end
	return 0
end



function _format_is_swift_subcommand_option
	__swift_commands_conforms swift subcommand $argv
	return $status
end



function __swift_package_editable_option
	# swift package edit or unedit `Package` --options
	set inputs (commandline -opc)
	if __swift_commands_conforms $argv[1..-2] $inputs[-1] $argv[-1]
		if contains $inputs[-1] (__swift_package_dependencies)
			return 0
		end
	end
	return 1
end



function __swift_package_dependencies
	swift package show-dependencies --format flatlist
end



function __swift_targets
	swift package describe --type text | grep ' Name:' | string sub -s 11
end



function __swift_products
	swift package describe --type text
end



function __swift_check_is_an_option_that_needs_argument

	switch $argv
	case '--build-path' '--configuration' '--jobs' '--package-path' '--package-url' '--path' '--branch' '--output' '--type' '--name' '--num-workers' '--target' '--set' '--format'
		return 0
	end
	return 1
end

############################################################
### swift package
############################################################

############################################################
### swift subcommand [options] argument subcommand
############################################################
# could optimize it later to support use option without `=` as suffix and
# supply tab completion for argument which will not effect following
# subcommand
complete -c swift -n '_format_is_swift_subcommand_option --build-path' -f -l build-path -d 'Specify build/cache directory [default: ./.build]'

complete -c swift -n '_format_is_swift_subcommand_option --configuration' -f -l configuration -d 'Build with configuration (debug|release) [default: debug]'
complete -c swift -n '__swift_options_conforms swift package --configuration' -f -a 'debug release' -r

complete -c swift -n '_format_is_swift_subcommand_option --jobs' -f -s j -l jobs -d 'The number of jobs to spawn in parallel during the build process' -r

complete -c swift -n '__swift_options_conforms swift package --jobs' -f -a '1 2 3 4 8 16 28'

complete -c swift -n '_format_is_swift_subcommand_option --package-path' -f -l package-path -d 'Change working directory before any other operation' -r

############################################################
### swift package [options] subcommand
############################################################
# template
# complete -c swift -n '_format_is_swift_subcommand_option --' -f -l  -d '' -r
complete -c swift -n '_format_is_swift_subcommand_option --disable-automatic-resolution' -f -l disable-automatic-resolution -d 'Disable automatic resolution if Package.resolved file is out-of-date' -r
complete -c swift -n '_format_is_swift_subcommand_option --disable-index-store' -f -l disable-index-store -d 'Disable indexing-while-building feature' -r

complete -c swift -n '_format_is_swift_subcommand_option --disable-package-manifest-caching' -f -l disable-package-manifest-caching -d 'Disable caching Package.swift manifests' -r

complete -c swift -n '_format_is_swift_subcommand_option --disable-prefetching' -f -l disable-prefetching -d '' -r

complete -c swift -n '_format_is_swift_subcommand_option --disable-sandbox' -f -l disable-sandbox -d 'Disable using the sandbox when executing subprocesses' -r

complete -c swift -n '_format_is_swift_subcommand_option --enable-index-store' -f -l enable-index-store -d 'Enable indexing-while-building feature' -r

complete -c swift -n '_format_is_swift_subcommand_option --enable-pubgrub-resolver' -f -l enable-pubgrub-resolver -d '[Experimental] Enable the new Pubgrub dependency resolver' -r

complete -c swift -n '_format_is_swift_subcommand_option --enable-test-discovery' -f -l enable-test-discovery -d 'Enable test discovery on platforms without Objective-C runtime' -r

complete -c swift -n '_format_is_swift_subcommand_option --no-static-swift-stdlib' -f -l no-static-swift-stdlib -d 'Do not link Swift stdlib statically [default]' -r

complete -c swift -n '_format_is_swift_subcommand_option --sanitize' -f -l sanitize -d 'Turn on runtime checks for erroneous behavior' -r

complete -c swift -n '_format_is_swift_subcommand_option --skip-update' -f -l skip-update -d 'Skip updating dependencies from their remote during a resolution' -r

complete -c swift -n '_format_is_swift_subcommand_option --static-swift-stdlib' -f -l static-swift-stdlib -d 'Link Swift stdlib statically' -r

complete -c swift -n '_format_is_swift_subcommand_option --verbose -v' -f -s v -l verbose -d 'Increase verbosity of informational output' -r

complete -c swift -n '_format_is_swift_subcommand_option -Xcc' -f -o Xcc -d 'Pass flag through to all C compiler invocations' -r

complete -c swift -n '_format_is_swift_subcommand_option -Xcxx' -f -o Xcxx -d 'Pass flag through to all C++ compiler invocations' -r

complete -c swift -n '_format_is_swift_subcommand_option -Xlinker' -f -o Xlinker -d 'Pass flag through to all linker invocations' -r

complete -c swift -n '_format_is_swift_subcommand_option -Xswiftc' -f -o Xswiftc -d 'Pass flag through to all Swift compiler invocations' -r


############################################################
### swift package completion-tool
############################################################
complete -c swift -n '__swift_commands_conforms swift package completion-tool' -r -a 'generate-bash-script generate-zsh-script list-dependencies list-executables' -f

############################################################
### swift package config
############################################################
complete -c swift -n '__swift_commands_conforms swift package config' -r -a 'get-mirror' -d 'Print mirror configuration for the given package dependency' -f
complete -c swift -n '__swift_commands_conforms swift package config' -r -a 'set-mirror' -d 'Set a mirror for a dependency' -f
complete -c swift -n '__swift_commands_conforms swift package config' -r -a 'unset-mirror' -d 'Remove an existing mirror' -f

complete -c swift -n '__swift_commands_conforms swift package config get-mirror --package-url' -f -l package-url -d 'The package dependency url' -r

complete -c swift -n '__swift_commands_conforms swift package config set-mirror --mirror-url' -f -l mirror-url= -d 'The mirror url' -r
complete -c swift -n '__swift_commands_conforms swift package config set-mirror --package-url' -f -l package-url -d 'The package dependency url' -r

complete -c swift -n '__swift_commands_conforms swift package config unset-mirror --mirror-url' -f -l mirror-url= -d 'The mirror url' -r
complete -c swift -n '__swift_commands_conforms swift package config unset-mirror --package-url' -f -l package-url -d 'The package dependency url' -r



############################################################
### swift package describe
############################################################
complete -c swift -n '__swift_commands_conforms swift package describe --type' -f -l type -d 'json|text' -r
complete -c swift -n '__swift_options_conforms swift package describe --type' -f -a 'json text' -r



############################################################
### swift package edit
############################################################


complete -c swift -n '__swift_commands_conforms swift package edit' -r -a '(__swift_package_dependencies)' -r
complete -c swift -n '__swift_package_editable_option swift package edit --branch' -f -l branch -d 'The branch to create' -r
complete -c swift -n '__swift_package_editable_option swift package edit --path' -f -l path -d 'Create or use the checkout at this path' -r
complete -c swift -n '__swift_package_editable_option swift package edit --revision' -f -l revision -d 'The revision to edit' -r


############################################################
### swift package generate-xcodeproj
############################################################
complete -c swift -n '__swift_commands_conforms swift package generate-xcodeproj --enable-code-coverage' -f -l enable-code-coverage -d 'Enable code coverage in the generated project' -f
complete -c swift -n '__swift_commands_conforms swift package generate-xcodeproj --legacy-scheme-generator' -f -l legacy-scheme-generator -d 'Use the legacy scheme generator' -f
complete -c swift -n '__swift_commands_conforms swift package generate-xcodeproj --output' -l output -d 'Path where the Xcode project should be generated' -r

complete -c swift -n '__swift_commands_conforms swift package generate-xcodeproj --skip-extra-files' -l skip-extra-files -d 'Do not add file references for extra files to the generated Xcode project' -f
complete -c swift -n '__swift_commands_conforms swift package generate-xcodeproj --watch' -f -l watch -d 'Watch for changes to the Package manifest to regenerate the Xcode project' -f
complete -c swift -n '__swift_commands_conforms swift package generate-xcodeproj --xcconfig-overrides' -f -l xcconfig-overrides -d 'Path to xcconfig file' -r



############################################################
### swift package init
############################################################
complete -c swift -n '__swift_commands_conforms swift package init --name' -f -l name -d 'Provide custom package name' -r
complete -c swift -n '__swift_commands_conforms swift package init --type' -f -l type -d 'empty|library|executable|system-module|manifest' -r
complete -c swift -n '__swift_options_conforms swift package init --type' -f -a 'empty library executable system-module manifest' -r



############################################################
### swift package show-dependencies
############################################################
complete -c swift -n '__swift_commands_conforms swift package show-dependencies --format' -f -l format -d 'text|dot|json|flatlist' -r
complete -c swift -n '__swift_options_conforms swift package show-dependencies --format' -f -a 'text dot json flatlist' -f



############################################################
### swift package tools-version
############################################################
complete -c swift -n '__swift_commands_conforms swift package tools-version --set --set-current' -f -l set -d 'Set tools version of package to the given value' -r
complete -c swift -n '__swift_options_conforms swift package tools-version --set' -f -a '5.1 5.0 4.2 4.1'
complete -c swift -n '__swift_commands_conforms swift package tools-version --set-current --set' -f -l set-current -d 'Set tools version of package to the current tools version in use' -f



############################################################
### swift package unedit
############################################################
complete -c swift -n '__swift_commands_conforms swift package unedit' -r -a '(__swift_package_dependencies)' -r
complete -c swift -n '__swift_package_editable_option swift package unedit --force' -f -l force -d 'Unedit the package even if it has uncommited and unpushed changes.' -r





############################################################
### swift build
############################################################
complete -c swift -n '__swift_commands_conforms swift' -f -a build -r

### swift build [option]
# has been implemented in function `_format_is_swift_subcommand_option`
complete -c swift -n '__swift_commands_conforms swift build --build-tests' -f -l build-tests -d 'Build both source and test targets' -r
complete -c swift -n '__swift_commands_conforms swift build --product' -f -l product -d 'Build the specified product' -r
# complete -c swift -n '__swift_options_conforms swift build --product' -a '(__swift_products)'
complete -c swift -n '__swift_commands_conforms swift build --show-bin-path' -f -l show-bin-path -d 'Print the binary output path' -r
complete -c swift -n '__swift_commands_conforms swift build --target' -f -l target -d 'Build the specified target' -r
complete -c swift -n '__swift_options_conforms swift build --target' -f -a '(__swift_targets)'





############################################################
### swift run
############################################################
complete -c swift -n '__swift_commands_conforms swift' -f -a run -r


############################################################
### swift run [options] [executable [arguments ...]]
############################################################
# --build-tests is in both build and run
complete -c swift -n '__swift_commands_conforms swift run --build-tests' -f -l build-tests -d 'Build both source and test targets' -r

# unique options for swift run
complete -c swift -n '__swift_commands_conforms swift run --repl' -f -l repl -d 'Launch Swift REPL for the package' -r
complete -c swift -n '__swift_commands_conforms swift run --skip-build' -f -l skip-build -d 'Skip building the executable product' -r





############################################################
### swift test [options]
############################################################
complete -c swift -n '__swift_commands_conforms swift' -f -a 'test' -r

complete -c swift -n '__swift_commands_conforms swift test --enable-code-coverage' -l enable-code-coverage -d 'Test with code coverage enabled'
complete -c swift -n '__swift_commands_conforms swift test --filter' -l filter -d 'Run test cases matching regular expression, Format: <test-target>.<test-case> or <test-target>.<test-case>/<test>'
complete -c swift -n '__swift_options_conforms swift test --filter' -a 'REGEX' -d 'Format: <test-target>.<test-case> or <test-target>.<test-case>/<test>'
complete -c swift -n '__swift_commands_conforms swift test --generate-linuxmain' -l generate-linuxmain -d 'Generate LinuxMain.swift entries for the package'
complete -c swift -n '__swift_commands_conforms swift test --list-tests -l' -s l -l list-tests -d 'Lists test methods in specifier format'
complete -c swift -n '__swift_commands_conforms swift test --num-workers' -l num-workers -d 'Number of tests to execute in parallel.'
complete -c swift -n '__swift_options_conforms swift test --num-workers' -a '1 2 3 4 8 16 28 orAnyInt'
# must use in pair with `--num-workers`
complete -c swift -n '__swift_commands_conforms swift test --parallel' -l parallel -d 'Run the tests in parallel.'
complete -c swift -n '__swift_commands_conforms swift test --skip-build' -l skip-build -d 'Skip building the test target'
# A function which filters options which starts with "-" from $argv.
function _swift_swift_preprocessor
    set -l results
    for i in (seq (count $argv))
        switch (echo $argv[$i] | string sub -l 1)
            case '-'
            case '*'
                echo $argv[$i]
        end
    end
end

function _swift_swift_using_command
    set -l currentCommands (_swift_swift_preprocessor (commandline -opc))
    set -l expectedCommands (string split " " $argv[1])
    set -l subcommands (string split " " $argv[2])
    if [ (count $currentCommands) -ge (count $expectedCommands) ]
        for i in (seq (count $expectedCommands))
            if [ $currentCommands[$i] != $expectedCommands[$i] ]
                return 1
            end
        end
        if [ (count $currentCommands) -eq (count $expectedCommands) ]
            return 0
        end
        if [ (count $subcommands) -gt 1 ]
            for i in (seq (count $subcommands))
                if [ $currentCommands[(math (count $expectedCommands) + 1)] = $subcommands[$i] ]
                    return 1
                end
            end
        end
        return 0
    end
    return 1
end

complete -c swift -n '_swift_swift_using_command "swift run"' -l package-path -d 'Specify the package path to operate on (default current directory). This changes the working directory before any other operation' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift run"' -l cache-path -d 'Specify the shared cache directory path' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift run"' -l config-path -d 'Specify the shared configuration directory path' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift run"' -l security-path -d 'Specify the shared security directory path' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift run"' -l scratch-path -d 'Specify a custom scratch directory path (default .build)' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift run"' -l swift-sdks-path -d 'Path to the directory containing installed Swift SDKs' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift run"' -l pkg-config-path -d 'Specify alternative path to search for pkg-config `.pc` files. Use the option multiple times to
specify more than one path.' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift run"' -l enable-dependency-cache -d 'Use a shared cache when fetching dependencies'
complete -c swift -n '_swift_swift_using_command "swift run"' -l disable-dependency-cache -d 'Use a shared cache when fetching dependencies'
complete -c swift -n '_swift_swift_using_command "swift run"' -l enable-build-manifest-caching
complete -c swift -n '_swift_swift_using_command "swift run"' -l disable-build-manifest-caching
complete -c swift -n '_swift_swift_using_command "swift run"' -l manifest-cache -d 'Caching mode of Package.swift manifests (shared: shared cache, local: package\'s build directory, none: disabled'
complete -c swift -n '_swift_swift_using_command "swift run"' -l verbose -s v -d 'Increase verbosity to include informational output'
complete -c swift -n '_swift_swift_using_command "swift run"' -l very-verbose -l vv -d 'Increase verbosity to include debug output'
complete -c swift -n '_swift_swift_using_command "swift run"' -l quiet -s q -d 'Decrease verbosity to only include error output.'
complete -c swift -n '_swift_swift_using_command "swift run"' -l disable-sandbox -d 'Disable using the sandbox when executing subprocesses'
complete -c swift -n '_swift_swift_using_command "swift run"' -l netrc -d 'Use netrc file even in cases where other credential stores are preferred'
complete -c swift -n '_swift_swift_using_command "swift run"' -l enable-netrc -d 'Load credentials from a netrc file'
complete -c swift -n '_swift_swift_using_command "swift run"' -l disable-netrc -d 'Load credentials from a netrc file'
complete -c swift -n '_swift_swift_using_command "swift run"' -l netrc-file -d 'Specify the netrc file path' -r -f -a '(for i in *.{}; echo $i;end)'
complete -c swift -n '_swift_swift_using_command "swift run"' -l enable-keychain -d 'Search credentials in macOS keychain'
complete -c swift -n '_swift_swift_using_command "swift run"' -l disable-keychain -d 'Search credentials in macOS keychain'
complete -c swift -n '_swift_swift_using_command "swift run"' -l resolver-fingerprint-checking
complete -c swift -n '_swift_swift_using_command "swift run"' -l resolver-signing-entity-checking
complete -c swift -n '_swift_swift_using_command "swift run"' -l enable-signature-validation -d 'Validate signature of a signed package release downloaded from registry'
complete -c swift -n '_swift_swift_using_command "swift run"' -l disable-signature-validation -d 'Validate signature of a signed package release downloaded from registry'
complete -c swift -n '_swift_swift_using_command "swift run"' -l enable-prefetching
complete -c swift -n '_swift_swift_using_command "swift run"' -l disable-prefetching
complete -c swift -n '_swift_swift_using_command "swift run"' -l force-resolved-versions -l disable-automatic-resolution -l only-use-versions-from-resolved-file -d 'Only use versions from the Package.resolved file and fail resolution if it is out-of-date'
complete -c swift -n '_swift_swift_using_command "swift run"' -l skip-update -d 'Skip updating dependencies from their remote during a resolution'
complete -c swift -n '_swift_swift_using_command "swift run"' -l disable-scm-to-registry-transformation -d 'disable source control to registry transformation'
complete -c swift -n '_swift_swift_using_command "swift run"' -l use-registry-identity-for-scm -d 'look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins'
complete -c swift -n '_swift_swift_using_command "swift run"' -l replace-scm-with-registry -d 'look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible'
complete -c swift -n '_swift_swift_using_command "swift run"' -l default-registry-url -d 'Default registry URL to use, instead of the registries.json configuration file'
complete -c swift -n '_swift_swift_using_command "swift run"' -l configuration -s c -d 'Build with configuration' -r -f -k -a 'debug release'
complete -c swift -n '_swift_swift_using_command "swift run"' -o Xcc -d 'Pass flag through to all C compiler invocations'
complete -c swift -n '_swift_swift_using_command "swift run"' -o Xswiftc -d 'Pass flag through to all Swift compiler invocations'
complete -c swift -n '_swift_swift_using_command "swift run"' -o Xlinker -d 'Pass flag through to all linker invocations'
complete -c swift -n '_swift_swift_using_command "swift run"' -o Xcxx -d 'Pass flag through to all C++ compiler invocations'
complete -c swift -n '_swift_swift_using_command "swift run"' -l triple
complete -c swift -n '_swift_swift_using_command "swift run"' -l sdk -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift run"' -l toolchain -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift run"' -l swift-sdk -d 'Filter for selecting a specific Swift SDK to build with'
complete -c swift -n '_swift_swift_using_command "swift run"' -l sanitize -d 'Turn on runtime checks for erroneous behavior, possible values: address, thread, undefined, scudo' -r -f -k -a 'address thread undefined scudo'
complete -c swift -n '_swift_swift_using_command "swift run"' -l auto-index-store -d 'Enable or disable indexing-while-building feature'
complete -c swift -n '_swift_swift_using_command "swift run"' -l enable-index-store -d 'Enable or disable indexing-while-building feature'
complete -c swift -n '_swift_swift_using_command "swift run"' -l disable-index-store -d 'Enable or disable indexing-while-building feature'
complete -c swift -n '_swift_swift_using_command "swift run"' -l enable-parseable-module-interfaces
complete -c swift -n '_swift_swift_using_command "swift run"' -l jobs -s j -d 'The number of jobs to spawn in parallel during the build process'
complete -c swift -n '_swift_swift_using_command "swift run"' -l use-integrated-swift-driver
complete -c swift -n '_swift_swift_using_command "swift run"' -l explicit-target-dependency-import-check
complete -c swift -n '_swift_swift_using_command "swift run"' -l experimental-explicit-module-build
complete -c swift -n '_swift_swift_using_command "swift run"' -l build-system -r -f -k -a 'native xcode'
complete -c swift -n '_swift_swift_using_command "swift run"' -o debug-info-format
complete -c swift -n '_swift_swift_using_command "swift run"' -l enable-dead-strip -d 'Disable/enable dead code stripping by the linker'
complete -c swift -n '_swift_swift_using_command "swift run"' -l disable-dead-strip -d 'Disable/enable dead code stripping by the linker'
complete -c swift -n '_swift_swift_using_command "swift run"' -l disable-local-rpath -d 'Disable adding $ORIGIN/@loader_path to the rpath by default'
complete -c swift -n '_swift_swift_using_command "swift run"' -l repl -d 'Launch Swift REPL for the package'
complete -c swift -n '_swift_swift_using_command "swift run"' -l debugger -d 'Launch the executable in a debugger session'
complete -c swift -n '_swift_swift_using_command "swift run"' -l run -d 'Launch the executable with the provided arguments'
complete -c swift -n '_swift_swift_using_command "swift run"' -l skip-build -d 'Skip building the executable product'
complete -c swift -n '_swift_swift_using_command "swift run"' -l build-tests -d 'Build both source and test targets'
complete -c swift -n '_swift_swift_using_command "swift run"' -l version -d 'Show the version.'
complete -c swift -n '_swift_swift_using_command "swift run"' -o help -s h -l help -d 'Show help information.'
complete -c swift -n '_swift_swift_using_command "swift build"' -l package-path -d 'Specify the package path to operate on (default current directory). This changes the working directory before any other operation' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift build"' -l cache-path -d 'Specify the shared cache directory path' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift build"' -l config-path -d 'Specify the shared configuration directory path' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift build"' -l security-path -d 'Specify the shared security directory path' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift build"' -l scratch-path -d 'Specify a custom scratch directory path (default .build)' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift build"' -l swift-sdks-path -d 'Path to the directory containing installed Swift SDKs' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift build"' -l pkg-config-path -d 'Specify alternative path to search for pkg-config `.pc` files. Use the option multiple times to
specify more than one path.' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift build"' -l enable-dependency-cache -d 'Use a shared cache when fetching dependencies'
complete -c swift -n '_swift_swift_using_command "swift build"' -l disable-dependency-cache -d 'Use a shared cache when fetching dependencies'
complete -c swift -n '_swift_swift_using_command "swift build"' -l enable-build-manifest-caching
complete -c swift -n '_swift_swift_using_command "swift build"' -l disable-build-manifest-caching
complete -c swift -n '_swift_swift_using_command "swift build"' -l manifest-cache -d 'Caching mode of Package.swift manifests (shared: shared cache, local: package\'s build directory, none: disabled'
complete -c swift -n '_swift_swift_using_command "swift build"' -l verbose -s v -d 'Increase verbosity to include informational output'
complete -c swift -n '_swift_swift_using_command "swift build"' -l very-verbose -l vv -d 'Increase verbosity to include debug output'
complete -c swift -n '_swift_swift_using_command "swift build"' -l quiet -s q -d 'Decrease verbosity to only include error output.'
complete -c swift -n '_swift_swift_using_command "swift build"' -l disable-sandbox -d 'Disable using the sandbox when executing subprocesses'
complete -c swift -n '_swift_swift_using_command "swift build"' -l netrc -d 'Use netrc file even in cases where other credential stores are preferred'
complete -c swift -n '_swift_swift_using_command "swift build"' -l enable-netrc -d 'Load credentials from a netrc file'
complete -c swift -n '_swift_swift_using_command "swift build"' -l disable-netrc -d 'Load credentials from a netrc file'
complete -c swift -n '_swift_swift_using_command "swift build"' -l netrc-file -d 'Specify the netrc file path' -r -f -a '(for i in *.{}; echo $i;end)'
complete -c swift -n '_swift_swift_using_command "swift build"' -l enable-keychain -d 'Search credentials in macOS keychain'
complete -c swift -n '_swift_swift_using_command "swift build"' -l disable-keychain -d 'Search credentials in macOS keychain'
complete -c swift -n '_swift_swift_using_command "swift build"' -l resolver-fingerprint-checking
complete -c swift -n '_swift_swift_using_command "swift build"' -l resolver-signing-entity-checking
complete -c swift -n '_swift_swift_using_command "swift build"' -l enable-signature-validation -d 'Validate signature of a signed package release downloaded from registry'
complete -c swift -n '_swift_swift_using_command "swift build"' -l disable-signature-validation -d 'Validate signature of a signed package release downloaded from registry'
complete -c swift -n '_swift_swift_using_command "swift build"' -l enable-prefetching
complete -c swift -n '_swift_swift_using_command "swift build"' -l disable-prefetching
complete -c swift -n '_swift_swift_using_command "swift build"' -l force-resolved-versions -l disable-automatic-resolution -l only-use-versions-from-resolved-file -d 'Only use versions from the Package.resolved file and fail resolution if it is out-of-date'
complete -c swift -n '_swift_swift_using_command "swift build"' -l skip-update -d 'Skip updating dependencies from their remote during a resolution'
complete -c swift -n '_swift_swift_using_command "swift build"' -l disable-scm-to-registry-transformation -d 'disable source control to registry transformation'
complete -c swift -n '_swift_swift_using_command "swift build"' -l use-registry-identity-for-scm -d 'look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins'
complete -c swift -n '_swift_swift_using_command "swift build"' -l replace-scm-with-registry -d 'look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible'
complete -c swift -n '_swift_swift_using_command "swift build"' -l default-registry-url -d 'Default registry URL to use, instead of the registries.json configuration file'
complete -c swift -n '_swift_swift_using_command "swift build"' -l configuration -s c -d 'Build with configuration' -r -f -k -a 'debug release'
complete -c swift -n '_swift_swift_using_command "swift build"' -o Xcc -d 'Pass flag through to all C compiler invocations'
complete -c swift -n '_swift_swift_using_command "swift build"' -o Xswiftc -d 'Pass flag through to all Swift compiler invocations'
complete -c swift -n '_swift_swift_using_command "swift build"' -o Xlinker -d 'Pass flag through to all linker invocations'
complete -c swift -n '_swift_swift_using_command "swift build"' -o Xcxx -d 'Pass flag through to all C++ compiler invocations'
complete -c swift -n '_swift_swift_using_command "swift build"' -l triple
complete -c swift -n '_swift_swift_using_command "swift build"' -l sdk -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift build"' -l toolchain -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift build"' -l swift-sdk -d 'Filter for selecting a specific Swift SDK to build with'
complete -c swift -n '_swift_swift_using_command "swift build"' -l sanitize -d 'Turn on runtime checks for erroneous behavior, possible values: address, thread, undefined, scudo' -r -f -k -a 'address thread undefined scudo'
complete -c swift -n '_swift_swift_using_command "swift build"' -l auto-index-store -d 'Enable or disable indexing-while-building feature'
complete -c swift -n '_swift_swift_using_command "swift build"' -l enable-index-store -d 'Enable or disable indexing-while-building feature'
complete -c swift -n '_swift_swift_using_command "swift build"' -l disable-index-store -d 'Enable or disable indexing-while-building feature'
complete -c swift -n '_swift_swift_using_command "swift build"' -l enable-parseable-module-interfaces
complete -c swift -n '_swift_swift_using_command "swift build"' -l jobs -s j -d 'The number of jobs to spawn in parallel during the build process'
complete -c swift -n '_swift_swift_using_command "swift build"' -l use-integrated-swift-driver
complete -c swift -n '_swift_swift_using_command "swift build"' -l explicit-target-dependency-import-check
complete -c swift -n '_swift_swift_using_command "swift build"' -l experimental-explicit-module-build
complete -c swift -n '_swift_swift_using_command "swift build"' -l build-system -r -f -k -a 'native xcode'
complete -c swift -n '_swift_swift_using_command "swift build"' -o debug-info-format
complete -c swift -n '_swift_swift_using_command "swift build"' -l enable-dead-strip -d 'Disable/enable dead code stripping by the linker'
complete -c swift -n '_swift_swift_using_command "swift build"' -l disable-dead-strip -d 'Disable/enable dead code stripping by the linker'
complete -c swift -n '_swift_swift_using_command "swift build"' -l disable-local-rpath -d 'Disable adding $ORIGIN/@loader_path to the rpath by default'
complete -c swift -n '_swift_swift_using_command "swift build"' -l build-tests -d 'Build both source and test targets'
complete -c swift -n '_swift_swift_using_command "swift build"' -l enable-code-coverage -d 'Enable code coverage'
complete -c swift -n '_swift_swift_using_command "swift build"' -l disable-code-coverage -d 'Enable code coverage'
complete -c swift -n '_swift_swift_using_command "swift build"' -l show-bin-path -d 'Print the binary output path'
complete -c swift -n '_swift_swift_using_command "swift build"' -l print-manifest-job-graph -d 'Write the command graph for the build manifest as a graphviz file'
complete -c swift -n '_swift_swift_using_command "swift build"' -l target -d 'Build the specified target'
complete -c swift -n '_swift_swift_using_command "swift build"' -l product -d 'Build the specified product'
complete -c swift -n '_swift_swift_using_command "swift build"' -l enable-xctest -d 'Enable support for XCTest'
complete -c swift -n '_swift_swift_using_command "swift build"' -l disable-xctest -d 'Enable support for XCTest'
complete -c swift -n '_swift_swift_using_command "swift build"' -l enable-swift-testing -d 'Enable support for Swift Testing'
complete -c swift -n '_swift_swift_using_command "swift build"' -l disable-swift-testing -d 'Enable support for Swift Testing'
complete -c swift -n '_swift_swift_using_command "swift build"' -l static-swift-stdlib -d 'Link Swift stdlib statically'
complete -c swift -n '_swift_swift_using_command "swift build"' -l no-static-swift-stdlib -d 'Link Swift stdlib statically'
complete -c swift -n '_swift_swift_using_command "swift build"' -l version -d 'Show the version.'
complete -c swift -n '_swift_swift_using_command "swift build"' -o help -s h -l help -d 'Show help information.'
complete -c swift -n '_swift_swift_using_command "swift test list"' -l skip-build -d 'Skip building the test target'
complete -c swift -n '_swift_swift_using_command "swift test list"' -l enable-xctest -d 'Enable support for XCTest'
complete -c swift -n '_swift_swift_using_command "swift test list"' -l disable-xctest -d 'Enable support for XCTest'
complete -c swift -n '_swift_swift_using_command "swift test list"' -l enable-swift-testing -d 'Enable support for Swift Testing'
complete -c swift -n '_swift_swift_using_command "swift test list"' -l disable-swift-testing -d 'Enable support for Swift Testing'
complete -c swift -n '_swift_swift_using_command "swift test list"' -s h -l help -d 'Show help information.'
complete -c swift -n '_swift_swift_using_command "swift test last"' -s h -l help -d 'Show help information.'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l package-path -d 'Specify the package path to operate on (default current directory). This changes the working directory before any other operation' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l cache-path -d 'Specify the shared cache directory path' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l config-path -d 'Specify the shared configuration directory path' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l security-path -d 'Specify the shared security directory path' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l scratch-path -d 'Specify a custom scratch directory path (default .build)' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l swift-sdks-path -d 'Path to the directory containing installed Swift SDKs' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l pkg-config-path -d 'Specify alternative path to search for pkg-config `.pc` files. Use the option multiple times to
specify more than one path.' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l enable-dependency-cache -d 'Use a shared cache when fetching dependencies'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l disable-dependency-cache -d 'Use a shared cache when fetching dependencies'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l enable-build-manifest-caching
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l disable-build-manifest-caching
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l manifest-cache -d 'Caching mode of Package.swift manifests (shared: shared cache, local: package\'s build directory, none: disabled'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l verbose -s v -d 'Increase verbosity to include informational output'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l very-verbose -l vv -d 'Increase verbosity to include debug output'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l quiet -s q -d 'Decrease verbosity to only include error output.'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l disable-sandbox -d 'Disable using the sandbox when executing subprocesses'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l netrc -d 'Use netrc file even in cases where other credential stores are preferred'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l enable-netrc -d 'Load credentials from a netrc file'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l disable-netrc -d 'Load credentials from a netrc file'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l netrc-file -d 'Specify the netrc file path' -r -f -a '(for i in *.{}; echo $i;end)'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l enable-keychain -d 'Search credentials in macOS keychain'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l disable-keychain -d 'Search credentials in macOS keychain'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l resolver-fingerprint-checking
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l resolver-signing-entity-checking
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l enable-signature-validation -d 'Validate signature of a signed package release downloaded from registry'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l disable-signature-validation -d 'Validate signature of a signed package release downloaded from registry'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l enable-prefetching
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l disable-prefetching
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l force-resolved-versions -l disable-automatic-resolution -l only-use-versions-from-resolved-file -d 'Only use versions from the Package.resolved file and fail resolution if it is out-of-date'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l skip-update -d 'Skip updating dependencies from their remote during a resolution'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l disable-scm-to-registry-transformation -d 'disable source control to registry transformation'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l use-registry-identity-for-scm -d 'look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l replace-scm-with-registry -d 'look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l default-registry-url -d 'Default registry URL to use, instead of the registries.json configuration file'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l configuration -s c -d 'Build with configuration' -r -f -k -a 'debug release'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -o Xcc -d 'Pass flag through to all C compiler invocations'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -o Xswiftc -d 'Pass flag through to all Swift compiler invocations'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -o Xlinker -d 'Pass flag through to all linker invocations'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -o Xcxx -d 'Pass flag through to all C++ compiler invocations'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l triple
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l sdk -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l toolchain -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l swift-sdk -d 'Filter for selecting a specific Swift SDK to build with'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l sanitize -d 'Turn on runtime checks for erroneous behavior, possible values: address, thread, undefined, scudo' -r -f -k -a 'address thread undefined scudo'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l auto-index-store -d 'Enable or disable indexing-while-building feature'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l enable-index-store -d 'Enable or disable indexing-while-building feature'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l disable-index-store -d 'Enable or disable indexing-while-building feature'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l enable-parseable-module-interfaces
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l jobs -s j -d 'The number of jobs to spawn in parallel during the build process'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l use-integrated-swift-driver
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l explicit-target-dependency-import-check
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l experimental-explicit-module-build
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l build-system -r -f -k -a 'native xcode'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -o debug-info-format
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l enable-dead-strip -d 'Disable/enable dead code stripping by the linker'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l disable-dead-strip -d 'Disable/enable dead code stripping by the linker'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l disable-local-rpath -d 'Disable adding $ORIGIN/@loader_path to the rpath by default'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l skip-build -d 'Skip building the test target'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l enable-xctest -d 'Enable support for XCTest'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l disable-xctest -d 'Enable support for XCTest'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l enable-swift-testing -d 'Enable support for Swift Testing'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l disable-swift-testing -d 'Enable support for Swift Testing'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l parallel -d 'Run the tests in parallel.'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l no-parallel -d 'Run the tests in parallel.'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l num-workers -d 'Number of tests to execute in parallel.'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l list-tests -s l -d 'Lists test methods in specifier format'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l show-codecov-path -l show-code-coverage-path -l show-coverage-path -d 'Print the path of the exported code coverage JSON file'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -s s -l specifier
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l filter -d 'Run test cases matching regular expression, Format: <test-target>.<test-case> or <test-target>.<test-case>/<test>'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l skip -d 'Skip test cases matching regular expression, Example: --skip PerformanceTests'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l xunit-output -d 'Path where the xUnit xml file should be generated.' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l enable-testable-imports -d 'Enable or disable testable imports. Enabled by default.'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l disable-testable-imports -d 'Enable or disable testable imports. Enabled by default.'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l enable-code-coverage -d 'Enable code coverage'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l disable-code-coverage -d 'Enable code coverage'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -l version -d 'Show the version.'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -o help -s h -l help -d 'Show help information.'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -f -a 'list' -d 'Lists test methods in specifier format'
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -f -a 'last' -d ''
complete -c swift -n '_swift_swift_using_command "swift test" "list last help"' -f -a 'help' -d 'Show subcommand help information.'
complete -c swift -n '_swift_swift_using_command "swift package add-dependency"' -l exact -d 'The exact package version to depend on'
complete -c swift -n '_swift_swift_using_command "swift package add-dependency"' -l revision -d 'The specific package revision to depend on'
complete -c swift -n '_swift_swift_using_command "swift package add-dependency"' -l branch -d 'The branch of the package to depend on'
complete -c swift -n '_swift_swift_using_command "swift package add-dependency"' -l from -d 'The package version to depend on (up to the next major version)'
complete -c swift -n '_swift_swift_using_command "swift package add-dependency"' -l up-to-next-minor-from -d 'The package version to depend on (up to the next minor version)'
complete -c swift -n '_swift_swift_using_command "swift package add-dependency"' -l to -d 'Specify upper bound on the package version range (exclusive)'
complete -c swift -n '_swift_swift_using_command "swift package add-dependency"' -s h -l help -d 'Show help information.'
complete -c swift -n '_swift_swift_using_command "swift package add-product"' -l type -d 'The type of target to add, which can be one of \'executable\', \'library\', \'static-library\', \'dynamic-library\', or \'plugin\''
complete -c swift -n '_swift_swift_using_command "swift package add-product"' -l targets -d 'A list of targets that are part of this product'
complete -c swift -n '_swift_swift_using_command "swift package add-product"' -s h -l help -d 'Show help information.'
complete -c swift -n '_swift_swift_using_command "swift package add-target"' -l type -d 'The type of target to add, which can be one of \'library\', \'executable\', \'test\', or \'macro\''
complete -c swift -n '_swift_swift_using_command "swift package add-target"' -l dependencies -d 'A list of target dependency names'
complete -c swift -n '_swift_swift_using_command "swift package add-target"' -l url -d 'The URL for a remote binary target'
complete -c swift -n '_swift_swift_using_command "swift package add-target"' -l path -d 'The path to a local binary target'
complete -c swift -n '_swift_swift_using_command "swift package add-target"' -l checksum -d 'The checksum for a remote binary target'
complete -c swift -n '_swift_swift_using_command "swift package add-target"' -l testing-library -d 'The testing library to use when generating test targets, which can be one of \'xctest\', \'swift-testing\', or \'none\''
complete -c swift -n '_swift_swift_using_command "swift package add-target"' -s h -l help -d 'Show help information.'
complete -c swift -n '_swift_swift_using_command "swift package add-target-dependency"' -l package -d 'The package in which the dependency resides'
complete -c swift -n '_swift_swift_using_command "swift package add-target-dependency"' -s h -l help -d 'Show help information.'
complete -c swift -n '_swift_swift_using_command "swift package clean"' -s h -l help -d 'Show help information.'
complete -c swift -n '_swift_swift_using_command "swift package purge-cache"' -s h -l help -d 'Show help information.'
complete -c swift -n '_swift_swift_using_command "swift package reset"' -s h -l help -d 'Show help information.'
complete -c swift -n '_swift_swift_using_command "swift package update"' -l dry-run -s n -d 'Display the list of dependencies that can be updated'
complete -c swift -n '_swift_swift_using_command "swift package update"' -s h -l help -d 'Show help information.'
complete -c swift -n '_swift_swift_using_command "swift package describe"' -l type -d 'json | text | mermaid'
complete -c swift -n '_swift_swift_using_command "swift package describe"' -s h -l help -d 'Show help information.'
complete -c swift -n '_swift_swift_using_command "swift package init"' -l type -d 'Package type:'
complete -c swift -n '_swift_swift_using_command "swift package init"' -l enable-xctest -d 'Enable support for XCTest'
complete -c swift -n '_swift_swift_using_command "swift package init"' -l disable-xctest -d 'Enable support for XCTest'
complete -c swift -n '_swift_swift_using_command "swift package init"' -l enable-swift-testing -d 'Enable support for Swift Testing'
complete -c swift -n '_swift_swift_using_command "swift package init"' -l disable-swift-testing -d 'Enable support for Swift Testing'
complete -c swift -n '_swift_swift_using_command "swift package init"' -l name -d 'Provide custom package name'
complete -c swift -n '_swift_swift_using_command "swift package init"' -s h -l help -d 'Show help information.'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l package-path -d 'Specify the package path to operate on (default current directory). This changes the working directory before any other operation' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l cache-path -d 'Specify the shared cache directory path' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l config-path -d 'Specify the shared configuration directory path' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l security-path -d 'Specify the shared security directory path' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l scratch-path -d 'Specify a custom scratch directory path (default .build)' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l swift-sdks-path -d 'Path to the directory containing installed Swift SDKs' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l pkg-config-path -d 'Specify alternative path to search for pkg-config `.pc` files. Use the option multiple times to
specify more than one path.' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l enable-dependency-cache -d 'Use a shared cache when fetching dependencies'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l disable-dependency-cache -d 'Use a shared cache when fetching dependencies'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l enable-build-manifest-caching
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l disable-build-manifest-caching
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l manifest-cache -d 'Caching mode of Package.swift manifests (shared: shared cache, local: package\'s build directory, none: disabled'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l verbose -s v -d 'Increase verbosity to include informational output'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l very-verbose -l vv -d 'Increase verbosity to include debug output'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l quiet -s q -d 'Decrease verbosity to only include error output.'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l disable-sandbox -d 'Disable using the sandbox when executing subprocesses'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l netrc -d 'Use netrc file even in cases where other credential stores are preferred'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l enable-netrc -d 'Load credentials from a netrc file'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l disable-netrc -d 'Load credentials from a netrc file'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l netrc-file -d 'Specify the netrc file path' -r -f -a '(for i in *.{}; echo $i;end)'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l enable-keychain -d 'Search credentials in macOS keychain'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l disable-keychain -d 'Search credentials in macOS keychain'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l resolver-fingerprint-checking
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l resolver-signing-entity-checking
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l enable-signature-validation -d 'Validate signature of a signed package release downloaded from registry'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l disable-signature-validation -d 'Validate signature of a signed package release downloaded from registry'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l enable-prefetching
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l disable-prefetching
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l force-resolved-versions -l disable-automatic-resolution -l only-use-versions-from-resolved-file -d 'Only use versions from the Package.resolved file and fail resolution if it is out-of-date'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l skip-update -d 'Skip updating dependencies from their remote during a resolution'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l disable-scm-to-registry-transformation -d 'disable source control to registry transformation'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l use-registry-identity-for-scm -d 'look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l replace-scm-with-registry -d 'look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l default-registry-url -d 'Default registry URL to use, instead of the registries.json configuration file'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l configuration -s c -d 'Build with configuration' -r -f -k -a 'debug release'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -o Xcc -d 'Pass flag through to all C compiler invocations'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -o Xswiftc -d 'Pass flag through to all Swift compiler invocations'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -o Xlinker -d 'Pass flag through to all linker invocations'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -o Xcxx -d 'Pass flag through to all C++ compiler invocations'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l triple
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l sdk -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l toolchain -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l swift-sdk -d 'Filter for selecting a specific Swift SDK to build with'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l sanitize -d 'Turn on runtime checks for erroneous behavior, possible values: address, thread, undefined, scudo' -r -f -k -a 'address thread undefined scudo'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l auto-index-store -d 'Enable or disable indexing-while-building feature'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l enable-index-store -d 'Enable or disable indexing-while-building feature'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l disable-index-store -d 'Enable or disable indexing-while-building feature'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l enable-parseable-module-interfaces
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l jobs -s j -d 'The number of jobs to spawn in parallel during the build process'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l use-integrated-swift-driver
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l explicit-target-dependency-import-check
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l experimental-explicit-module-build
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l build-system -r -f -k -a 'native xcode'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -o debug-info-format
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l enable-dead-strip -d 'Disable/enable dead code stripping by the linker'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l disable-dead-strip -d 'Disable/enable dead code stripping by the linker'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l disable-local-rpath -d 'Disable adding $ORIGIN/@loader_path to the rpath by default'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -l product -d 'The name of the executable product to install'
complete -c swift -n '_swift_swift_using_command "swift package experimental-install"' -s h -l help -d 'Show help information.'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l package-path -d 'Specify the package path to operate on (default current directory). This changes the working directory before any other operation' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l cache-path -d 'Specify the shared cache directory path' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l config-path -d 'Specify the shared configuration directory path' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l security-path -d 'Specify the shared security directory path' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l scratch-path -d 'Specify a custom scratch directory path (default .build)' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l swift-sdks-path -d 'Path to the directory containing installed Swift SDKs' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l pkg-config-path -d 'Specify alternative path to search for pkg-config `.pc` files. Use the option multiple times to
specify more than one path.' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l enable-dependency-cache -d 'Use a shared cache when fetching dependencies'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l disable-dependency-cache -d 'Use a shared cache when fetching dependencies'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l enable-build-manifest-caching
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l disable-build-manifest-caching
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l manifest-cache -d 'Caching mode of Package.swift manifests (shared: shared cache, local: package\'s build directory, none: disabled'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l verbose -s v -d 'Increase verbosity to include informational output'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l very-verbose -l vv -d 'Increase verbosity to include debug output'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l quiet -s q -d 'Decrease verbosity to only include error output.'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l disable-sandbox -d 'Disable using the sandbox when executing subprocesses'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l netrc -d 'Use netrc file even in cases where other credential stores are preferred'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l enable-netrc -d 'Load credentials from a netrc file'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l disable-netrc -d 'Load credentials from a netrc file'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l netrc-file -d 'Specify the netrc file path' -r -f -a '(for i in *.{}; echo $i;end)'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l enable-keychain -d 'Search credentials in macOS keychain'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l disable-keychain -d 'Search credentials in macOS keychain'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l resolver-fingerprint-checking
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l resolver-signing-entity-checking
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l enable-signature-validation -d 'Validate signature of a signed package release downloaded from registry'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l disable-signature-validation -d 'Validate signature of a signed package release downloaded from registry'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l enable-prefetching
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l disable-prefetching
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l force-resolved-versions -l disable-automatic-resolution -l only-use-versions-from-resolved-file -d 'Only use versions from the Package.resolved file and fail resolution if it is out-of-date'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l skip-update -d 'Skip updating dependencies from their remote during a resolution'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l disable-scm-to-registry-transformation -d 'disable source control to registry transformation'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l use-registry-identity-for-scm -d 'look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l replace-scm-with-registry -d 'look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l default-registry-url -d 'Default registry URL to use, instead of the registries.json configuration file'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l configuration -s c -d 'Build with configuration' -r -f -k -a 'debug release'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -o Xcc -d 'Pass flag through to all C compiler invocations'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -o Xswiftc -d 'Pass flag through to all Swift compiler invocations'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -o Xlinker -d 'Pass flag through to all linker invocations'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -o Xcxx -d 'Pass flag through to all C++ compiler invocations'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l triple
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l sdk -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l toolchain -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l swift-sdk -d 'Filter for selecting a specific Swift SDK to build with'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l sanitize -d 'Turn on runtime checks for erroneous behavior, possible values: address, thread, undefined, scudo' -r -f -k -a 'address thread undefined scudo'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l auto-index-store -d 'Enable or disable indexing-while-building feature'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l enable-index-store -d 'Enable or disable indexing-while-building feature'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l disable-index-store -d 'Enable or disable indexing-while-building feature'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l enable-parseable-module-interfaces
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l jobs -s j -d 'The number of jobs to spawn in parallel during the build process'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l use-integrated-swift-driver
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l explicit-target-dependency-import-check
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l experimental-explicit-module-build
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l build-system -r -f -k -a 'native xcode'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -o debug-info-format
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l enable-dead-strip -d 'Disable/enable dead code stripping by the linker'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l disable-dead-strip -d 'Disable/enable dead code stripping by the linker'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -l disable-local-rpath -d 'Disable adding $ORIGIN/@loader_path to the rpath by default'
complete -c swift -n '_swift_swift_using_command "swift package experimental-uninstall"' -s h -l help -d 'Show help information.'
complete -c swift -n '_swift_swift_using_command "swift package diagnose-api-breaking-changes"' -l breakage-allowlist-path -d 'The path to a text file containing breaking changes which should be ignored by the API comparison. Each ignored breaking change in the file should appear on its own line and contain the exact message to be ignored (e.g. \'API breakage: func foo() has been removed\').' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift package diagnose-api-breaking-changes"' -l products -d 'One or more products to include in the API comparison. If present, only the specified products (and any targets specified using `--targets`) will be compared.'
complete -c swift -n '_swift_swift_using_command "swift package diagnose-api-breaking-changes"' -l targets -d 'One or more targets to include in the API comparison. If present, only the specified targets (and any products specified using `--products`) will be compared.'
complete -c swift -n '_swift_swift_using_command "swift package diagnose-api-breaking-changes"' -l baseline-dir -d 'The path to a directory used to store API baseline files. If unspecified, a temporary directory will be used.' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift package diagnose-api-breaking-changes"' -l regenerate-baseline -d 'Regenerate the API baseline, even if an existing one is available.'
complete -c swift -n '_swift_swift_using_command "swift package diagnose-api-breaking-changes"' -s h -l help -d 'Show help information.'
complete -c swift -n '_swift_swift_using_command "swift package dump-symbol-graph"' -l pretty-print -d 'Pretty-print the output JSON.'
complete -c swift -n '_swift_swift_using_command "swift package dump-symbol-graph"' -l skip-synthesized-members -d 'Skip members inherited through classes or default implementations.'
complete -c swift -n '_swift_swift_using_command "swift package dump-symbol-graph"' -l minimum-access-level -d 'Include symbols with this access level or more. Possible values: private | fileprivate | internal | public | open' -r -f -k -a 'private fileprivate internal public open'
complete -c swift -n '_swift_swift_using_command "swift package dump-symbol-graph"' -l skip-inherited-docs -d 'Skip emitting doc comments for members inherited through classes or default implementations.'
complete -c swift -n '_swift_swift_using_command "swift package dump-symbol-graph"' -l include-spi-symbols -d 'Add symbols with SPI information to the symbol graph.'
complete -c swift -n '_swift_swift_using_command "swift package dump-symbol-graph"' -l emit-extension-block-symbols -d 'Emit extension block symbols for extensions to external types or directly associate members and conformances with the extended nominal.'
complete -c swift -n '_swift_swift_using_command "swift package dump-symbol-graph"' -l omit-extension-block-symbols -d 'Emit extension block symbols for extensions to external types or directly associate members and conformances with the extended nominal.'
complete -c swift -n '_swift_swift_using_command "swift package dump-symbol-graph"' -s h -l help -d 'Show help information.'
complete -c swift -n '_swift_swift_using_command "swift package dump-package"' -s h -l help -d 'Show help information.'
complete -c swift -n '_swift_swift_using_command "swift package edit"' -l revision -d 'The revision to edit'
complete -c swift -n '_swift_swift_using_command "swift package edit"' -l branch -d 'The branch to create'
complete -c swift -n '_swift_swift_using_command "swift package edit"' -l path -d 'Create or use the checkout at this path' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift package edit"' -s h -l help -d 'Show help information.'
complete -c swift -n '_swift_swift_using_command "swift package unedit"' -l force -d 'Unedit the package even if it has uncommitted and unpushed changes'
complete -c swift -n '_swift_swift_using_command "swift package unedit"' -s h -l help -d 'Show help information.'
complete -c swift -n '_swift_swift_using_command "swift package config set-mirror"' -l original -d 'The original url or identity'
complete -c swift -n '_swift_swift_using_command "swift package config set-mirror"' -l mirror -d 'The mirror url or identity'
complete -c swift -n '_swift_swift_using_command "swift package config set-mirror"' -s h -l help -d 'Show help information.'
complete -c swift -n '_swift_swift_using_command "swift package config unset-mirror"' -l original -d 'The original url or identity'
complete -c swift -n '_swift_swift_using_command "swift package config unset-mirror"' -l mirror -d 'The mirror url or identity'
complete -c swift -n '_swift_swift_using_command "swift package config unset-mirror"' -s h -l help -d 'Show help information.'
complete -c swift -n '_swift_swift_using_command "swift package config get-mirror"' -l original -d 'The original url or identity'
complete -c swift -n '_swift_swift_using_command "swift package config get-mirror"' -s h -l help -d 'Show help information.'
complete -c swift -n '_swift_swift_using_command "swift package config" "set-mirror unset-mirror get-mirror help"' -s h -l help -d 'Show help information.'
complete -c swift -n '_swift_swift_using_command "swift package config" "set-mirror unset-mirror get-mirror help"' -f -a 'set-mirror' -d 'Set a mirror for a dependency'
complete -c swift -n '_swift_swift_using_command "swift package config" "set-mirror unset-mirror get-mirror help"' -f -a 'unset-mirror' -d 'Remove an existing mirror'
complete -c swift -n '_swift_swift_using_command "swift package config" "set-mirror unset-mirror get-mirror help"' -f -a 'get-mirror' -d 'Print mirror configuration for the given package dependency'
complete -c swift -n '_swift_swift_using_command "swift package config" "set-mirror unset-mirror get-mirror help"' -f -a 'help' -d 'Show subcommand help information.'
complete -c swift -n '_swift_swift_using_command "swift package resolve"' -l version -d 'The version to resolve at'
complete -c swift -n '_swift_swift_using_command "swift package resolve"' -l branch -d 'The branch to resolve at'
complete -c swift -n '_swift_swift_using_command "swift package resolve"' -l revision -d 'The revision to resolve at'
complete -c swift -n '_swift_swift_using_command "swift package resolve"' -s h -l help -d 'Show help information.'
complete -c swift -n '_swift_swift_using_command "swift package show-dependencies"' -l format -d 'text | dot | json | flatlist'
complete -c swift -n '_swift_swift_using_command "swift package show-dependencies"' -l output-path -s o -d 'The absolute or relative path to output the resolved dependency graph.' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift package show-dependencies"' -s h -l help -d 'Show help information.'
complete -c swift -n '_swift_swift_using_command "swift package tools-version"' -l set-current -d 'Set tools version of package to the current tools version in use'
complete -c swift -n '_swift_swift_using_command "swift package tools-version"' -l set -d 'Set tools version of package to the given value'
complete -c swift -n '_swift_swift_using_command "swift package tools-version"' -s h -l help -d 'Show help information.'
complete -c swift -n '_swift_swift_using_command "swift package compute-checksum"' -s h -l help -d 'Show help information.'
complete -c swift -n '_swift_swift_using_command "swift package archive-source"' -s o -l output -d 'The absolute or relative path for the generated source archive' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift package archive-source"' -s h -l help -d 'Show help information.'
complete -c swift -n '_swift_swift_using_command "swift package completion-tool"' -s h -l help -d 'Show help information.'
complete -c swift -n '_swift_swift_using_command "swift package plugin"' -l list -d 'List the available command plugins'
complete -c swift -n '_swift_swift_using_command "swift package plugin"' -l allow-writing-to-package-directory -d 'Allow the plugin to write to the package directory'
complete -c swift -n '_swift_swift_using_command "swift package plugin"' -l allow-writing-to-directory -d 'Allow the plugin to write to an additional directory'
complete -c swift -n '_swift_swift_using_command "swift package plugin"' -l allow-network-connections -r -f -k -a 'none local(ports: []) all(ports: []) docker unixDomainSocket'
complete -c swift -n '_swift_swift_using_command "swift package plugin"' -l package -d 'Limit available plugins to a single package with the given identity'
complete -c swift -n '_swift_swift_using_command "swift package plugin"' -s h -l help -d 'Show help information.'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l package-path -d 'Specify the package path to operate on (default current directory). This changes the working directory before any other operation' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l cache-path -d 'Specify the shared cache directory path' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l config-path -d 'Specify the shared configuration directory path' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l security-path -d 'Specify the shared security directory path' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l scratch-path -d 'Specify a custom scratch directory path (default .build)' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l swift-sdks-path -d 'Path to the directory containing installed Swift SDKs' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l pkg-config-path -d 'Specify alternative path to search for pkg-config `.pc` files. Use the option multiple times to
specify more than one path.' -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l enable-dependency-cache -d 'Use a shared cache when fetching dependencies'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l disable-dependency-cache -d 'Use a shared cache when fetching dependencies'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l enable-build-manifest-caching
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l disable-build-manifest-caching
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l manifest-cache -d 'Caching mode of Package.swift manifests (shared: shared cache, local: package\'s build directory, none: disabled'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l verbose -s v -d 'Increase verbosity to include informational output'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l very-verbose -l vv -d 'Increase verbosity to include debug output'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l quiet -s q -d 'Decrease verbosity to only include error output.'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l disable-sandbox -d 'Disable using the sandbox when executing subprocesses'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l netrc -d 'Use netrc file even in cases where other credential stores are preferred'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l enable-netrc -d 'Load credentials from a netrc file'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l disable-netrc -d 'Load credentials from a netrc file'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l netrc-file -d 'Specify the netrc file path' -r -f -a '(for i in *.{}; echo $i;end)'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l enable-keychain -d 'Search credentials in macOS keychain'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l disable-keychain -d 'Search credentials in macOS keychain'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l resolver-fingerprint-checking
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l resolver-signing-entity-checking
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l enable-signature-validation -d 'Validate signature of a signed package release downloaded from registry'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l disable-signature-validation -d 'Validate signature of a signed package release downloaded from registry'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l enable-prefetching
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l disable-prefetching
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l force-resolved-versions -l disable-automatic-resolution -l only-use-versions-from-resolved-file -d 'Only use versions from the Package.resolved file and fail resolution if it is out-of-date'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l skip-update -d 'Skip updating dependencies from their remote during a resolution'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l disable-scm-to-registry-transformation -d 'disable source control to registry transformation'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l use-registry-identity-for-scm -d 'look up source control dependencies in the registry and use their registry identity when possible to help deduplicate across the two origins'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l replace-scm-with-registry -d 'look up source control dependencies in the registry and use the registry to retrieve them instead of source control when possible'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l default-registry-url -d 'Default registry URL to use, instead of the registries.json configuration file'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l configuration -s c -d 'Build with configuration' -r -f -k -a 'debug release'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -o Xcc -d 'Pass flag through to all C compiler invocations'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -o Xswiftc -d 'Pass flag through to all Swift compiler invocations'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -o Xlinker -d 'Pass flag through to all linker invocations'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -o Xcxx -d 'Pass flag through to all C++ compiler invocations'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l triple
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l sdk -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l toolchain -r -f -a '(__fish_complete_directories)'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l swift-sdk -d 'Filter for selecting a specific Swift SDK to build with'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l sanitize -d 'Turn on runtime checks for erroneous behavior, possible values: address, thread, undefined, scudo' -r -f -k -a 'address thread undefined scudo'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l auto-index-store -d 'Enable or disable indexing-while-building feature'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l enable-index-store -d 'Enable or disable indexing-while-building feature'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l disable-index-store -d 'Enable or disable indexing-while-building feature'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l enable-parseable-module-interfaces
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l jobs -s j -d 'The number of jobs to spawn in parallel during the build process'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l use-integrated-swift-driver
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l explicit-target-dependency-import-check
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l experimental-explicit-module-build
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l build-system -r -f -k -a 'native xcode'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -o debug-info-format
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l enable-dead-strip -d 'Disable/enable dead code stripping by the linker'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l disable-dead-strip -d 'Disable/enable dead code stripping by the linker'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l disable-local-rpath -d 'Disable adding $ORIGIN/@loader_path to the rpath by default'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -l version -d 'Show the version.'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -o help -s h -l help -d 'Show help information.'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -f -a 'add-dependency' -d 'Add a package dependency to the manifest'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -f -a 'add-product' -d 'Add a new product to the manifest'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -f -a 'add-target' -d 'Add a new target to the manifest'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -f -a 'add-target-dependency' -d 'Add a new target dependency to the manifest'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -f -a 'clean' -d 'Delete build artifacts'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -f -a 'purge-cache' -d 'Purge the global repository cache.'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -f -a 'reset' -d 'Reset the complete cache/build directory'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -f -a 'update' -d 'Update package dependencies'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -f -a 'describe' -d 'Describe the current package'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -f -a 'init' -d 'Initialize a new package'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -f -a 'experimental-install' -d 'Offers the ability to install executable products of the current package.'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -f -a 'experimental-uninstall' -d 'Offers the ability to uninstall executable products previously installed by `swift package experimental-install`.'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -f -a 'diagnose-api-breaking-changes' -d 'Diagnose API-breaking changes to Swift modules in a package'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -f -a 'dump-symbol-graph' -d 'Dump Symbol Graph'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -f -a 'dump-package' -d 'Print parsed Package.swift as JSON'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -f -a 'edit' -d 'Put a package in editable mode'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -f -a 'unedit' -d 'Remove a package from editable mode'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -f -a 'config' -d 'Manipulate configuration of the package'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -f -a 'resolve' -d 'Resolve package dependencies'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -f -a 'show-dependencies' -d 'Print the resolved dependency graph'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -f -a 'tools-version' -d 'Manipulate tools version of the current package'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -f -a 'compute-checksum' -d 'Compute the checksum for a binary artifact.'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -f -a 'archive-source' -d 'Create a source archive for the package'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -f -a 'completion-tool' -d 'Completion command (for shell completions)'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -f -a 'plugin' -d 'Invoke a command plugin or perform other actions on command plugins'
complete -c swift -n '_swift_swift_using_command "swift package" "add-dependency add-product add-target add-target-dependency clean purge-cache reset update describe init experimental-install experimental-uninstall diagnose-api-breaking-changes dump-symbol-graph dump-package edit unedit config resolve show-dependencies tools-version compute-checksum archive-source completion-tool plugin help"' -f -a 'help' -d 'Show subcommand help information.'
complete -c swift -n '_swift_swift_using_command "swift" "run build test package help"' -s h -l help -d 'Show help information.'
complete -c swift -n '_swift_swift_using_command "swift" "run build test package help"' -f -a 'run' -d 'Build and run an executable product'
complete -c swift -n '_swift_swift_using_command "swift" "run build test package help"' -f -a 'build' -d 'Build sources into binary products'
complete -c swift -n '_swift_swift_using_command "swift" "run build test package help"' -f -a 'test' -d 'Build and run tests'
complete -c swift -n '_swift_swift_using_command "swift" "run build test package help"' -f -a 'package' -d 'Perform operations on Swift packages'
complete -c swift -n '_swift_swift_using_command "swift" "run build test package help"' -f -a 'help' -d 'Show subcommand help information.'
