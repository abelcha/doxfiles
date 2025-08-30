complete -c "standard-version" -l "header" -d "A string to be used as the main header section of the CHANGELOG." # global
complete -c "standard-version" -l "types" -d "An array of `type` objects representing the explicitly supported commit message types, and whether they should show up in generated `CHANGELOG`s." # global
complete -c "standard-version" -l "preMajor" -d "Boolean indicating whether or not the action being run (generating CHANGELOG, recommendedBump, etc.) is being performed for a pre-major release (<1.0.0). This config setting will generally be set by tooling and not a user." # global
complete -c "standard-version" -l "commitUrlFormat" -d "A URL representing a specific commit at a hash." # global
complete -c "standard-version" -l "compareUrlFormat" -d "A URL representing the comparison between two git SHAs." # global
complete -c "standard-version" -l "issueUrlFormat" -d "A URL representing the issue format (allowing a different URL format to be swapped in for Gitlab, Bitbucket, etc)." # global
complete -c "standard-version" -l "userUrlFormat" -d "A URL representing the a user's profile URL on GitHub, Gitlab, etc. This URL is used for substituting @bcoe with https://github.com/bcoe in commit messages." # global
complete -c "standard-version" -l "releaseCommitMessageFormat" -d "A string to be used to format the auto-generated release commit message." # global
complete -c "standard-version" -l "issuePrefixes" -d "An array of prefixes used to detect references to issues" # global
complete -c "standard-version" -s "h" -l "help" -d "Show help" # global
complete -c "standard-version" -s "v" -l "version" -d "Show version number" # global
complete -c "standard-version" -l "packageFiles" # global
complete -c "standard-version" -l "bumpFiles" # global
complete -c "standard-version" -s "r" -l "release-as" -d "Specify the release type manually (like npm version <major|minor|patch>)" # global
complete -c "standard-version" -s "p" -l "prerelease" -d "make a pre-release with optional option value to specify a tag id" # global
complete -c "standard-version" -s "i" -l "infile" -d "Read the CHANGELOG from this file" # global
complete -c "standard-version" -s "m" -l "message" -d "[DEPRECATED] Commit message, replaces %s with new version. This option will be removed in the next major version, please use --releaseCommitMessageFormat." # global
complete -c "standard-version" -s "f" -l "first-release" -d "Is this the first release?" # global
complete -c "standard-version" -s "s" -l "sign" -d "Should the git commit and tag be signed?" # global
complete -c "standard-version" -s "n" -l "no-verify" -d "Bypass pre-commit or commit-msg git hooks during the commit phase" # global
complete -c "standard-version" -s "a" -l "commit-all" -d "Commit all staged changes, not just files affected by standard-version" # global
complete -c "standard-version" -l "silent" -d "Don't print logs and errors" # global
complete -c "standard-version" -s "t" -l "tag-prefix" -d "Set a custom prefix for the git tag to be created" # global
complete -c "standard-version" -l "scripts" -d "Provide scripts to execute for lifecycle events (prebump, precommit, etc.,)" # global
complete -c "standard-version" -l "skip" -d "Map of steps in the release process that should be skipped" # global
complete -c "standard-version" -l "dry-run" -d "See the commands that running standard-version would run" # global
complete -c "standard-version" -l "git-tag-fallback" -d "fallback to git tags for version, if no meta-information file is found (e.g., package.json)" # global
complete -c "standard-version" -l "path" -d "Only populate commits made under this path" # global
complete -c "standard-version" -l "changelogHeader" -d "[DEPRECATED] Use a custom header when generating and updating changelog. This option will be removed in the next major version, please use --header." # global
complete -c "standard-version" -l "preset" -d "Commit message guideline preset" # global
complete -c "standard-version" -l "lerna-package" -d "Name of the package from which the tags will be extracted" # global