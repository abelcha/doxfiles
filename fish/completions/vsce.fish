complete -c "vsce" -s "V" -l "version" -d "output the version number" # global
complete -c "vsce" -s "h" -l "help" -d "display help for command" # global
complete -f -c "vsce" -n "__fish_use_subcommand" -a "ls" -d "Lists all the files that will be published/packaged" # sub
complete -f -c "vsce" -n "__fish_use_subcommand" -a "package" -d "Packages an extension" # sub
complete -f -c "vsce" -n "__fish_use_subcommand" -a "pack" -d "Packages an extension" # sub
complete -f -c "vsce" -n "__fish_use_subcommand" -a "publish" -d "Publishes an extension" # sub
complete -f -c "vsce" -n "__fish_use_subcommand" -a "unpublish" -d "Removes an extension from the marketplace. Example extension id: ms-vscode.live-server." # sub
complete -f -c "vsce" -n "__fish_use_subcommand" -a "generate-manifest" -d "Generates the extension manifest from the provided VSIX package." # sub
complete -f -c "vsce" -n "__fish_use_subcommand" -a "verify-signature" -d "Verifies the provided signature file against the provided VSIX package and manifest." # sub
complete -f -c "vsce" -n "__fish_use_subcommand" -a "ls-publishers" -d "Lists all known publishers" # sub
complete -f -c "vsce" -n "__fish_use_subcommand" -a "delete-publisher" -d "Deletes a publisher from marketplace" # sub
complete -f -c "vsce" -n "__fish_use_subcommand" -a "login" -d "Adds a publisher to the list of known publishers" # sub
complete -f -c "vsce" -n "__fish_use_subcommand" -a "logout" -d "Removes a publisher from the list of known publishers" # sub
complete -f -c "vsce" -n "__fish_use_subcommand" -a "verify-pat" -d "Verifies if the Personal Access Token or Azure identity has publish rights for the publisher" # sub
complete -f -c "vsce" -n "__fish_use_subcommand" -a "show" -d "Shows an extension's metadata" # sub
complete -f -c "vsce" -n "__fish_use_subcommand" -a "search" -d "Searches extension gallery" # sub
complete -f -c "vsce" -n "__fish_use_subcommand" -a "help" -d "display help for command" # sub
complete -c "vsce" -n "__fish_seen_subcommand_from 'ls'" -s "V" -l "version" -d "output the version number" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'ls'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'package'" -s "V" -l "version" -d "output the version number" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'package'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'pack'" -s "V" -l "version" -d "output the version number" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'pack'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'publish'" -s "V" -l "version" -d "output the version number" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'publish'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'unpublish'" -s "V" -l "version" -d "output the version number" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'unpublish'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'generate-manifest'" -s "V" -l "version" -d "output the version number" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'generate-manifest'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'verify-signature'" -s "V" -l "version" -d "output the version number" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'verify-signature'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'ls-publishers'" -s "V" -l "version" -d "output the version number" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'ls-publishers'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'delete-publisher'" -s "V" -l "version" -d "output the version number" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'delete-publisher'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'login'" -s "V" -l "version" -d "output the version number" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'login'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'logout'" -s "V" -l "version" -d "output the version number" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'logout'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'verify-pat'" -s "V" -l "version" -d "output the version number" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'verify-pat'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'show'" -s "V" -l "version" -d "output the version number" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'show'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'search'" -s "V" -l "version" -d "output the version number" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'search'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'help'" -s "V" -l "version" -d "output the version number" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'help'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'ls'" -l "tree" -d "Prints the files in a tree format (default: false)" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'ls'" -l "yarn" -d "Use yarn instead of npm (default inferred from presence of yarn.lock or .yarnrc)" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'ls'" -l "no-yarn" -d "Use npm instead of yarn (default inferred from absence of yarn.lock or .yarnrc)" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'ls'" -l "packagedDependencies" -d "Select packages that should be published only (includes dependencies)" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'ls'" -l "ignoreFile" -d "Indicate alternative .vscodeignore" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'ls'" -l "dependencies" -d "Enable dependency detection via npm or yarn" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'ls'" -l "no-dependencies" -d "Disable dependency detection via npm or yarn" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'ls'" -l "readme-path" -d "Path to README file (defaults to README.md)" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'ls'" -l "follow-symlinks" -d "Recurse into symlinked directories instead of treating them as files" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'ls'" -s "h" -l "help" -d "display help for command" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'package'" -s "o" -l "out" -d "Output .vsix extension file to <path> location (defaults to <name>-<version>.vsix)" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'package'" -s "t" -l "target" -d "Target architecture. Valid targets: win32-x64, win32-arm64, linux-x64, linux-arm64, linux-armhf, darwin-x64, darwin-arm64, alpine-x64, alpine-arm64, web" -xa "win32-x64 win32-arm64 linux-x64 linux-arm64 linux-armhf darwin-x64 darwin-arm64 alpine-x64 alpine-arm64 web" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'package'" -l "ignore-other-target-folders" -d "Ignore other target folders. Valid only when --target <target> is provided." # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'package'" -l "readme-path" -d "Path to README file (defaults to README.md)" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'package'" -l "changelog-path" -d "Path to CHANGELOG file (defaults to CHANGELOG.md)" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'package'" -s "m" -l "message" -d "Commit message used when calling `npm version`." # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'package'" -l "no-git-tag-version" -d "Do not create a version commit and tag when calling `npm version`. Valid only when [version] is provided." # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'package'" -l "no-update-package-json" -d "Do not update `package.json`. Valid only when [version] is provided." # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'package'" -l "githubBranch" -d "The GitHub branch used to infer relative links in README.md. Can be overridden by --baseContentUrl and --baseImagesUrl." # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'package'" -l "gitlabBranch" -d "The GitLab branch used to infer relative links in README.md. Can be overridden by --baseContentUrl and --baseImagesUrl." # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'package'" -l "no-rewrite-relative-links" -d "Skip rewriting relative links." # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'package'" -l "baseContentUrl" -d "Prepend all relative links in README.md with the specified URL." # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'package'" -l "baseImagesUrl" -d "Prepend all relative image links in README.md with the specified URL." # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'package'" -l "yarn" -d "Use yarn instead of npm (default inferred from presence of yarn.lock or .yarnrc)" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'package'" -l "no-yarn" -d "Use npm instead of yarn (default inferred from absence of yarn.lock or .yarnrc)" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'package'" -l "ignoreFile" -d "Indicate alternative .vscodeignore" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'package'" -l "no-gitHubIssueLinking" -d "Disable automatic expansion of GitHub-style issue syntax into links" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'package'" -l "no-gitLabIssueLinking" -d "Disable automatic expansion of GitLab-style issue syntax into links" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'package'" -l "dependencies" -d "Enable dependency detection via npm or yarn" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'package'" -l "no-dependencies" -d "Disable dependency detection via npm or yarn" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'package'" -l "pre-release" -d "Mark this package as a pre-release" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'package'" -l "allow-star-activation" -d "Allow using * in activation events" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'package'" -l "allow-missing-repository" -d "Allow missing a repository URL in package.json" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'package'" -l "allow-unused-files-pattern" -d "Allow include patterns for the files field in package.json that does not match any file" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'package'" -l "allow-package-secrets" -d "Allow packaging specific secrets. The names of the secrets can be found in the error message ([SECRET_NAME])." # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'package'" -l "allow-package-all-secrets" -d "Allow to package all kinds of secrets" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'package'" -l "allow-package-env-file" -d "Allow packaging .env files" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'package'" -l "skip-license" -d "Allow packaging without license file" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'package'" -l "sign-tool" -d "Path to the VSIX signing tool. Will be invoked with two arguments: `SIGNTOOL <path/to/extension.signature.manifest> <path/to/extension.signature.p7s>`." # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'package'" -l "follow-symlinks" -d "Recurse into symlinked directories instead of treating them as files" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'package'" -s "h" -l "help" -d "display help for command" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'pack'" -s "o" -l "out" -d "Output .vsix extension file to <path> location (defaults to <name>-<version>.vsix)" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'pack'" -s "t" -l "target" -d "Target architecture." -xa "win32-x64 win32-arm64 linux-x64 linux-arm64 linux-armhf darwin-x64 darwin-arm64 alpine-x64 alpine-arm64 web" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'pack'" -l "ignore-other-target-folders" -d "Ignore other target folders. Valid only when --target <target> is provided." # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'pack'" -l "readme-path" -d "Path to README file (defaults to README.md)" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'pack'" -l "changelog-path" -d "Path to CHANGELOG file (defaults to CHANGELOG.md)" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'pack'" -s "m" -l "message" -d "Commit message used when calling `npm version`." # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'pack'" -l "no-git-tag-version" -d "Do not create a version commit and tag when calling `npm version`. Valid only when [version] is provided." # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'pack'" -l "no-update-package-json" -d "Do not update `package.json`. Valid only when [version] is provided." # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'pack'" -l "githubBranch" -d "The GitHub branch used to infer relative links in README.md. Can be overridden by --baseContentUrl and --baseImagesUrl." # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'pack'" -l "gitlabBranch" -d "The GitLab branch used to infer relative links in README.md. Can be overridden by --baseContentUrl and --baseImagesUrl." # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'pack'" -l "no-rewrite-relative-links" -d "Skip rewriting relative links." # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'pack'" -l "baseContentUrl" -d "Prepend all relative links in README.md with the specified URL." # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'pack'" -l "baseImagesUrl" -d "Prepend all relative image links in README.md with the specified URL." # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'pack'" -l "yarn" -d "Use yarn instead of npm (default inferred from presence of yarn.lock or .yarnrc)" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'pack'" -l "no-yarn" -d "Use npm instead of yarn (default inferred from absence of yarn.lock or .yarnrc)" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'pack'" -l "ignoreFile" -d "Indicate alternative .vscodeignore" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'pack'" -l "no-gitHubIssueLinking" -d "Disable automatic expansion of GitHub-style issue syntax into links" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'pack'" -l "no-gitLabIssueLinking" -d "Disable automatic expansion of GitLab-style issue syntax into links" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'pack'" -l "dependencies" -d "Enable dependency detection via npm or yarn" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'pack'" -l "no-dependencies" -d "Disable dependency detection via npm or yarn" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'pack'" -l "pre-release" -d "Mark this package as a pre-release" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'pack'" -l "allow-star-activation" -d "Allow using * in activation events" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'pack'" -l "allow-missing-repository" -d "Allow missing a repository URL in package.json" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'pack'" -l "allow-unused-files-pattern" -d "Allow include patterns for the files field in package.json that does not match any file" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'pack'" -l "allow-package-secrets" -d "Allow packaging specific secrets. The names of the secrets can be found in the error message ([SECRET_NAME])." # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'pack'" -l "allow-package-all-secrets" -d "Allow to package all kinds of secrets" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'pack'" -l "allow-package-env-file" -d "Allow packaging .env files" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'pack'" -l "skip-license" -d "Allow packaging without license file" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'pack'" -l "sign-tool" -d "Path to the VSIX signing tool. Will be invoked with two arguments: `SIGNTOOL <path/to/extension.signature.manifest> <path/to/extension.signature.p7s>`." # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'pack'" -l "follow-symlinks" -d "Recurse into symlinked directories instead of treating them as files" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'pack'" -s "h" -l "help" -d "display help for command" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'publish'" -s "p" -l "pat" -d "Personal Access Token (defaults to VSCE_PAT environment variable)" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'publish'" -l "azure-credential" -d "Use Microsoft Entra ID for authentication" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'publish'" -s "t" -l "target" -d "Target architectures. Valid targets: win32-x64, win32-arm64, linux-x64, linux-arm64, linux-armhf, darwin-x64, darwin-arm64, alpine-x64, alpine-arm64, web" -xa "win32-x64 win32-arm64 linux-x64 linux-arm64 linux-armhf darwin-x64 darwin-arm64 alpine-x64 alpine-arm64 web" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'publish'" -l "ignore-other-target-folders" -d "Ignore other target folders. Valid only when --target <target> is provided." # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'publish'" -l "readme-path" -d "Path to README file (defaults to README.md)" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'publish'" -l "changelog-path" -d "Path to CHANGELOG file (defaults to CHANGELOG.md)" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'publish'" -s "m" -l "message" -d "Commit message used when calling `npm version`." # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'publish'" -l "no-git-tag-version" -d "Do not create a version commit and tag when calling `npm version`. Valid only when [version] is provided." # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'publish'" -l "no-update-package-json" -d "Do not update `package.json`. Valid only when [version] is provided." # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'publish'" -s "i" -l "packagePath" -d "Publish the provided VSIX packages." # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'publish'" -l "manifestPath" -d "Manifest files to publish alongside the VSIX packages." # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'publish'" -l "signaturePath" -d "Signature files to publish alongside the VSIX packages." # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'publish'" -l "sigzipPath" -d "Signature archives to publish alongside the VSIX packages." # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'publish'" -l "sign-tool" -d "Path to the VSIX signing tool. Will be invoked with two arguments: `SIGNTOOL <path/to/extension.signature.manifest> <path/to/extension.signature.p7s>`. This will be ignored if --sigzipPath is provided." # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'publish'" -l "githubBranch" -d "The GitHub branch used to infer relative links in README.md. Can be overridden by --baseContentUrl and --baseImagesUrl." # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'publish'" -l "gitlabBranch" -d "The GitLab branch used to infer relative links in README.md. Can be overridden by --baseContentUrl and --baseImagesUrl." # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'publish'" -l "baseContentUrl" -d "Prepend all relative links in README.md with the specified URL." # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'publish'" -l "baseImagesUrl" -d "Prepend all relative image links in README.md with the specified URL." # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'publish'" -l "yarn" -d "Use yarn instead of npm (default inferred from presence of yarn.lock or .yarnrc)" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'publish'" -l "no-yarn" -d "Use npm instead of yarn (default inferred from absence of yarn.lock or .yarnrc)" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'publish'" -l "no-verify" -d "Allow all proposed APIs (deprecated: use --allow-all-proposed-apis instead)" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'publish'" -l "allow-proposed-apis" -d "Allow specific proposed APIs" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'publish'" -l "allow-all-proposed-apis" -d "Allow all proposed APIs" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'publish'" -l "allow-package-secrets" -d "Allow packaging a specific type of secret. The type of the secrets can be found in the error message ([SECRET_TYPE])." # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'publish'" -l "allow-package-all-secrets" -d "Allow to package all kinds of secrets" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'publish'" -l "allow-package-env-file" -d "Allow packaging .env files" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'publish'" -l "ignoreFile" -d "Indicate alternative .vscodeignore" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'publish'" -l "dependencies" -d "Enable dependency detection via npm or yarn" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'publish'" -l "no-dependencies" -d "Disable dependency detection via npm or yarn" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'publish'" -l "pre-release" -d "Mark this package as a pre-release" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'publish'" -l "allow-star-activation" -d "Allow using * in activation events" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'publish'" -l "allow-missing-repository" -d "Allow missing a repository URL in package.json" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'publish'" -l "allow-unused-files-pattern" -d "Allow include patterns for the files field in package.json that does not match any file" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'publish'" -l "skip-duplicate" -d "Fail silently if version already exists on the marketplace" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'publish'" -l "skip-license" -d "Allow publishing without license file" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'publish'" -l "follow-symlinks" -d "Recurse into symlinked directories instead of treating them as files" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'publish'" -s "h" -l "help" -d "display help for command" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'unpublish'" -s "p" -l "pat" -d "Personal Access Token" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'unpublish'" -l "azure-credential" -d "Use Microsoft Entra ID for authentication" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'unpublish'" -s "f" -l "force" -d "Skip confirmation prompt when unpublishing an extension" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'unpublish'" -s "h" -l "help" -d "display help for command" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'generate-manifest'" -s "i" -l "packagePath" -d "Path to the VSIX package" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'generate-manifest'" -s "o" -l "out" -d "Output the extension manifest to <path> location (defaults to <packagename>.manifest)" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'generate-manifest'" -s "h" -l "help" -d "display help for command" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'verify-signature'" -s "i" -l "packagePath" -d "Path to the VSIX package" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'verify-signature'" -s "m" -l "manifestPath" -d "Path to the Manifest file" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'verify-signature'" -s "s" -l "signaturePath" -d "Path to the Signature file" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'verify-signature'" -s "h" -l "help" -d "display help for command" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'ls-publishers'" -s "h" -l "help" -d "display help for command" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'delete-publisher'" -s "h" -l "help" -d "display help for command" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'login'" -s "h" -l "help" -d "display help for command" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'logout'" -s "h" -l "help" -d "display help for command" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'verify-pat'" -s "p" -l "pat" -d "Personal Access Token (defaults to VSCE_PAT environment variable)" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'verify-pat'" -l "azure-credential" -d "Use Microsoft Entra ID for authentication" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'verify-pat'" -s "h" -l "help" -d "display help for command" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'show'" -l "json" -d "Outputs data in json format (default: false)" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'show'" -s "h" -l "help" -d "display help for command" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'search'" -l "json" -d "Output results in json format (default: false)" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'search'" -l "stats" -d "Shows extensions rating and download count (default: false)" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'search'" -s "p" -l "pagesize" -d "Number of results to return (default: \"100\")" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'search'" -s "h" -l "help" -d "display help for command" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'help'" -s "V" -l "version" -d "output the version number" # global
complete -c "vsce" -n "__fish_seen_subcommand_from 'help'" -s "h" -l "help" -d "display help for command" # global
complete -f -c "vsce" -n "__fish_seen_subcommand_from 'help'" -a "ls" -d "Lists all the files that will be published/packaged" # sub
complete -f -c "vsce" -n "__fish_seen_subcommand_from 'help'" -a "package" -d "Packages an extension" # sub
complete -f -c "vsce" -n "__fish_seen_subcommand_from 'help'" -a "pack" -d "Packages an extension" # sub
complete -f -c "vsce" -n "__fish_seen_subcommand_from 'help'" -a "publish" -d "Publishes an extension" # sub
complete -f -c "vsce" -n "__fish_seen_subcommand_from 'help'" -a "unpublish" -d "Removes an extension from the marketplace. Example extension id: ms-vscode.live-server." # sub
complete -f -c "vsce" -n "__fish_seen_subcommand_from 'help'" -a "generate-manifest" -d "Generates the extension manifest from the provided VSIX package." # sub
complete -f -c "vsce" -n "__fish_seen_subcommand_from 'help'" -a "verify-signature" -d "Verifies the provided signature file against the provided VSIX package and manifest." # sub
complete -f -c "vsce" -n "__fish_seen_subcommand_from 'help'" -a "ls-publishers" -d "Lists all known publishers" # sub
complete -f -c "vsce" -n "__fish_seen_subcommand_from 'help'" -a "delete-publisher" -d "Deletes a publisher from marketplace" # sub
complete -f -c "vsce" -n "__fish_seen_subcommand_from 'help'" -a "login" -d "Adds a publisher to the list of known publishers" # sub
complete -f -c "vsce" -n "__fish_seen_subcommand_from 'help'" -a "logout" -d "Removes a publisher from the list of known publishers" # sub
complete -f -c "vsce" -n "__fish_seen_subcommand_from 'help'" -a "verify-pat" -d "Verifies if the Personal Access Token or Azure identity has publish rights for the publisher" # sub
complete -f -c "vsce" -n "__fish_seen_subcommand_from 'help'" -a "show" -d "Shows an extension's metadata" # sub
complete -f -c "vsce" -n "__fish_seen_subcommand_from 'help'" -a "search" -d "Searches extension gallery" # sub
complete -f -c "vsce" -n "__fish_seen_subcommand_from 'help'" -a "help" -d "display help for command" # sub
complete -c "vsce" -n "__fish_seen_subcommand_from 'help ls'" -s "V" -l "version" -d "output the version number" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'help ls'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'help package'" -s "V" -l "version" -d "output the version number" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'help package'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'help pack'" -s "V" -l "version" -d "output the version number" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'help pack'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'help publish'" -s "V" -l "version" -d "output the version number" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'help publish'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'help unpublish'" -s "V" -l "version" -d "output the version number" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'help unpublish'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'help generate-manifest'" -s "V" -l "version" -d "output the version number" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'help generate-manifest'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'help verify-signature'" -s "V" -l "version" -d "output the version number" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'help verify-signature'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'help ls-publishers'" -s "V" -l "version" -d "output the version number" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'help ls-publishers'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'help delete-publisher'" -s "V" -l "version" -d "output the version number" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'help delete-publisher'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'help login'" -s "V" -l "version" -d "output the version number" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'help login'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'help logout'" -s "V" -l "version" -d "output the version number" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'help logout'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'help verify-pat'" -s "V" -l "version" -d "output the version number" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'help verify-pat'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'help show'" -s "V" -l "version" -d "output the version number" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'help show'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'help search'" -s "V" -l "version" -d "output the version number" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'help search'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'help help'" -s "V" -l "version" -d "output the version number" # subcommands flags
complete -c "vsce" -n "__fish_seen_subcommand_from 'help help'" -s "h" -l "help" -d "display help for command" # subcommands flags