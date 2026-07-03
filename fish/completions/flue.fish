complete -c "flue" -l "root" -d "Project root. Default: current working directory." # global
complete -c "flue" -l "output" -d "Where the build artifacts are written. Default: <root>/dist." # global
complete -c "flue" -l "config" -d "Path to a flue.config.{ts,mts,mjs,js,cjs,cts} file (relative to cwd). Default: search the root dir (or cwd) for `flue.config.*`. CLI flags always override values set in the config file." # global
complete -c "flue" -l "port" -d "Port for the dev server. Default: 3583" # global
complete -c "flue" -l "env" -d "Select one alternate .env-format file for build/dev/run before config loads. Without --env, these commands load <project>/.env when present. Shell values win." # global
complete -c "flue" -l "print" -d "(flue add/update) Print the raw blueprint Markdown to stdout regardless of whether the caller is an agent." # global
complete -c "flue" -l "force" -d "(flue init) Overwrite an existing flue.config.* in the target directory." # global
complete -f -c "flue" -n "__fish_use_subcommand" -a "dev" -d "Long-running watch-mode dev server. Rebuilds and reloads on file changes." # sub
complete -f -c "flue" -n "__fish_use_subcommand" -a "run" -d "Invoke one agent or workflow through its normal HTTP application, then exit." # sub
complete -f -c "flue" -n "__fish_use_subcommand" -a "build" -d "Build a deployable artifact to ./dist (production deploys)." # sub
complete -f -c "flue" -n "__fish_use_subcommand" -a "init" -d "Scaffold a starter flue.config.ts in the target directory." # sub
complete -f -c "flue" -n "__fish_use_subcommand" -a "add" -d "Fetch a blueprint implementation guide for an AI coding agent to follow." # sub
complete -f -c "flue" -n "__fish_use_subcommand" -a "update" -d "Fetch an updated blueprint implementation guide for an AI coding agent to follow." # sub
complete -f -c "flue" -n "__fish_use_subcommand" -a "docs" -d "Browse the Flue docs. No args lists pages; `read` prints a page as markdown; `search` prints JSON results." # sub
complete -c "flue" -n "__fish_seen_subcommand_from 'dev'" -l "root" -d "Project root. Default: current working directory." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'dev'" -l "output" -d "Where the build artifacts are written. Default: <root>/dist." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'dev'" -l "config" -d "Path to a flue.config.{ts,mts,mjs,js,cjs,cts} file (relative to cwd). Default: search the root dir (or cwd) for `flue.config.*`. CLI flags always override values set in the config file." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'dev'" -l "port" -d "Port for the dev server. Default: 3583" # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'dev'" -l "env" -d "Select one alternate .env-format file for build/dev/run before config loads. Without --env, these commands load <project>/.env when present. Shell values win." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'dev'" -l "print" -d "(flue add/update) Print the raw blueprint Markdown to stdout regardless of whether the caller is an agent." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'dev'" -l "force" -d "(flue init) Overwrite an existing flue.config.* in the target directory." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'run'" -l "root" -d "Project root. Default: current working directory." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'run'" -l "output" -d "Where the build artifacts are written. Default: <root>/dist." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'run'" -l "config" -d "Path to a flue.config.{ts,mts,mjs,js,cjs,cts} file (relative to cwd). Default: search the root dir (or cwd) for `flue.config.*`. CLI flags always override values set in the config file." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'run'" -l "port" -d "Port for the dev server. Default: 3583" # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'run'" -l "env" -d "Select one alternate .env-format file for build/dev/run before config loads. Without --env, these commands load <project>/.env when present. Shell values win." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'run'" -l "print" -d "(flue add/update) Print the raw blueprint Markdown to stdout regardless of whether the caller is an agent." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'run'" -l "force" -d "(flue init) Overwrite an existing flue.config.* in the target directory." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'build'" -l "root" -d "Project root. Default: current working directory." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'build'" -l "output" -d "Where the build artifacts are written. Default: <root>/dist." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'build'" -l "config" -d "Path to a flue.config.{ts,mts,mjs,js,cjs,cts} file (relative to cwd). Default: search the root dir (or cwd) for `flue.config.*`. CLI flags always override values set in the config file." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'build'" -l "port" -d "Port for the dev server. Default: 3583" # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'build'" -l "env" -d "Select one alternate .env-format file for build/dev/run before config loads. Without --env, these commands load <project>/.env when present. Shell values win." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'build'" -l "print" -d "(flue add/update) Print the raw blueprint Markdown to stdout regardless of whether the caller is an agent." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'build'" -l "force" -d "(flue init) Overwrite an existing flue.config.* in the target directory." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'init'" -l "root" -d "Project root. Default: current working directory." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'init'" -l "output" -d "Where the build artifacts are written. Default: <root>/dist." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'init'" -l "config" -d "Path to a flue.config.{ts,mts,mjs,js,cjs,cts} file (relative to cwd). Default: search the root dir (or cwd) for `flue.config.*`. CLI flags always override values set in the config file." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'init'" -l "port" -d "Port for the dev server. Default: 3583" # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'init'" -l "env" -d "Select one alternate .env-format file for build/dev/run before config loads. Without --env, these commands load <project>/.env when present. Shell values win." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'init'" -l "print" -d "(flue add/update) Print the raw blueprint Markdown to stdout regardless of whether the caller is an agent." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'init'" -l "force" -d "(flue init) Overwrite an existing flue.config.* in the target directory." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'add'" -l "root" -d "Project root. Default: current working directory." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'add'" -l "output" -d "Where the build artifacts are written. Default: <root>/dist." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'add'" -l "config" -d "Path to a flue.config.{ts,mts,mjs,js,cjs,cts} file (relative to cwd). Default: search the root dir (or cwd) for `flue.config.*`. CLI flags always override values set in the config file." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'add'" -l "port" -d "Port for the dev server. Default: 3583" # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'add'" -l "env" -d "Select one alternate .env-format file for build/dev/run before config loads. Without --env, these commands load <project>/.env when present. Shell values win." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'add'" -l "print" -d "(flue add/update) Print the raw blueprint Markdown to stdout regardless of whether the caller is an agent." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'add'" -l "force" -d "(flue init) Overwrite an existing flue.config.* in the target directory." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'update'" -l "root" -d "Project root. Default: current working directory." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'update'" -l "output" -d "Where the build artifacts are written. Default: <root>/dist." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'update'" -l "config" -d "Path to a flue.config.{ts,mts,mjs,js,cjs,cts} file (relative to cwd). Default: search the root dir (or cwd) for `flue.config.*`. CLI flags always override values set in the config file." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'update'" -l "port" -d "Port for the dev server. Default: 3583" # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'update'" -l "env" -d "Select one alternate .env-format file for build/dev/run before config loads. Without --env, these commands load <project>/.env when present. Shell values win." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'update'" -l "print" -d "(flue add/update) Print the raw blueprint Markdown to stdout regardless of whether the caller is an agent." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'update'" -l "force" -d "(flue init) Overwrite an existing flue.config.* in the target directory." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'docs'" -l "root" -d "Project root. Default: current working directory." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'docs'" -l "output" -d "Where the build artifacts are written. Default: <root>/dist." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'docs'" -l "config" -d "Path to a flue.config.{ts,mts,mjs,js,cjs,cts} file (relative to cwd). Default: search the root dir (or cwd) for `flue.config.*`. CLI flags always override values set in the config file." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'docs'" -l "port" -d "Port for the dev server. Default: 3583" # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'docs'" -l "env" -d "Select one alternate .env-format file for build/dev/run before config loads. Without --env, these commands load <project>/.env when present. Shell values win." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'docs'" -l "print" -d "(flue add/update) Print the raw blueprint Markdown to stdout regardless of whether the caller is an agent." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'docs'" -l "force" -d "(flue init) Overwrite an existing flue.config.* in the target directory." # subcommands flags
complete -c "flue" -n "__fish_seen_subcommand_from 'dev'" -l "target" -xa "node cloudflare" # global
complete -c "flue" -n "__fish_seen_subcommand_from 'dev'" -l "root" -d "Project root. Default: current working directory." # global
complete -c "flue" -n "__fish_seen_subcommand_from 'dev'" -l "output" -d "Where the build artifacts are written. Default: <root>/dist." # global
complete -c "flue" -n "__fish_seen_subcommand_from 'dev'" -l "config" -d "Path to a flue.config.{ts,mts,mjs,js,cjs,cts} file (relative to cwd).\n                       Default: search the root dir (or cwd) for `flue.config.*`.\n                       CLI flags always override values set in the config file." # global
complete -c "flue" -n "__fish_seen_subcommand_from 'dev'" -l "port" -d "Port for the dev server. Default: 3583" # global
complete -c "flue" -n "__fish_seen_subcommand_from 'dev'" -l "env" -d "Select one alternate .env-format file for build/dev/run before config loads.\n                       Without --env, these commands load <project>/.env when present. Shell values win." # global
complete -c "flue" -n "__fish_seen_subcommand_from 'run'" -l "target" -xa "node cloudflare" # global
complete -c "flue" -n "__fish_seen_subcommand_from 'run'" -l "id" # global
complete -c "flue" -n "__fish_seen_subcommand_from 'run'" -l "input" # global
complete -c "flue" -n "__fish_seen_subcommand_from 'run'" -l "server" # global
complete -c "flue" -n "__fish_seen_subcommand_from 'run'" -l "header" # global
complete -c "flue" -n "__fish_seen_subcommand_from 'run'" -l "root" -d "Project root. Default: current working directory." # global
complete -c "flue" -n "__fish_seen_subcommand_from 'run'" -l "output" -d "Where the build artifacts are written. Default: <root>/dist." # global
complete -c "flue" -n "__fish_seen_subcommand_from 'run'" -l "config" -d "Path to a flue.config.{ts,mts,mjs,js,cjs,cts} file (relative to cwd). Default: search the root dir (or cwd) for `flue.config.*`. CLI flags always override values set in the config file." # global
complete -c "flue" -n "__fish_seen_subcommand_from 'run'" -l "env" -d "Select one alternate .env-format file for build/dev/run before config loads. Without --env, these commands load <project>/.env when present. Shell values win." # global
complete -c "flue" -n "__fish_seen_subcommand_from 'build'" -l "target" -xa "node cloudflare" # global
complete -c "flue" -n "__fish_seen_subcommand_from 'build'" -l "root" -d "Project root. Default: current working directory." # global
complete -c "flue" -n "__fish_seen_subcommand_from 'build'" -l "output" -d "Where the build artifacts are written. Default: <root>/dist." # global
complete -c "flue" -n "__fish_seen_subcommand_from 'build'" -l "config" -d "Path to a flue.config.{ts,mts,mjs,js,cjs,cts} file (relative to cwd).\n                       Default: search the root dir (or cwd) for `flue.config.*`.\n                       CLI flags always override values set in the config file." # global
complete -c "flue" -n "__fish_seen_subcommand_from 'build'" -l "env" -d "Select one alternate .env-format file for build/dev/run before config loads.\n                       Without --env, these commands load <project>/.env when present. Shell values win." # global
complete -c "flue" -n "__fish_seen_subcommand_from 'init'" -l "target" -xa "node cloudflare" # global
complete -c "flue" -n "__fish_seen_subcommand_from 'init'" -l "root" -d "Project root. Default: current working directory." # global
complete -c "flue" -n "__fish_seen_subcommand_from 'init'" -l "force" -d "(flue init) Overwrite an existing flue.config.* in the target directory." # global
complete -c "flue" -n "__fish_seen_subcommand_from 'add'" -l "root" -d "Project root. Default: current working directory." # global
complete -c "flue" -n "__fish_seen_subcommand_from 'add'" -l "output" -d "Where the build artifacts are written. Default: <root>/dist." # global
complete -c "flue" -n "__fish_seen_subcommand_from 'add'" -l "config" -d "Path to a flue.config.{ts,mts,mjs,js,cjs,cts} file (relative to cwd).\nDefault: search the root dir (or cwd) for `flue.config.*`.\nCLI flags always override values set in the config file." # global
complete -c "flue" -n "__fish_seen_subcommand_from 'add'" -l "port" -d "Port for the dev server. Default: 3583" # global
complete -c "flue" -n "__fish_seen_subcommand_from 'add'" -l "env" -d "Select one alternate .env-format file for build/dev/run before config loads.\nWithout --env, these commands load <project>/.env when present. Shell values win." # global
complete -c "flue" -n "__fish_seen_subcommand_from 'add'" -l "print" -d "(flue add/update) Print the raw blueprint Markdown to stdout regardless of whether the caller is an agent." # global
complete -c "flue" -n "__fish_seen_subcommand_from 'add'" -l "force" -d "(flue init) Overwrite an existing flue.config.* in the target directory." # global
complete -c "flue" -n "__fish_seen_subcommand_from 'update'" -l "print" -d "(flue add/update) Print the raw blueprint Markdown to stdout regardless of whether the caller is an agent." # global
complete -f -c "flue" -n "__fish_seen_subcommand_from 'docs'" -a "read" -d "Print a documentation page as markdown" # sub
complete -f -c "flue" -n "__fish_seen_subcommand_from 'docs'" -a "search" -d "Search the documentation (JSON results)" # sub