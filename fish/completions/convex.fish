complete -f -c "convex" -n "__fish_use_subcommand" -a "dev" -d "Develop against a dev deployment, watching for changes" # sub
complete -f -c "convex" -n "__fish_use_subcommand" -a "deploy" -d "Deploy to a production or preview deployment" # sub
complete -f -c "convex" -n "__fish_use_subcommand" -a "run" -d "Run a function or evaluate an inline readonly query on your deployment" # sub
complete -f -c "convex" -n "__fish_use_subcommand" -a "import" -d "Import data from a file to your deployment" # sub
complete -f -c "convex" -n "__fish_use_subcommand" -a "dashboard" -d "Open the dashboard in the browser" # sub
complete -f -c "convex" -n "__fish_use_subcommand" -a "docs" -d "Open the docs in the browser" # sub
complete -f -c "convex" -n "__fish_use_subcommand" -a "logs" -d "Watch logs from your deployment" # sub
complete -f -c "convex" -n "__fish_use_subcommand" -a "export" -d "Export data from your deployment to a ZIP file" # sub
complete -f -c "convex" -n "__fish_use_subcommand" -a "env" -d "Set and view environment variables" # sub
complete -f -c "convex" -n "__fish_use_subcommand" -a "data" -d "List tables and print data from your database" # sub
complete -f -c "convex" -n "__fish_use_subcommand" -a "deployment" -d "Manage deployments" # sub
complete -f -c "convex" -n "__fish_use_subcommand" -a "project" -d "Manage projects" # sub
complete -f -c "convex" -n "__fish_use_subcommand" -a "codegen" -d "Generate backend type definitions" # sub
complete -f -c "convex" -n "__fish_use_subcommand" -a "update" -d "Print instructions for updating the convex package" # sub
complete -f -c "convex" -n "__fish_use_subcommand" -a "logout" -d "Log out of Convex on this machine" # sub
complete -f -c "convex" -n "__fish_use_subcommand" -a "function-spec" -d "List function metadata from your deployment" # sub
complete -f -c "convex" -n "__fish_use_subcommand" -a "insights" -d "Show health insights for your deployment" # sub
complete -f -c "convex" -n "__fish_use_subcommand" -a "mcp" -d "Manage the Model Context Protocol server for Convex [BETA]" # sub
complete -f -c "convex" -n "__fish_use_subcommand" -a "ai-files" -d "Manage Convex AI files" # sub
complete -f -c "convex" -n "__fish_use_subcommand" -a "help" -d "Show help for given <command>" # sub
complete -c "convex" -n "__fish_seen_subcommand_from 'dev'" -s "v" -l "verbose" -d "Show full listing of changes" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'dev'" -l "typecheck" -d "Check TypeScript files with `tsc --noEmit`." -xa "enable try disable" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'dev'" -l "typecheck-components" -d "Check TypeScript files within component implementations with `tsc --noEmit`. (default: false)" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'dev'" -l "codegen" -d "Regenerate code in `convex/_generated/`" -xa "enable disable" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'dev'" -l "once" -d "Execute only the first 3 steps, stop on any failure (default: false)" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'dev'" -l "until-success" -d "Execute only the first 3 steps, on failure watch for local and remote changes and retry steps 2 and 3 (default: false)" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'dev'" -l "start" -d "Start a long-running command alongside `npx convex dev`, like a frontend dev server. The command inherits stdin/stdout so you can interact with it directly. Example: npx convex dev --start 'vite --open'" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'dev'" -l "run" -d "The identifier of the function to run in step 3, like `api.init.createData` or `myDir/myFile:myFunction`" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'dev'" -l "run-component" -d "If --run is used and the function is in a component, the path to the component (e.g. \"workflow\" or \"workflow/workpool\"). Components are a beta feature. This flag is unstable and may change in subsequent releases." # global
complete -c "convex" -n "__fish_seen_subcommand_from 'dev'" -l "tail-logs" -d "Choose whether to tail Convex function logs in this terminal:" -xa "{always\\tshows logs continuously,pause-on-deploy\\tpauses logs during deploys so you can spot sync issues,disable\\thides logs while developing.}" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'dev'" -l "configure" -d "Ignore existing configuration and configure new or existing project, interactively or set by --team <team_slug>, --project <project_slug>, and --dev-deployment local|cloud" -xa "new existing" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'dev'" -l "env-file" -d "Path to a custom file of environment variables, for choosing the deployment, e.g. CONVEX_DEPLOYMENT or CONVEX_SELF_HOSTED_URL. Same format as .env.local or .env files, and overrides them." # global
complete -c "convex" -n "__fish_seen_subcommand_from 'dev'" -s "h" -l "help" -d "display help for command" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'deploy'" -s "v" -l "verbose" -d "Show full listing of changes" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'deploy'" -l "dry-run" -d "Print out the generated configuration without deploying to your Convex deployment" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'deploy'" -l "typecheck" -d "Whether to check TypeScript files with `tsc --noEmit` before deploying." -xa "enable try disable" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'deploy'" -l "typecheck-components" -d "Check TypeScript files within component implementations with `tsc --noEmit`." # global
complete -c "convex" -n "__fish_seen_subcommand_from 'deploy'" -l "codegen" -d "Whether to regenerate code in `convex/_generated/` before pushing." -xa "enable disable" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'deploy'" -l "cmd" -d "Command to run as part of deploying your app (e.g. `vite build`). This command can depend on the environment variables specified in `--cmd-url-env-var-name` being set." # global
complete -c "convex" -n "__fish_seen_subcommand_from 'deploy'" -l "cmd-url-env-var-name" -d "Environment variable name to set Convex deployment URL (e.g. `VITE_CONVEX_URL`) when using `--cmd`" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'deploy'" -l "preview-run" -d "Function to run if deploying to a preview deployment. This is ignored if deploying to a production deployment." # global
complete -c "convex" -n "__fish_seen_subcommand_from 'deploy'" -l "preview-name" -d "The name to associate with this preview deployment. Defaults to the current Git branch name in Vercel, Netlify, Cloudflare Pages and GitHub CI. Reuses the existing deployment if one exists." # global
complete -c "convex" -n "__fish_seen_subcommand_from 'deploy'" -l "preview-create" -d "Like --preview-name, but deletes and recreates an existing preview deployment with the same name. This parameter can only be used with a preview deploy key (when used with another type of key, the command will return an error)." # global
complete -c "convex" -n "__fish_seen_subcommand_from 'deploy'" -l "env-file" -d "Path to a custom file of environment variables, for choosing the deployment, e.g. CONVEX_DEPLOYMENT or CONVEX_SELF_HOSTED_URL. Same format as .env.local or .env files, and overrides them." # global
complete -c "convex" -n "__fish_seen_subcommand_from 'deploy'" -l "message" -d "Optional message to attach to this deployment in the audit log." # global
complete -c "convex" -n "__fish_seen_subcommand_from 'deploy'" -s "h" -l "help" -d "display help for command" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'run'" -s "w" -l "watch" -d "Watch a query, printing its result if the underlying data changes. Given function must be a query." # global
complete -c "convex" -n "__fish_seen_subcommand_from 'run'" -l "inline-query" -d "JavaScript to evaluate as a readonly query. The query is completely sandboxed, so it can only read data and cannot modify the database or access the network." # global
complete -c "convex" -n "__fish_seen_subcommand_from 'run'" -l "push" -d "Push code to deployment before running the function." # global
complete -c "convex" -n "__fish_seen_subcommand_from 'run'" -l "identity" -d "JSON-formatted UserIdentity object, e.g. '{ name: \"John\", address: \"0x123\" }'" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'run'" -l "typecheck" -d "Whether to check TypeScript files with `tsc --noEmit`." -xa "enable try disable" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'run'" -l "typecheck-components" -d "Check TypeScript files within component implementations with `tsc --noEmit`. (default: false)" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'run'" -l "codegen" -d "Regenerate code in `convex/_generated/`." -xa "enable disable" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'run'" -l "component" -d "Path to the component (e.g. \"workflow\" or \"workflow/workpool\")" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'run'" -l "prod" -d "Run the function on this project's default production deployment." # global
complete -c "convex" -n "__fish_seen_subcommand_from 'run'" -l "deployment" -d "Run the function on a specific deployment." # global
complete -c "convex" -n "__fish_seen_subcommand_from 'run'" -s "h" -l "help" -d "display help for command" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'import'" -l "table" -d "Destination table name. Required if format is csv, jsonLines, or jsonArray. Not supported if format is zip." # global
complete -c "convex" -n "__fish_seen_subcommand_from 'import'" -l "replace" -d "Replace all existing data in any of the imported tables" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'import'" -l "append" -d "Append imported data to any existing tables" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'import'" -l "replace-all" -d "Replace all existing data in the deployment with the imported tables, deleting tables that don't appear in the import file or the schema, and clearing tables that appear in the schema but not in the import file" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'import'" -s "y" -l "yes" -d "Skip confirmation prompt when import leads to deleting existing documents" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'import'" -l "format" -d "Input file format. This flag is only required if the filename is missing an extension.\n- CSV files must have a header, and each row's entries are interpreted either as a (floating point) number or a string.\n- JSON files must be an array of JSON objects.\n- JSONLines files must have a JSON object per line.\n- ZIP files must have one directory per table, containing <table>/documents.jsonl. Snapshot exports from the Convex dashboard have this format.\n(choices: \"csv\", \"jsonLines\", \"jsonArray\", \"zip\")" -xa "csv jsonLines jsonArray zip" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'import'" -l "component" -d "Path to the component (e.g. \"workflow\" or \"workflow/workpool\")" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'import'" -l "prod" -d "Import data into this project's default production deployment." # global
complete -c "convex" -n "__fish_seen_subcommand_from 'import'" -l "deployment" -d "Import data into a specific deployment. Accepts:\n• a deployment name (e.g. joyful-capybara-123)\n• a deployment reference (e.g. dev/james, staging)\n• `dev` (for your personal dev deployment)\n• `prod` (for your project’s default production deployment)\n• `local` (for your local dev deployment).\nYou can also select deployments in other projects with `project-slug:reference` or `team-slug:project-slug:reference`." # global
complete -c "convex" -n "__fish_seen_subcommand_from 'import'" -s "h" -l "help" -d "display help for command" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'dashboard'" -l "no-open" -d "Don't automatically open the dashboard in the default browser" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'dashboard'" -l "prod" -d "Open the dashboard for this project's default production deployment." # global
complete -c "convex" -n "__fish_seen_subcommand_from 'dashboard'" -l "deployment" -d "Open the dashboard for a specific deployment." # global
complete -c "convex" -n "__fish_seen_subcommand_from 'dashboard'" -s "h" -l "help" -d "display help for command" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'docs'" -l "no-open" -d "Print docs URL instead of opening it in your browser" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'docs'" -s "h" -l "help" -d "display help for command" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'logs'" -l "history" -d "Show `n` most recent logs. Defaults to showing all available logs." # global
complete -c "convex" -n "__fish_seen_subcommand_from 'logs'" -l "success" -d "Print a log line for every successful function execution (default: false)" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'logs'" -l "jsonl" -d "Output raw log events as JSONL (default: false)" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'logs'" -l "prod" -d "Watch logs from this project's default production deployment." # global
complete -c "convex" -n "__fish_seen_subcommand_from 'logs'" -l "deployment" -d "Watch logs from a specific deployment." # global
complete -c "convex" -n "__fish_seen_subcommand_from 'logs'" -s "h" -l "help" -d "display help for command" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'export'" -l "path" -d "Exports data into a ZIP file at this path, which may be a directory or unoccupied .zip path" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'export'" -l "include-file-storage" -d "Includes stored files (https://dashboard.convex.dev/deployment/files) in a _storage folder within the ZIP file" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'export'" -l "prod" -d "Export data from this project's default production deployment." # global
complete -c "convex" -n "__fish_seen_subcommand_from 'export'" -l "deployment" -d "Export data from a specific deployment. Accepts:\n• a deployment name (e.g. joyful-capybara-123)\n• a deployment reference (e.g. dev/james, staging)\n• `dev` (for your personal dev deployment)\n• `prod` (for your project’s default production deployment)\n• `local` (for your local dev deployment).\nYou can also select deployments in other projects with `project-slug:reference` or `team-slug:project-slug:reference`." # global
complete -c "convex" -n "__fish_seen_subcommand_from 'export'" -s "h" -l "help" -d "display help for command" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'env'" -l "prod" -d "Set and view environment variables on this project's default production deployment." # global
complete -c "convex" -n "__fish_seen_subcommand_from 'env'" -l "deployment" -d "Set and view environment variables on a specific deployment." # global
complete -c "convex" -n "__fish_seen_subcommand_from 'env'" -s "h" -l "help" -d "display help for command" # global
complete -f -c "convex" -n "__fish_seen_subcommand_from 'env'" -a "set" -d "Set a variable" # sub
complete -f -c "convex" -n "__fish_seen_subcommand_from 'env'" -a "get" -d "Print a variable's value" # sub
complete -f -c "convex" -n "__fish_seen_subcommand_from 'env'" -a "remove" -d "Unset a variable" # sub
complete -f -c "convex" -n "__fish_seen_subcommand_from 'env'" -a "list" -d "List all environment variables and their values" # sub
complete -f -c "convex" -n "__fish_seen_subcommand_from 'env'" -a "default" -d "Manage project-level default environment variables" # sub
complete -c "convex" -n "__fish_seen_subcommand_from 'env set'" -l "prod" -d "Set and view environment variables on this project's default production deployment." # subcommands flags
complete -c "convex" -n "__fish_seen_subcommand_from 'env set'" -l "deployment" -d "Set and view environment variables on a specific deployment." # subcommands flags
complete -c "convex" -n "__fish_seen_subcommand_from 'env set'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "convex" -n "__fish_seen_subcommand_from 'env get'" -l "prod" -d "Set and view environment variables on this project's default production deployment." # subcommands flags
complete -c "convex" -n "__fish_seen_subcommand_from 'env get'" -l "deployment" -d "Set and view environment variables on a specific deployment." # subcommands flags
complete -c "convex" -n "__fish_seen_subcommand_from 'env get'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "convex" -n "__fish_seen_subcommand_from 'env remove'" -l "prod" -d "Set and view environment variables on this project's default production deployment." # subcommands flags
complete -c "convex" -n "__fish_seen_subcommand_from 'env remove'" -l "deployment" -d "Set and view environment variables on a specific deployment." # subcommands flags
complete -c "convex" -n "__fish_seen_subcommand_from 'env remove'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "convex" -n "__fish_seen_subcommand_from 'env list'" -l "prod" -d "Set and view environment variables on this project's default production deployment." # subcommands flags
complete -c "convex" -n "__fish_seen_subcommand_from 'env list'" -l "deployment" -d "Set and view environment variables on a specific deployment." # subcommands flags
complete -c "convex" -n "__fish_seen_subcommand_from 'env list'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "convex" -n "__fish_seen_subcommand_from 'env default'" -l "prod" -d "Set and view environment variables on this project's default production deployment." # subcommands flags
complete -c "convex" -n "__fish_seen_subcommand_from 'env default'" -l "deployment" -d "Set and view environment variables on a specific deployment." # subcommands flags
complete -c "convex" -n "__fish_seen_subcommand_from 'env default'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "convex" -n "__fish_seen_subcommand_from 'data'" -l "limit" -d "List only the `n` the most recently created documents. (default: 100)" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'data'" -l "order" -d "Order the documents by their `_creationTime`." -xa "asc desc" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'data'" -l "component" -d "Path to the component (e.g. \"workflow\" or \"workflow/workpool\")" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'data'" -l "format" -d "Format to print the data in. This flag is only required if the filename is missing an extension." -xa "{jsonArray\\tprint the data as a JSON array of objects.,json\\tprint the data as a JSON array of objects.,jsonLines\\tprint the data as a JSON object per line.,jsonl\\tprint the data as a JSON object per line.,pretty\\tprint the data in a human-readable format.}" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'data'" -l "prod" -d "Inspect the database in this project's default production deployment." # global
complete -c "convex" -n "__fish_seen_subcommand_from 'data'" -l "deployment" -d "Inspect the database in a specific deployment. Accepts:\n• a deployment name (e.g. joyful-capybara-123)\n• a deployment reference (e.g. dev/james, staging)\n• `dev` (for your personal dev deployment)\n• `prod` (for your project’s default production deployment)\n• `local` (for your local dev deployment).\nYou can also select deployments in other projects with `project-slug:reference` or `team-slug:project-slug:reference`." # global
complete -c "convex" -n "__fish_seen_subcommand_from 'data'" -s "h" -l "help" -d "display help for command" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'deployment'" -s "h" -l "help" -d "display help for command" # global
complete -f -c "convex" -n "__fish_seen_subcommand_from 'deployment'" -a "select" -d "Select the deployment to use when running commands" # sub
complete -f -c "convex" -n "__fish_seen_subcommand_from 'deployment'" -a "create" -d "Create a new deployment for a project" # sub
complete -f -c "convex" -n "__fish_seen_subcommand_from 'deployment'" -a "token" -d "Manage access tokens" # sub
complete -f -c "convex" -n "__fish_seen_subcommand_from 'deployment'" -a "help" -d "display help for command" # sub
complete -c "convex" -n "__fish_seen_subcommand_from 'deployment select'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "convex" -n "__fish_seen_subcommand_from 'deployment create'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "convex" -n "__fish_seen_subcommand_from 'deployment token'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "convex" -n "__fish_seen_subcommand_from 'deployment help'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "convex" -n "__fish_seen_subcommand_from 'project'" -s "h" -l "help" -d "display help for command" # global
complete -f -c "convex" -n "__fish_seen_subcommand_from 'project'" -a "create" -d "Create a new project" # sub
complete -f -c "convex" -n "__fish_seen_subcommand_from 'project'" -a "help" -d "display help for command" # sub
complete -c "convex" -n "__fish_seen_subcommand_from 'project create'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "convex" -n "__fish_seen_subcommand_from 'project help'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "convex" -n "__fish_seen_subcommand_from 'codegen'" -l "dry-run" -d "Print out the generated configuration to stdout instead of writing to convex directory" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'codegen'" -l "typecheck" -d "Whether to check TypeScript files with `tsc --noEmit`." -xa "enable try disable" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'codegen'" -l "init" -d "Also (over-)write the default convex/README.md and convex/tsconfig.json files, otherwise only written when creating a new Convex project." # global
complete -c "convex" -n "__fish_seen_subcommand_from 'codegen'" -l "component-dir" -d "Generate code for a specific component directory instead of the current application." # global
complete -c "convex" -n "__fish_seen_subcommand_from 'codegen'" -s "h" -l "help" -d "display help for command" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'update'" -s "h" -l "help" -d "display help for command" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'logout'" -s "h" -l "help" -d "display help for command" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'function-spec'" -l "file" -d "Output as JSON to a file." # global
complete -c "convex" -n "__fish_seen_subcommand_from 'function-spec'" -l "prod" -d "Read function metadata from this project's default production deployment." # global
complete -c "convex" -n "__fish_seen_subcommand_from 'function-spec'" -l "deployment" -d "Read function metadata from a specific deployment." # global
complete -c "convex" -n "__fish_seen_subcommand_from 'function-spec'" -s "h" -l "help" -d "display help for command" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'insights'" -l "details" -d "Show recent events for each insight (default: false)" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'insights'" -l "json" -d "Output insights as JSON (default: false)" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'insights'" -l "prod" -d "Show insights for this project's default production deployment." # global
complete -c "convex" -n "__fish_seen_subcommand_from 'insights'" -l "deployment" -d "Show insights for a specific deployment. Accepts: • a deployment name (e.g. joyful-capybara-123) • a deployment reference (e.g. dev/james, staging) • `dev` (for your personal dev deployment) • `prod` (for your project’s default production deployment) • `local` (for your local dev deployment). You can also select deployments in other projects with `project-slug:reference` or `team-slug:project-slug:reference`." # global
complete -c "convex" -n "__fish_seen_subcommand_from 'insights'" -s "h" -l "help" -d "display help for command" # global
complete -c "convex" -n "__fish_seen_subcommand_from 'mcp'" -s "h" -l "help" -d "display help for command" # global
complete -f -c "convex" -n "__fish_seen_subcommand_from 'mcp'" -a "start" -d "Start the MCP server" # sub
complete -f -c "convex" -n "__fish_seen_subcommand_from 'mcp'" -a "help" -d "display help for command" # sub
complete -c "convex" -n "__fish_seen_subcommand_from 'mcp start'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "convex" -n "__fish_seen_subcommand_from 'mcp help'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "convex" -n "__fish_seen_subcommand_from 'ai-files'" -s "h" -l "help" -d "display help for command" # global
complete -f -c "convex" -n "__fish_seen_subcommand_from 'ai-files'" -a "status" -d "Show the current status of Convex AI files" # sub
complete -f -c "convex" -n "__fish_seen_subcommand_from 'ai-files'" -a "install" -d "Install or refresh Convex AI files" # sub
complete -f -c "convex" -n "__fish_seen_subcommand_from 'ai-files'" -a "enable" -d "Enable Convex AI files" # sub
complete -f -c "convex" -n "__fish_seen_subcommand_from 'ai-files'" -a "update" -d "Update Convex AI files to the latest version" # sub
complete -f -c "convex" -n "__fish_seen_subcommand_from 'ai-files'" -a "disable" -d "Disable Convex AI files without removing them" # sub
complete -f -c "convex" -n "__fish_seen_subcommand_from 'ai-files'" -a "remove" -d "Remove all Convex AI files from the project" # sub
complete -c "convex" -n "__fish_seen_subcommand_from 'ai-files status'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "convex" -n "__fish_seen_subcommand_from 'ai-files install'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "convex" -n "__fish_seen_subcommand_from 'ai-files enable'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "convex" -n "__fish_seen_subcommand_from 'ai-files update'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "convex" -n "__fish_seen_subcommand_from 'ai-files disable'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -c "convex" -n "__fish_seen_subcommand_from 'ai-files remove'" -s "h" -l "help" -d "display help for command" # subcommands flags
complete -f -c "convex" -n "__fish_seen_subcommand_from 'help'" -a "dev" -d "Develop against a dev deployment, watching for changes" # sub
complete -f -c "convex" -n "__fish_seen_subcommand_from 'help'" -a "deploy" -d "Deploy to a production or preview deployment" # sub
complete -f -c "convex" -n "__fish_seen_subcommand_from 'help'" -a "run" -d "Run a function or evaluate an inline readonly query on your deployment" # sub
complete -f -c "convex" -n "__fish_seen_subcommand_from 'help'" -a "import" -d "Import data from a file to your deployment" # sub
complete -f -c "convex" -n "__fish_seen_subcommand_from 'help'" -a "dashboard" -d "Open the dashboard in the browser" # sub
complete -f -c "convex" -n "__fish_seen_subcommand_from 'help'" -a "docs" -d "Open the docs in the browser" # sub
complete -f -c "convex" -n "__fish_seen_subcommand_from 'help'" -a "logs" -d "Watch logs from your deployment" # sub
complete -f -c "convex" -n "__fish_seen_subcommand_from 'help'" -a "export" -d "Export data from your deployment to a ZIP file" # sub
complete -f -c "convex" -n "__fish_seen_subcommand_from 'help'" -a "env" -d "Set and view environment variables" # sub
complete -f -c "convex" -n "__fish_seen_subcommand_from 'help'" -a "data" -d "List tables and print data from your database" # sub
complete -f -c "convex" -n "__fish_seen_subcommand_from 'help'" -a "deployment" -d "Manage deployments" # sub
complete -f -c "convex" -n "__fish_seen_subcommand_from 'help'" -a "project" -d "Manage projects" # sub
complete -f -c "convex" -n "__fish_seen_subcommand_from 'help'" -a "codegen" -d "Generate backend type definitions" # sub
complete -f -c "convex" -n "__fish_seen_subcommand_from 'help'" -a "update" -d "Print instructions for updating the convex package" # sub
complete -f -c "convex" -n "__fish_seen_subcommand_from 'help'" -a "logout" -d "Log out of Convex on this machine" # sub
complete -f -c "convex" -n "__fish_seen_subcommand_from 'help'" -a "function-spec" -d "List function metadata from your deployment" # sub
complete -f -c "convex" -n "__fish_seen_subcommand_from 'help'" -a "insights" -d "Show health insights for your deployment" # sub
complete -f -c "convex" -n "__fish_seen_subcommand_from 'help'" -a "mcp" -d "Manage the Model Context Protocol server for Convex [BETA]" # sub
complete -f -c "convex" -n "__fish_seen_subcommand_from 'help'" -a "ai-files" -d "Manage Convex AI files" # sub
complete -f -c "convex" -n "__fish_seen_subcommand_from 'help'" -a "help" -d "Show help for given <command>" # sub