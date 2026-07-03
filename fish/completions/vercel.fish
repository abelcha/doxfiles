complete -c "vercel" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -s "v" -l "version" -d "Output the version number" # global
complete -c "vercel" -l "cwd" -d "Current working directory" # global
complete -c "vercel" -s "A" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -s "Q" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -s "d" -l "debug" -d "Debug mode [off]" # global
complete -c "vercel" -l "no-color" -d "No color mode [off]" # global
complete -c "vercel" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # global
complete -c "vercel" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -s "t" -d "Login token" # global
complete -c "vercel" -l "token" -d "Login token" # global
complete -f -c "vercel" -n "__fish_use_subcommand" -a "deploy" -d "Performs a deployment (default)" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "build" -d "Build the project locally into './vercel/output'" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "cache" -d "Manages cache for your current Project" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "dev" -d "Start a local development server" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "env" -d "Manages the Environment Variables for your current Project" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "git" -d "Manage Git provider repository for your current Project" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "help" -d "Displays complete help for [cmd]" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "init" -d "Initialize an example project" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "inspect" -d "Displays information related to a deployment" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "i" -d "Install an integration from the Marketplace" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "install" -d "Install an integration from the Marketplace" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "integration" -d "Manages your Marketplace integrations" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "ir" -d "Manages your Marketplace integration resources" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "integration-resource" -d "Manages your Marketplace integration resources" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "link" -d "Link local directory to a Vercel Project" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "ls" -d "Lists deployments" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "list" -d "Lists deployments" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "login" -d "Logs into your account or creates a new one" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "logout" -d "Logs out of your account" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "open" -d "Opens the current project in the Vercel Dashboard" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "promote" -d "Promote an existing deployment to current" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "pull" -d "Pull your Project Settings from the cloud" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "redeploy" -d "Rebuild and deploy a previous deployment." # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "rollback" -d "Quickly revert back to a previous deployment" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "switch" -d "Switches between different scopes" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "activity" -d "List user activity events" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "agent" -d "Generate AGENTS.md with Vercel best practices" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "alerts" -d "List alerts for a project or team" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "alias" -d "Manages your domain aliases" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "api" -d "Make authenticated HTTP requests to the Vercel API [beta]" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "bisect" -d "Use binary search to find the deployment that introduced a bug" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "blob" -d "Manages your Blob stores and files" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "buy" -d "Purchase Vercel products for your team" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "certs" -d "Manages your SSL certificates" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "connect" -d "Manage connectors [beta]" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "contract" -d "Show contract information for billing periods" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "cron" -d "Manage cron jobs for a project [beta]" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "crons" -d "Manage cron jobs for a project [beta]" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "curl" -d "cURL requests to your linked project's deployment [beta]" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "deploy-hooks" -d "Manage deploy hooks for Git-triggered builds" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "dns" -d "Manages your DNS records" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "domains" -d "Manages your domain names" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "firewall" -d "Manages Vercel Firewall configuration and custom rules" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "httpstat" -d "Visualize HTTP timing statistics for deployments" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "logs" -d "Displays the logs for a deployment" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "metrics" -d "Queries observability metrics for your project or team" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "mcp" -d "Set up MCP agents and configuration" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "microfrontends" -d "Manages your microfrontends" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "projects" -d "Manages your Projects" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "redirects" -d "Manages redirects for your current Project" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "rm" -d "Removes a deployment" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "remove" -d "Removes a deployment" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "routes" -d "Manages routing rules for your current Project" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "rr" -d "Manage rolling releases for gradual traffic shifting" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "rolling-release" -d "Manage rolling releases for gradual traffic shifting" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "skills" -d "Discover agent skills relevant to your project" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "target" -d "Manage custom environments for your Project" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "teams" -d "Manages your teams" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "telemetry" -d "Enable or disable telemetry collection" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "traces" -d "Fetch and capture traces for your project's deployment" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "upgrade" -d "Upgrade the Vercel CLI to the latest version" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "usage" -d "Show billing usage for the current billing period" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "webhooks" -d "Manages webhooks [beta]" # sub
complete -f -c "vercel" -n "__fish_use_subcommand" -a "whoami" -d "Shows the username of the currently logged in user" # sub
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'build'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'build'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'build'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'build'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'build'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'build'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'build'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'build'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'build'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'build'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'build'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'build'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'build'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dev'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dev'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dev'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dev'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dev'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dev'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dev'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dev'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dev'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dev'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dev'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dev'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dev'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'git'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'git'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'git'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'git'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'git'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'git'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'git'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'git'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'git'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'git'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'git'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'git'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'git'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'init'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'init'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'init'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'init'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'init'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'init'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'init'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'init'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'init'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'init'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'init'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'init'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'init'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'inspect'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'inspect'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'inspect'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'inspect'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'inspect'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'inspect'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'inspect'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'inspect'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'inspect'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'inspect'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'inspect'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'inspect'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'inspect'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'i'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'i'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'i'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'i'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'i'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'i'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'i'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'i'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'i'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'i'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'i'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'i'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'i'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'install'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'install'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'install'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'install'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'install'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'install'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'install'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'install'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'install'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'install'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'install'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'install'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'install'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'link'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'link'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'link'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'link'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'link'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'link'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'link'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'link'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'link'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'link'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'link'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'link'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'link'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ls'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ls'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ls'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ls'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ls'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ls'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ls'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ls'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ls'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ls'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ls'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ls'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ls'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'list'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'list'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'list'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'list'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'list'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'list'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'list'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'list'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'list'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'list'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'list'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'list'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'list'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'login'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'login'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'login'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'login'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'login'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'login'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'login'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'login'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'login'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'login'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'login'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'login'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'login'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'logout'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'logout'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'logout'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'logout'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'logout'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'logout'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'logout'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'logout'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'logout'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'logout'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'logout'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'logout'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'logout'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'open'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'open'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'open'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'open'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'open'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'open'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'open'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'open'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'open'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'open'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'open'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'open'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'open'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'promote'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'promote'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'promote'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'promote'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'promote'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'promote'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'promote'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'promote'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'promote'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'promote'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'promote'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'promote'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'promote'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'pull'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'pull'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'pull'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'pull'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'pull'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'pull'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'pull'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'pull'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'pull'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'pull'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'pull'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'pull'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'pull'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redeploy'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redeploy'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redeploy'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redeploy'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redeploy'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redeploy'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redeploy'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redeploy'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redeploy'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redeploy'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redeploy'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redeploy'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redeploy'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rollback'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rollback'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rollback'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rollback'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rollback'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rollback'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rollback'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rollback'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rollback'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rollback'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rollback'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rollback'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rollback'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'switch'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'switch'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'switch'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'switch'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'switch'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'switch'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'switch'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'switch'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'switch'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'switch'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'switch'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'switch'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'switch'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'agent'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'agent'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'agent'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'agent'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'agent'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'agent'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'agent'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'agent'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'agent'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'agent'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'agent'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'agent'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'agent'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'api'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'api'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'api'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'api'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'api'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'api'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'api'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'api'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'api'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'api'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'api'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'api'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'api'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'bisect'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'bisect'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'bisect'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'bisect'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'bisect'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'bisect'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'bisect'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'bisect'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'bisect'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'bisect'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'bisect'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'bisect'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'bisect'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'contract'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'contract'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'contract'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'contract'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'contract'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'contract'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'contract'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'contract'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'contract'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'contract'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'contract'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'contract'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'contract'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'curl'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'curl'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'curl'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'curl'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'curl'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'curl'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'curl'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'curl'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'curl'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'curl'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'curl'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'curl'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'curl'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'httpstat'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'httpstat'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'httpstat'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'httpstat'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'httpstat'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'httpstat'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'httpstat'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'httpstat'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'httpstat'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'httpstat'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'httpstat'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'httpstat'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'httpstat'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'logs'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'logs'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'logs'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'logs'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'logs'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'logs'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'logs'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'logs'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'logs'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'logs'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'logs'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'logs'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'logs'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'mcp'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'mcp'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'mcp'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'mcp'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'mcp'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'mcp'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'mcp'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'mcp'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'mcp'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'mcp'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'mcp'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'mcp'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'mcp'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rm'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rm'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rm'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rm'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rm'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rm'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rm'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rm'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rm'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rm'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rm'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rm'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rm'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'remove'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'remove'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'remove'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'remove'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'remove'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'remove'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'remove'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'remove'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'remove'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'remove'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'remove'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'remove'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'remove'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'skills'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'skills'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'skills'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'skills'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'skills'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'skills'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'skills'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'skills'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'skills'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'skills'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'skills'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'skills'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'skills'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'target'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'target'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'target'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'target'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'target'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'target'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'target'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'target'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'target'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'target'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'target'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'target'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'target'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'upgrade'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'upgrade'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'upgrade'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'upgrade'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'upgrade'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'upgrade'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'upgrade'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'upgrade'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'upgrade'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'upgrade'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'upgrade'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'upgrade'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'upgrade'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'usage'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'usage'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'usage'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'usage'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'usage'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'usage'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'usage'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'usage'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'usage'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'usage'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'usage'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'usage'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'usage'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'whoami'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'whoami'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'whoami'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'whoami'" -s "A" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'whoami'" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'whoami'" -s "Q" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'whoami'" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'whoami'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'whoami'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'whoami'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'whoami'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'whoami'" -s "t" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'whoami'" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy'" -l "archive" -d "Compress the deployment code into an archive before uploading it" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy'" -s "b" -l "build-env" -d "Specify environment variables during build-time (e.g. `-b KEY1=value1 -b KEY2=value2`)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy'" -l "dry" -d "Inspect the detected framework preset and source files without uploading or creating a deployment. Non-TTY output includes every file as JSON" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy'" -s "e" -l "env" -d "Specify environment variables during run-time (e.g. `-e KEY1=value1 -e KEY2=value2`)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy'" -s "f" -l "force" -d "Force a new deployment even if nothing has changed" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy'" -s "F" -l "format" -d "Specify the output format (json)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy'" -l "guidance" -d "Receive command suggestions once deployment is complete" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy'" -s "l" -l "logs" -d "Print the build logs" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy'" -s "m" -l "meta" -d "Specify metadata for the deployment (e.g. `-m KEY1=value1 -m KEY2=value2`)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy'" -l "no-wait" -d "Don't wait for the deployment to finish" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy'" -l "prebuilt" -d "Use in combination with `vc build`. Deploy an existing build" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy'" -l "prod" -d "Create a production deployment (shorthand for `--target=production`)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy'" -l "project" -d "Project name or ID (defaults to the linked project)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy'" -l "regions" -d "Set default regions to enable the deployment on" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy'" -l "skip-domain" -d "Disable the automatic promotion (aliasing) of the relevant domains to a new production deployment. You can use `vc promote` to complete the domain-assignment process later" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy'" -l "target" -d "Specify the target deployment environment" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy'" -l "with-cache" -d "Retain build cache when using \"--force\"" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy'" -s "y" -l "yes" -d "Use default options to skip all prompts" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy'" -s "v" -l "version" -d "Output the version number" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'build'" -l "id" -d "Deployment ID to pull environment variables from (e.g. dpl_xxx)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'build'" -l "output" -d "Directory where built assets will be written to" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'build'" -l "prod" -d "Build a production deployment" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'build'" -l "project" -d "Project name or ID (defaults to the linked project)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'build'" -l "standalone" -d "Create a standalone build with all dependencies inlined into function output folders" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'build'" -l "target" -d "Specify the target environment" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'build'" -s "y" -l "yes" -d "Skip the confirmation prompt about pulling environment variables and project settings when not found locally" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'build'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'build'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'build'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'build'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'build'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'build'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'build'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'build'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'build'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'build'" -s "v" -l "version" -d "Output the version number" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache'" -s "v" -l "version" -d "Output the version number" # global
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'cache'" -a "purge" -d "Purge cache for the current project" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'cache'" -a "invalidate" -d "Invalidate all cached content by tag" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'cache'" -a "dangerously-delete" -d "Dangerously delete all cached content by tag" # sub
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache purge'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache purge'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache purge'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache purge'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache purge'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache purge'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache purge'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache purge'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache invalidate'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache invalidate'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache invalidate'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache invalidate'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache invalidate'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache invalidate'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache invalidate'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache invalidate'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache dangerously-delete'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache dangerously-delete'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache dangerously-delete'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache dangerously-delete'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache dangerously-delete'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache dangerously-delete'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache dangerously-delete'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cache dangerously-delete'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dev'" -s "l" -l "listen" -d "Specify a URI endpoint on which to listen [0.0.0.0:3000]" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'dev'" -s "L" -l "local" -d "Start the dev server without linking to a Vercel project" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'dev'" -l "project" -d "Project name or ID (defaults to the linked project)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'dev'" -s "y" -l "yes" -d "Accept default value for all prompts" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'dev'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'dev'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'dev'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'dev'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'dev'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'dev'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'dev'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'dev'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'dev'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'dev'" -s "v" -l "version" -d "Output the version number" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'env'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'env'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'env'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'env'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'env'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'env'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'env'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'env'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'env'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'env'" -s "v" -l "version" -d "Output the version number" # global
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'env'" -a "add" -d "Add an Environment Variable" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'env'" -a "list" -d "List all Environment Variables for a Project" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'env'" -a "pull" -d "Pull all Development Environment Variables from the cloud and write to a file [.env.local]" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'env'" -a "remove" -d "Remove an Environment Variable (see examples below)" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'env'" -a "run" -d "Run a command with environment variables from the linked Vercel project" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'env'" -a "update" -d "Update the value of an existing Environment Variable (see examples below)" # sub
complete -c "vercel" -n "__fish_seen_subcommand_from 'env add'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env add'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env add'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env add'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env add'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env add'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env add'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env add'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env add'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env add'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env list'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env list'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env list'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env list'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env list'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env list'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env list'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env list'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env list'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env list'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env pull'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env pull'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env pull'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env pull'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env pull'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env pull'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env pull'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env pull'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env pull'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env pull'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env remove'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env remove'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env remove'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env remove'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env remove'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env remove'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env remove'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env remove'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env remove'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env remove'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env run'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env run'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env run'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env run'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env run'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env run'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env run'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env run'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env run'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env run'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env update'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env update'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env update'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env update'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env update'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env update'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env update'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env update'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env update'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'env update'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'git'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'git'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'git'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'git'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'git'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'git'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'git'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'git'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'git'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'git'" -s "v" -l "version" -d "Output the version number" # global
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'git'" -a "connect" -d "Connect your Vercel Project to your Git repository or provide the remote URL to your Git repository" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'git'" -a "disconnect" -d "Disconnect the Git repository from your Vercel Project" # sub
complete -c "vercel" -n "__fish_seen_subcommand_from 'git connect'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'git connect'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'git connect'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'git connect'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'git connect'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'git connect'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'git connect'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'git connect'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'git connect'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'git connect'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'git disconnect'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'git disconnect'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'git disconnect'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'git disconnect'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'git disconnect'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'git disconnect'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'git disconnect'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'git disconnect'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'git disconnect'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'git disconnect'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'help'" -s "v" -l "version" -d "Output the version number" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'help'" -l "cwd" -d "Current working directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'help'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'help'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'help'" -s "d" -l "debug" -d "Debug mode [off]" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'help'" -l "no-color" -d "No color mode [off]" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'help'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'help'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'help'" -s "t" -l "token" -d "Login token" # global
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "deploy" -d "Performs a deployment (default)" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "build" -d "Build the project locally into './vercel/output'" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "cache" -d "Manages cache for your current Project" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "dev" -d "Start a local development server" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "env" -d "Manages the Environment Variables for your current Project" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "git" -d "Manage Git provider repository for your current Project" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "help" -d "Displays complete help for [cmd]" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "init" -d "Initialize an example project" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "inspect" -d "Displays information related to a deployment" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "install" -d "Install an integration from the Marketplace" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "integration" -d "Manages your Marketplace integrations" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "integration-resource" -d "Manages your Marketplace integration resources" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "link" -d "Link local directory to a Vercel Project" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "list" -d "Lists deployments" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "login" -d "Logs into your account or creates a new one" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "logout" -d "Logs out of your account" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "open" -d "Opens the current project in the Vercel Dashboard" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "promote" -d "Promote an existing deployment to current" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "pull" -d "Pull your Project Settings from the cloud" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "redeploy" -d "Rebuild and deploy a previous deployment." # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "rollback" -d "Quickly revert back to a previous deployment" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "switch" -d "Switches between different scopes" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "activity" -d "List user activity events" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "agent" -d "Generate AGENTS.md with Vercel best practices" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "alerts" -d "List alerts for a project or team" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "alias" -d "Manages your domain aliases" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "api" -d "Make authenticated HTTP requests to the Vercel API [beta]" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "bisect" -d "Use binary search to find the deployment that introduced a bug" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "blob" -d "Manages your Blob stores and files" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "buy" -d "Purchase Vercel products for your team" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "certs" -d "Manages your SSL certificates" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "connect" -d "Manage connectors [beta]" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "contract" -d "Show contract information for billing periods" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "crons" -d "Manage cron jobs for a project [beta]" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "curl" -d "cURL requests to your linked project's deployment [beta]" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "deploy-hooks" -d "Manage deploy hooks for Git-triggered builds" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "dns" -d "Manages your DNS records" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "domains" -d "Manages your domain names" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "firewall" -d "Manages Vercel Firewall configuration and custom rules" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "httpstat" -d "Visualize HTTP timing statistics for deployments" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "logs" -d "Displays the logs for a deployment" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "metrics" -d "Queries observability metrics for your project or team" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "mcp" -d "Set up MCP agents and configuration" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "microfrontends" -d "Manages your microfrontends" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "projects" -d "Manages your Projects" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "redirects" -d "Manages redirects for your current Project" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "remove" -d "Removes a deployment" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "routes" -d "Manages routing rules for your current Project" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "rolling-release" -d "Manage rolling releases for gradual traffic shifting" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "skills" -d "Discover agent skills relevant to your project" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "target" -d "Manage custom environments for your Project" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "teams" -d "Manages your teams" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "telemetry" -d "Enable or disable telemetry collection" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "traces" -d "Fetch and capture traces for your project's deployment" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "upgrade" -d "Upgrade the Vercel CLI to the latest version" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "usage" -d "Show billing usage for the current billing period" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "webhooks" -d "Manages webhooks [beta]" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'help'" -a "whoami" -d "Shows the username of the currently logged in user" # sub
complete -c "vercel" -n "__fish_seen_subcommand_from 'help deploy'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help deploy'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help deploy'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help deploy'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help deploy'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help deploy'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help deploy'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help deploy'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help deploy'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help deploy'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help build'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help build'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help build'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help build'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help build'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help build'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help build'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help build'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help build'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help build'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help cache'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help cache'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help cache'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help cache'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help cache'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help cache'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help cache'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help cache'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help cache'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help cache'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help dev'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help dev'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help dev'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help dev'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help dev'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help dev'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help dev'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help dev'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help dev'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help dev'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help env'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help env'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help env'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help env'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help env'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help env'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help env'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help env'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help env'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help env'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help git'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help git'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help git'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help git'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help git'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help git'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help git'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help git'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help git'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help git'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help help'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help help'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help help'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help help'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help help'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help help'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help help'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help help'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help help'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help help'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help init'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help init'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help init'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help init'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help init'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help init'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help init'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help init'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help init'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help init'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help inspect'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help inspect'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help inspect'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help inspect'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help inspect'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help inspect'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help inspect'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help inspect'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help inspect'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help inspect'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help install'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help install'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help install'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help install'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help install'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help install'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help install'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help install'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help install'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help install'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help integration'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help integration'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help integration'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help integration'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help integration'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help integration'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help integration'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help integration'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help integration'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help integration'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help integration-resource'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help integration-resource'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help integration-resource'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help integration-resource'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help integration-resource'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help integration-resource'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help integration-resource'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help integration-resource'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help integration-resource'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help integration-resource'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help link'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help link'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help link'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help link'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help link'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help link'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help link'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help link'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help link'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help link'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help list'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help list'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help list'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help list'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help list'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help list'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help list'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help list'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help list'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help list'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help login'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help login'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help login'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help login'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help login'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help login'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help login'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help login'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help login'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help login'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help logout'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help logout'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help logout'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help logout'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help logout'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help logout'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help logout'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help logout'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help logout'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help logout'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help open'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help open'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help open'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help open'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help open'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help open'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help open'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help open'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help open'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help open'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help promote'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help promote'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help promote'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help promote'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help promote'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help promote'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help promote'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help promote'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help promote'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help promote'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help pull'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help pull'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help pull'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help pull'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help pull'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help pull'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help pull'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help pull'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help pull'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help pull'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help redeploy'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help redeploy'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help redeploy'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help redeploy'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help redeploy'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help redeploy'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help redeploy'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help redeploy'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help redeploy'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help redeploy'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help rollback'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help rollback'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help rollback'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help rollback'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help rollback'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help rollback'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help rollback'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help rollback'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help rollback'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help rollback'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help switch'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help switch'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help switch'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help switch'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help switch'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help switch'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help switch'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help switch'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help switch'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help switch'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help activity'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help activity'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help activity'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help activity'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help activity'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help activity'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help activity'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help activity'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help activity'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help activity'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help agent'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help agent'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help agent'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help agent'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help agent'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help agent'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help agent'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help agent'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help agent'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help agent'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help alerts'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help alerts'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help alerts'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help alerts'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help alerts'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help alerts'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help alerts'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help alerts'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help alerts'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help alerts'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help alias'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help alias'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help alias'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help alias'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help alias'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help alias'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help alias'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help alias'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help alias'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help alias'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help api'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help api'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help api'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help api'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help api'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help api'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help api'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help api'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help api'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help api'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help bisect'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help bisect'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help bisect'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help bisect'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help bisect'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help bisect'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help bisect'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help bisect'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help bisect'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help bisect'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help blob'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help blob'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help blob'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help blob'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help blob'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help blob'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help blob'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help blob'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help blob'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help blob'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help buy'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help buy'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help buy'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help buy'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help buy'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help buy'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help buy'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help buy'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help buy'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help buy'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help certs'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help certs'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help certs'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help certs'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help certs'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help certs'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help certs'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help certs'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help certs'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help certs'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help connect'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help connect'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help connect'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help connect'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help connect'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help connect'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help connect'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help connect'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help connect'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help connect'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help contract'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help contract'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help contract'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help contract'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help contract'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help contract'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help contract'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help contract'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help contract'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help contract'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help crons'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help crons'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help crons'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help crons'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help crons'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help crons'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help crons'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help crons'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help crons'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help crons'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help curl'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help curl'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help curl'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help curl'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help curl'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help curl'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help curl'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help curl'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help curl'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help curl'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help deploy-hooks'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help deploy-hooks'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help deploy-hooks'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help deploy-hooks'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help deploy-hooks'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help deploy-hooks'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help deploy-hooks'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help deploy-hooks'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help deploy-hooks'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help deploy-hooks'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help dns'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help dns'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help dns'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help dns'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help dns'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help dns'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help dns'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help dns'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help dns'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help dns'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help domains'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help domains'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help domains'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help domains'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help domains'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help domains'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help domains'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help domains'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help domains'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help domains'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help firewall'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help firewall'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help firewall'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help firewall'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help firewall'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help firewall'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help firewall'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help firewall'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help firewall'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help firewall'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help httpstat'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help httpstat'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help httpstat'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help httpstat'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help httpstat'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help httpstat'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help httpstat'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help httpstat'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help httpstat'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help httpstat'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help logs'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help logs'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help logs'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help logs'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help logs'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help logs'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help logs'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help logs'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help logs'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help logs'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help metrics'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help metrics'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help metrics'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help metrics'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help metrics'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help metrics'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help metrics'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help metrics'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help metrics'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help metrics'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help mcp'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help mcp'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help mcp'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help mcp'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help mcp'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help mcp'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help mcp'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help mcp'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help mcp'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help mcp'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help microfrontends'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help microfrontends'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help microfrontends'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help microfrontends'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help microfrontends'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help microfrontends'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help microfrontends'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help microfrontends'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help microfrontends'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help microfrontends'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help projects'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help projects'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help projects'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help projects'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help projects'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help projects'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help projects'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help projects'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help projects'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help projects'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help redirects'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help redirects'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help redirects'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help redirects'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help redirects'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help redirects'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help redirects'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help redirects'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help redirects'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help redirects'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help remove'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help remove'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help remove'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help remove'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help remove'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help remove'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help remove'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help remove'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help remove'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help remove'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help routes'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help routes'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help routes'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help routes'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help routes'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help routes'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help routes'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help routes'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help routes'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help routes'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help rolling-release'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help rolling-release'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help rolling-release'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help rolling-release'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help rolling-release'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help rolling-release'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help rolling-release'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help rolling-release'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help rolling-release'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help rolling-release'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help skills'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help skills'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help skills'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help skills'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help skills'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help skills'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help skills'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help skills'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help skills'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help skills'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help target'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help target'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help target'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help target'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help target'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help target'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help target'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help target'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help target'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help target'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help teams'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help teams'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help teams'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help teams'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help teams'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help teams'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help teams'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help teams'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help teams'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help teams'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help telemetry'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help telemetry'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help telemetry'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help telemetry'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help telemetry'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help telemetry'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help telemetry'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help telemetry'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help telemetry'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help telemetry'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help traces'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help traces'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help traces'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help traces'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help traces'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help traces'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help traces'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help traces'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help traces'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help traces'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help upgrade'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help upgrade'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help upgrade'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help upgrade'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help upgrade'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help upgrade'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help upgrade'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help upgrade'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help upgrade'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help upgrade'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help usage'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help usage'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help usage'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help usage'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help usage'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help usage'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help usage'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help usage'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help usage'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help usage'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help webhooks'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help webhooks'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help webhooks'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help webhooks'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help webhooks'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help webhooks'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help webhooks'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help webhooks'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help webhooks'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help webhooks'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help whoami'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help whoami'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help whoami'" -l "cwd" -d "Current working directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help whoami'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help whoami'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help whoami'" -s "d" -l "debug" -d "Debug mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help whoami'" -l "no-color" -d "No color mode [off]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help whoami'" -l "non-interactive" -d "Run without interactive prompts (default when agent detected)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help whoami'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'help whoami'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'init'" -s "f" -l "force" -d "Overwrite destination directory if exists [off]" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'init'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'init'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'init'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'init'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'init'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'init'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'init'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'init'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'init'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'init'" -s "v" -l "version" -d "Output the version number" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'inspect'" -s "F" -l "format" -d "Specify the output format" -xa "json" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'inspect'" -s "l" -l "logs" -d "Prints the build logs instead of the deployment summary" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'inspect'" -l "timeout" -d "Time to wait for deployment completion [3m]" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'inspect'" -l "wait" -d "Blocks until deployment completes" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'inspect'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'inspect'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'inspect'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'inspect'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'inspect'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'inspect'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'inspect'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'inspect'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'inspect'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'inspect'" -s "v" -l "version" -d "Output the version number" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'i'" -l "claim" -d "If the new resource is a sandbox (e.g. Stripe, Shopify), claim it immediately without prompting" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'i'" -s "e" -l "environment" -d "Environment to connect (can be repeated: production, preview, development). Defaults to all." # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'i'" -s "F" -l "format" -d "Specify the output format (json)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'i'" -l "installation-id" -d "Installation ID to use when multiple installations exist for the integration" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'i'" -s "m" -l "metadata" -d "Metadata for the resource as KEY=VALUE (can be repeated). Run `vercel integration add <name> --help` to see available keys." -xa "'(vercel integration add <name> --help)'" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'i'" -s "n" -l "name" -d "Custom name for the resource (auto-generated if not provided)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'i'" -l "no-claim" -d "If the new resource is a sandbox, skip the offer to claim it (only print a hint)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'i'" -l "no-connect" -d "Skip connecting the resource to the current project (also skips env pull)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'i'" -l "no-env-pull" -d "Skip running env pull after provisioning" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'i'" -s "p" -l "plan" -d "Billing plan ID to use for the resource" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'i'" -l "prefix" -d "Prefix for environment variable names (e.g., --prefix NEON2_ creates NEON2_DATABASE_URL instead of DATABASE_URL)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'i'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'i'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'i'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'i'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'i'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'i'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'i'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'i'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'i'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'i'" -s "v" -l "version" -d "Output the version number" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'install'" -l "claim" -d "If the new resource is a sandbox (e.g. Stripe, Shopify), claim it immediately without prompting" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'install'" -s "e" -l "environment" -d "Environment to connect (can be repeated: production, preview, development). Defaults to all." # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'install'" -s "F" -l "format" -d "Specify the output format (json)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'install'" -l "installation-id" -d "Installation ID to use when multiple installations exist for the integration" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'install'" -s "m" -l "metadata" -d "Metadata for the resource as KEY=VALUE (can be repeated). Run `vercel integration add <name> --help` to see available keys." -xa "'(vercel integration add <name> --help)'" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'install'" -s "n" -l "name" -d "Custom name for the resource (auto-generated if not provided)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'install'" -l "no-claim" -d "If the new resource is a sandbox, skip the offer to claim it (only print a hint)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'install'" -l "no-connect" -d "Skip connecting the resource to the current project (also skips env pull)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'install'" -l "no-env-pull" -d "Skip running env pull after provisioning" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'install'" -s "p" -l "plan" -d "Billing plan ID to use for the resource" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'install'" -l "prefix" -d "Prefix for environment variable names (e.g., --prefix NEON2_ creates NEON2_DATABASE_URL instead of DATABASE_URL)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'install'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'install'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'install'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'install'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'install'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'install'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'install'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'install'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'install'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'install'" -s "v" -l "version" -d "Output the version number" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration'" -s "v" -l "version" -d "Output the version number" # global
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'integration'" -a "add" -d "Installs a marketplace integration" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'integration'" -a "accept-terms" -d "Accept marketplace legal terms for an integration and install it on the current team (installation only; no product resource). Requires an interactive terminal and human confirmation. Does not replace integrations that require a browser or device attestation." # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'integration'" -a "balance" -d "Shows the balances and thresholds of a specified marketplace integration" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'integration'" -a "categories" -d "List marketplace integration categories (slugs valid for `integration discover --category`)" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'integration'" -a "discover" -d "Discover available marketplace integrations" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'integration'" -a "guide" -d "Show getting started guides and code snippets for a marketplace integration" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'integration'" -a "installations" -d "List marketplace integration installations for the current team (account scope)" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'integration'" -a "list" -d "List resources from marketplace integrations for the current project" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'integration'" -a "open" -d "Opens a marketplace integration's or resource's dashboard via SSO" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'integration'" -a "resource" -d "Manage marketplace integration resources (connect, disconnect, remove, create-threshold, claim)" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'integration'" -a "update" -d "Update a marketplace integration installation (billing plan or which projects can access it). Install, remove, and connect flows are separate (integration add, integration remove, integration-resource, env pull, etc.) — not part of update. UI-only flows (OAuth in a browser, consent screens, marketplace purchase) may not map one-to-one to a single CLI flag; pass --plan and --authorization-id when the product requires them for billing changes. Any extra fields on the configuration resource that the API exposes but this command PATCH body does not send are not covered until the API and CLI support them." # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'integration'" -a "remove" -d "Uninstalls a marketplace integration. Resources must be removed first using `integration-resource remove`." # sub
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration add'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration add'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration add'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration add'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration add'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration add'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration add'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration add'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration add'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration add'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration accept-terms'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration accept-terms'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration accept-terms'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration accept-terms'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration accept-terms'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration accept-terms'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration accept-terms'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration accept-terms'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration accept-terms'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration accept-terms'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration balance'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration balance'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration balance'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration balance'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration balance'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration balance'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration balance'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration balance'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration balance'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration balance'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration categories'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration categories'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration categories'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration categories'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration categories'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration categories'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration categories'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration categories'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration categories'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration categories'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration discover'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration discover'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration discover'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration discover'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration discover'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration discover'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration discover'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration discover'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration discover'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration discover'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration guide'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration guide'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration guide'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration guide'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration guide'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration guide'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration guide'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration guide'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration guide'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration guide'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration installations'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration installations'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration installations'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration installations'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration installations'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration installations'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration installations'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration installations'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration installations'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration installations'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration list'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration list'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration list'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration list'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration list'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration list'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration list'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration list'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration list'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration list'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration open'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration open'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration open'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration open'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration open'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration open'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration open'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration open'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration open'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration open'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration resource'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration resource'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration resource'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration resource'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration resource'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration resource'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration resource'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration resource'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration resource'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration resource'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration update'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration update'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration update'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration update'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration update'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration update'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration update'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration update'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration update'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration update'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration remove'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration remove'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration remove'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration remove'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration remove'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration remove'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration remove'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration remove'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration remove'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration remove'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir'" -s "v" -l "version" -d "Output the version number" # global
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'ir'" -a "connect" -d "resource [project]            Connect a marketplace resource to a project" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'ir'" -a "create-threshold" -d "resource minimum spend limit  Creates a threshold for a resource (or installation, if the integration uses installation-level thresholds)" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'ir'" -a "disconnect" -d "resource [project]            Disconnect a marketplace resource from a project" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'ir'" -a "remove" -d "resource                      Delete an integration resource" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'ir'" -a "claim" -d "[resource]                    Claim a sandbox marketplace resource (e.g. Stripe, Shopify) by opening the provider claim URL in your browser" # sub
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir connect'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir connect'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir connect'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir connect'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir connect'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir connect'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir connect'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir connect'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir connect'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir connect'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir create-threshold'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir create-threshold'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir create-threshold'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir create-threshold'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir create-threshold'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir create-threshold'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir create-threshold'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir create-threshold'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir create-threshold'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir create-threshold'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir disconnect'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir disconnect'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir disconnect'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir disconnect'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir disconnect'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir disconnect'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir disconnect'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir disconnect'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir disconnect'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir disconnect'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir remove'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir remove'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir remove'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir remove'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir remove'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir remove'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir remove'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir remove'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir remove'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir remove'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir claim'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir claim'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir claim'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir claim'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir claim'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir claim'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir claim'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir claim'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir claim'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ir claim'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource'" -s "v" -l "version" -d "Output the version number" # global
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource'" -a "connect" -d "Connect a marketplace resource to a project" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource'" -a "create-threshold" -d "Creates a threshold for a resource (or installation, if the integration uses installation-level thresholds)" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource'" -a "disconnect" -d "Disconnect a marketplace resource from a project" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource'" -a "remove" -d "Delete an integration resource" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource'" -a "claim" -d "Claim a sandbox marketplace resource (e.g. Stripe, Shopify) by opening the provider claim URL in your browser" # sub
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource connect'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource connect'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource connect'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource connect'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource connect'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource connect'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource connect'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource connect'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource connect'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource connect'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource create-threshold'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource create-threshold'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource create-threshold'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource create-threshold'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource create-threshold'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource create-threshold'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource create-threshold'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource create-threshold'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource create-threshold'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource create-threshold'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource disconnect'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource disconnect'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource disconnect'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource disconnect'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource disconnect'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource disconnect'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource disconnect'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource disconnect'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource disconnect'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource disconnect'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource remove'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource remove'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource remove'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource remove'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource remove'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource remove'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource remove'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource remove'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource remove'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource remove'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource claim'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource claim'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource claim'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource claim'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource claim'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource claim'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource claim'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource claim'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource claim'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'integration-resource claim'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'link'" -s "p" -l "project" -d "Set the project name or ID to link; required for non-interactive existing-project links" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'link'" -s "r" -l "repo" -d "Link multiple projects from the Git repository (alpha)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'link'" -l "team" -d "Set the team ID or slug; use with --project for non-interactive links" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'link'" -s "y" -l "yes" -d "Skip questions when setting up with default team and settings" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'link'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'link'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'link'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'link'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'link'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'link'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'link'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'link'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'link'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'link'" -s "v" -l "version" -d "Output the version number" # global
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'link'" -a "add" -d "Add projects to an existing repository link created by link --repo" # sub
complete -c "vercel" -n "__fish_seen_subcommand_from 'link add'" -s "p" -l "project" -d "Set the project name or ID to link; required for non-interactive existing-project links" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'link add'" -s "r" -l "repo" -d "Link multiple projects from the Git repository (alpha)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'link add'" -l "team" -d "Set the team ID or slug; use with --project for non-interactive links" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'link add'" -s "y" -l "yes" -d "Skip questions when setting up with default team and settings" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'link add'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'link add'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'link add'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'link add'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'link add'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'link add'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'link add'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'link add'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'link add'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'link add'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'ls'" -s "a" -l "all" -d "List resources across all projects" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'ls'" -l "environment" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'ls'" -s "F" -l "format" -d "Specify the output format (json)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'ls'" -s "m" -l "meta" -d "Filter deployments by metadata (e.g.: `-m KEY=value`). Can appear many times." # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'ls'" -s "N" -l "next" -d "Show next page of results" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'ls'" -s "p" -l "policy" -d "See deployments with provided Deployment Retention policies (e.g.: `-p KEY=value`). Can appear many times." # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'ls'" -s "s" -l "status" -d "Filter deployments by their status. Can be comma-separated for multiple statuses (e.g.: `--status BUILDING,READY`)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'ls'" -s "y" -l "yes" -d "Accept default value for all prompts" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'ls'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'ls'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'ls'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'ls'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'ls'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'ls'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'ls'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'ls'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'ls'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'ls'" -s "v" -l "version" -d "Output the version number" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'list'" -s "a" -l "all" -d "List resources across all projects" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'list'" -l "environment" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'list'" -s "F" -l "format" -d "Specify the output format (json)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'list'" -s "m" -l "meta" -d "Filter deployments by metadata (e.g.: `-m KEY=value`). Can appear many times." # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'list'" -s "N" -l "next" -d "Show next page of results" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'list'" -s "p" -l "policy" -d "See deployments with provided Deployment Retention policies (e.g.: `-p KEY=value`). Can appear many times." # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'list'" -s "s" -l "status" -d "Filter deployments by their status. Can be comma-separated for multiple statuses (e.g.: `--status BUILDING,READY`)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'list'" -s "y" -l "yes" -d "Accept default value for all prompts" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'list'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'list'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'list'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'list'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'list'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'list'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'list'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'list'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'list'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'list'" -s "v" -l "version" -d "Output the version number" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'login'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'login'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'login'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'login'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'login'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'login'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'login'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'login'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'login'" -s "v" -l "version" -d "Output the version number" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'logout'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'logout'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'logout'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'logout'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'logout'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'logout'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'logout'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'logout'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'logout'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'logout'" -s "v" -l "version" -d "Output the version number" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'open'" -s "y" -l "yes" -d "Skip confirmation when linking is required (e.g. in non-interactive mode)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'open'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'open'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'open'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'open'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'open'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'open'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'open'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'open'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'open'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'open'" -s "v" -l "version" -d "Output the version number" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'promote'" -l "timeout" -d "Time to wait for promotion completion [3m]" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'promote'" -s "y" -l "yes" -d "Skip the confirmation prompt when linking a Project" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'promote'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'promote'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'promote'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'promote'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'promote'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'promote'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'promote'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'promote'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'promote'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'promote'" -s "v" -l "version" -d "Output the version number" # global
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'promote'" -a "status" -d "Show the status of any current pending promotions" # sub
complete -c "vercel" -n "__fish_seen_subcommand_from 'promote status'" -l "timeout" -d "Time to wait for promotion completion [3m]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'promote status'" -s "y" -l "yes" -d "Skip the confirmation prompt when linking a Project" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'promote status'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'promote status'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'promote status'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'promote status'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'promote status'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'promote status'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'promote status'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'promote status'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'promote status'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'promote status'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'pull'" -l "environment" -d "Deployment environment [development]" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'pull'" -l "git-branch" -d "Specify the Git branch to pull specific Environment Variables for" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'pull'" -l "project" -d "Project name or ID (defaults to the linked project)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'pull'" -s "y" -l "yes" -d "Skip questions when setting up new project using default scope and settings" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'pull'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'pull'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'pull'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'pull'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'pull'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'pull'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'pull'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'pull'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'pull'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'pull'" -s "v" -l "version" -d "Output the version number" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'redeploy'" -l "no-wait" -d "Don't wait for the redeploy to finish" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'redeploy'" -l "target" -d "Redeploy to a specific target environment" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'redeploy'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'redeploy'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'redeploy'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'redeploy'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'redeploy'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'redeploy'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'redeploy'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'redeploy'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'redeploy'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'redeploy'" -s "v" -l "version" -d "Output the version number" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'rollback'" -l "timeout" -d "Time to wait for rollback completion [3m]" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'rollback'" -s "y" -l "yes" -d "Accept default value for all prompts" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'rollback'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'rollback'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'rollback'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'rollback'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'rollback'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'rollback'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'rollback'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'rollback'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'rollback'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'rollback'" -s "v" -l "version" -d "Output the version number" # global
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'rollback'" -a "status" -d "Show the status of any current pending rollbacks" # sub
complete -c "vercel" -n "__fish_seen_subcommand_from 'rollback status'" -l "timeout" -d "Time to wait for rollback completion [3m]" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rollback status'" -s "y" -l "yes" -d "Accept default value for all prompts" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rollback status'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rollback status'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rollback status'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rollback status'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rollback status'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rollback status'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rollback status'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rollback status'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'switch'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'switch'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'switch'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'switch'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'switch'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'switch'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'switch'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'switch'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'switch'" -s "v" -l "version" -d "Output the version number" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity'" -s "a" -l "all" -d "Show all team events (ignore linked project auto-scoping)." # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity'" -s "F" -l "format" -d "Specify the output format (json)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity'" -l "limit" -d "Number of results to return per page (default: 20, max: 100)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity'" -s "N" -l "next" -d "Show next page of results" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity'" -s "p" -l "project" -d "Filter by project (overrides auto-detected linked project)." # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity'" -l "since" -d "Show events after this date (ISO 8601 or relative: 1d, 7d, 30d)." # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity'" -l "type" -d "Filter by event type. Repeatable and comma-separated (e.g. --type deployment --type project-created or --type deployment,project-created)." # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity'" -l "until" -d "Show events before this date (ISO 8601 or relative)." # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity'" -s "v" -l "version" -d "Output the version number" # global
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'activity'" -a "types" -d "List available event types with descriptions." # sub
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity types'" -s "a" -l "all" -d "Show all team events (ignore linked project auto-scoping)." # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity types'" -s "F" -l "format" -d "Specify the output format (json)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity types'" -l "limit" -d "Number of results to return per page (default: 20, max: 100)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity types'" -s "N" -l "next" -d "Show next page of results" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity types'" -s "p" -l "project" -d "Filter by project (overrides auto-detected linked project)." # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity types'" -l "since" -d "Show events after this date (ISO 8601 or relative: 1d, 7d, 30d)." # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity types'" -l "type" -d "Filter by event type. Repeatable and comma-separated (e.g. --type deployment --type project-created or --type deployment,project-created)." # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity types'" -l "until" -d "Show events before this date (ISO 8601 or relative)." # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity types'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity types'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity types'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity types'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity types'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity types'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity types'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity types'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity types'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'activity types'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'agent'" -s "y" -l "yes" -d "Skip confirmation prompt" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'agent'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'agent'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'agent'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'agent'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'agent'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'agent'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'agent'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'agent'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'agent'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'agent'" -s "v" -l "version" -d "Output the version number" # global
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'agent'" -a "init" -d "Generate an AGENTS.md file with Vercel deployment best practices" # sub
complete -c "vercel" -n "__fish_seen_subcommand_from 'agent init'" -s "y" -l "yes" -d "Skip confirmation prompt" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'agent init'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'agent init'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'agent init'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'agent init'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'agent init'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'agent init'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'agent init'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'agent init'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'agent init'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'agent init'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts'" -l "ai" -d "Print AI-focused sections (title, resolved time, summary, key findings) instead of table output." # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts'" -s "a" -l "all" -d "Show team-wide alerts (ignore linked project auto-scoping)." # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts'" -s "F" -l "format" -d "Specify the output format (json)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts'" -l "limit" -d "Number of results to return per page (default: 20, max: 100)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts'" -s "p" -l "project" -d "Filter by project (overrides auto-detected linked project)." # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts'" -l "since" -d "Start of time range (ISO-8601). Defaults to 24 hours ago if not provided." # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts'" -l "type" -d "Filter by alert type. Repeatable and comma-separated (for example --type usage_anomaly,error_anomaly)." # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts'" -l "until" -d "End of time range (ISO-8601). Defaults to now." # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts'" -s "v" -l "version" -d "Output the version number" # global
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'alerts'" -a "inspect" -d "Show details for a single alert group" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'alerts'" -a "rules" -d "Create, list, update, or delete alert notification rules (dashboard parity)." # sub
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts inspect'" -l "ai" -d "Print AI-focused sections (title, resolved time, summary, key findings) instead of table output." # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts inspect'" -s "a" -l "all" -d "Show team-wide alerts (ignore linked project auto-scoping)." # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts inspect'" -s "F" -l "format" -d "Specify the output format (json)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts inspect'" -l "limit" -d "Number of results to return per page (default: 20, max: 100)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts inspect'" -s "p" -l "project" -d "Filter by project (overrides auto-detected linked project)." # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts inspect'" -l "since" -d "Start of time range (ISO-8601). Defaults to 24 hours ago if not provided." # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts inspect'" -l "type" -d "Filter by alert type. Repeatable and comma-separated (for example --type usage_anomaly,error_anomaly)." # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts inspect'" -l "until" -d "End of time range (ISO-8601). Defaults to now." # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts inspect'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts inspect'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts inspect'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts inspect'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts inspect'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts inspect'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts inspect'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts inspect'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts inspect'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts inspect'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts rules'" -l "ai" -d "Print AI-focused sections (title, resolved time, summary, key findings) instead of table output." # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts rules'" -s "a" -l "all" -d "Show team-wide alerts (ignore linked project auto-scoping)." # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts rules'" -s "F" -l "format" -d "Specify the output format (json)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts rules'" -l "limit" -d "Number of results to return per page (default: 20, max: 100)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts rules'" -s "p" -l "project" -d "Filter by project (overrides auto-detected linked project)." # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts rules'" -l "since" -d "Start of time range (ISO-8601). Defaults to 24 hours ago if not provided." # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts rules'" -l "type" -d "Filter by alert type. Repeatable and comma-separated (for example --type usage_anomaly,error_anomaly)." # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts rules'" -l "until" -d "End of time range (ISO-8601). Defaults to now." # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts rules'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts rules'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts rules'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts rules'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts rules'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts rules'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts rules'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts rules'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts rules'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alerts rules'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias'" -s "v" -l "version" -d "Output the version number" # global
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'alias'" -a "list" -d "Show all aliases" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'alias'" -a "remove" -d "Remove an alias using its hostname" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'alias'" -a "set" -d "Create a new alias (default)" # sub
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias list'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias list'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias list'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias list'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias list'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias list'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias list'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias list'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias list'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias list'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias remove'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias remove'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias remove'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias remove'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias remove'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias remove'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias remove'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias remove'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias remove'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias remove'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias set'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias set'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias set'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias set'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias set'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias set'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias set'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias set'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias set'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'alias set'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'api'" -l "dangerously-skip-permissions" -d "Skip confirmation prompts for DELETE operations (use with caution)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'api'" -s "F" -l "field" -d "Add a typed parameter (numbers, booleans parsed). Use @file for file contents" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'api'" -l "generate" -d "Generate output instead of executing (e.g., --generate=curl)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'api'" -s "H" -l "header" -d "Add a custom HTTP header" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'api'" -s "i" -l "include" -d "Include response headers in output" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'api'" -l "input" -d "Read request body from file (use - for stdin)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'api'" -s "X" -l "method" -d "HTTP method (GET, POST, PUT, PATCH, DELETE). Defaults to GET, or POST if body is provided" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'api'" -l "paginate" -d "Fetch all pages of results" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'api'" -l "raw" -d "Output raw JSON without pretty-printing" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'api'" -s "f" -l "raw-field" -d "Add a string option (no type parsing)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'api'" -l "refresh" -d "Force refresh the cached OpenAPI spec" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'api'" -l "silent" -d "Suppress response output" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'api'" -l "spec-url" -d "Fetch endpoints from a custom OpenAPI spec URL instead of the public Vercel spec" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'api'" -l "verbose" -d "Show debug information including full request/response" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'api'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'api'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'api'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'api'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'api'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'api'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'api'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'api'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'api'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'api'" -s "v" -l "version" -d "Output the version number" # global
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'api'" -a "list" -d "List all available API endpoints" # sub
complete -c "vercel" -n "__fish_seen_subcommand_from 'api list'" -l "dangerously-skip-permissions" -d "Skip confirmation prompts for DELETE operations (use with caution)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'api list'" -s "F" -l "field" -d "Add a typed parameter (numbers, booleans parsed). Use @file for file contents" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'api list'" -l "generate" -d "Generate output instead of executing (e.g., --generate=curl)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'api list'" -s "H" -l "header" -d "Add a custom HTTP header" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'api list'" -s "i" -l "include" -d "Include response headers in output" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'api list'" -l "input" -d "Read request body from file (use - for stdin)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'api list'" -s "X" -l "method" -d "HTTP method (GET, POST, PUT, PATCH, DELETE). Defaults to GET, or POST if body is provided" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'api list'" -l "paginate" -d "Fetch all pages of results" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'api list'" -l "raw" -d "Output raw JSON without pretty-printing" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'api list'" -s "f" -l "raw-field" -d "Add a string option (no type parsing)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'api list'" -l "refresh" -d "Force refresh the cached OpenAPI spec" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'api list'" -l "silent" -d "Suppress response output" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'api list'" -l "spec-url" -d "Fetch endpoints from a custom OpenAPI spec URL instead of the public Vercel spec" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'api list'" -l "verbose" -d "Show debug information including full request/response" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'api list'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'api list'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'api list'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'api list'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'api list'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'api list'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'api list'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'api list'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'api list'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'api list'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'bisect'" -s "b" -l "bad" -d "Known bad URL" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'bisect'" -s "g" -l "good" -d "Known good URL" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'bisect'" -s "o" -l "open" -d "Automatically open each URL in the browser" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'bisect'" -s "p" -l "path" -d "Subpath of the deployment URL to test" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'bisect'" -s "r" -l "run" -d "Test script to run for each deployment" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'bisect'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'bisect'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'bisect'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'bisect'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'bisect'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'bisect'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'bisect'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'bisect'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'bisect'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'bisect'" -s "v" -l "version" -d "Output the version number" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob'" -l "oidc-token" -d "OIDC token for the Blob store (must be passed together with --store-id)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob'" -l "rw-token" -d "Read_Write_Token for the Blob store" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob'" -l "store-id" -d "Blob store id, with or without the \"store_\" prefix (must be passed together with --oidc-token)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob'" -s "v" -l "version" -d "Output the version number" # global
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'blob'" -a "list" -d "List all files in the Blob store" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'blob'" -a "put" -d "Upload a file to the Blob store" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'blob'" -a "get" -d "Download a blob by URL or pathname" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'blob'" -a "del" -d "Delete a file from the Blob store" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'blob'" -a "copy" -d "Copy a file in the Blob store" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'blob'" -a "signed-token" -d "Issue a short-lived signed token for Blob operations" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'blob'" -a "presign" -d "Generate a presigned URL for Blob operations" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'blob'" -a "create-store" -d "Create a new Blob store" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'blob'" -a "delete-store" -d "Delete a Blob store" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'blob'" -a "get-store" -d "Get a Blob store" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'blob'" -a "list-stores" -d "List all Blob stores" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'blob'" -a "empty-store" -d "Delete all blobs in a Blob store" # sub
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob list'" -l "oidc-token" -d "OIDC token for the Blob store (must be passed together with --store-id)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob list'" -l "rw-token" -d "Read_Write_Token for the Blob store" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob list'" -l "store-id" -d "Blob store id, with or without the \"store_\" prefix (must be passed together with --oidc-token)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob list'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob list'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob list'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob list'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob list'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob list'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob list'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob list'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob list'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob list'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob put'" -l "oidc-token" -d "OIDC token for the Blob store (must be passed together with --store-id)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob put'" -l "rw-token" -d "Read_Write_Token for the Blob store" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob put'" -l "store-id" -d "Blob store id, with or without the \"store_\" prefix (must be passed together with --oidc-token)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob put'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob put'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob put'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob put'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob put'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob put'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob put'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob put'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob put'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob put'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob get'" -l "oidc-token" -d "OIDC token for the Blob store (must be passed together with --store-id)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob get'" -l "rw-token" -d "Read_Write_Token for the Blob store" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob get'" -l "store-id" -d "Blob store id, with or without the \"store_\" prefix (must be passed together with --oidc-token)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob get'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob get'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob get'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob get'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob get'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob get'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob get'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob get'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob get'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob get'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob del'" -l "oidc-token" -d "OIDC token for the Blob store (must be passed together with --store-id)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob del'" -l "rw-token" -d "Read_Write_Token for the Blob store" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob del'" -l "store-id" -d "Blob store id, with or without the \"store_\" prefix (must be passed together with --oidc-token)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob del'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob del'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob del'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob del'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob del'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob del'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob del'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob del'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob del'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob del'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob copy'" -l "oidc-token" -d "OIDC token for the Blob store (must be passed together with --store-id)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob copy'" -l "rw-token" -d "Read_Write_Token for the Blob store" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob copy'" -l "store-id" -d "Blob store id, with or without the \"store_\" prefix (must be passed together with --oidc-token)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob copy'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob copy'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob copy'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob copy'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob copy'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob copy'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob copy'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob copy'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob copy'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob copy'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob signed-token'" -l "oidc-token" -d "OIDC token for the Blob store (must be passed together with --store-id)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob signed-token'" -l "rw-token" -d "Read_Write_Token for the Blob store" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob signed-token'" -l "store-id" -d "Blob store id, with or without the \"store_\" prefix (must be passed together with --oidc-token)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob signed-token'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob signed-token'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob signed-token'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob signed-token'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob signed-token'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob signed-token'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob signed-token'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob signed-token'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob signed-token'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob signed-token'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob presign'" -l "oidc-token" -d "OIDC token for the Blob store (must be passed together with --store-id)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob presign'" -l "rw-token" -d "Read_Write_Token for the Blob store" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob presign'" -l "store-id" -d "Blob store id, with or without the \"store_\" prefix (must be passed together with --oidc-token)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob presign'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob presign'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob presign'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob presign'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob presign'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob presign'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob presign'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob presign'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob presign'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob presign'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob create-store'" -l "oidc-token" -d "OIDC token for the Blob store (must be passed together with --store-id)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob create-store'" -l "rw-token" -d "Read_Write_Token for the Blob store" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob create-store'" -l "store-id" -d "Blob store id, with or without the \"store_\" prefix (must be passed together with --oidc-token)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob create-store'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob create-store'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob create-store'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob create-store'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob create-store'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob create-store'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob create-store'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob create-store'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob create-store'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob create-store'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob delete-store'" -l "oidc-token" -d "OIDC token for the Blob store (must be passed together with --store-id)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob delete-store'" -l "rw-token" -d "Read_Write_Token for the Blob store" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob delete-store'" -l "store-id" -d "Blob store id, with or without the \"store_\" prefix (must be passed together with --oidc-token)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob delete-store'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob delete-store'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob delete-store'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob delete-store'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob delete-store'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob delete-store'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob delete-store'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob delete-store'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob delete-store'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob delete-store'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob get-store'" -l "oidc-token" -d "OIDC token for the Blob store (must be passed together with --store-id)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob get-store'" -l "rw-token" -d "Read_Write_Token for the Blob store" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob get-store'" -l "store-id" -d "Blob store id, with or without the \"store_\" prefix (must be passed together with --oidc-token)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob get-store'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob get-store'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob get-store'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob get-store'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob get-store'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob get-store'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob get-store'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob get-store'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob get-store'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob get-store'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob list-stores'" -l "oidc-token" -d "OIDC token for the Blob store (must be passed together with --store-id)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob list-stores'" -l "rw-token" -d "Read_Write_Token for the Blob store" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob list-stores'" -l "store-id" -d "Blob store id, with or without the \"store_\" prefix (must be passed together with --oidc-token)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob list-stores'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob list-stores'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob list-stores'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob list-stores'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob list-stores'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob list-stores'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob list-stores'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob list-stores'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob list-stores'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob list-stores'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob empty-store'" -l "oidc-token" -d "OIDC token for the Blob store (must be passed together with --store-id)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob empty-store'" -l "rw-token" -d "Read_Write_Token for the Blob store" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob empty-store'" -l "store-id" -d "Blob store id, with or without the \"store_\" prefix (must be passed together with --oidc-token)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob empty-store'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob empty-store'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob empty-store'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob empty-store'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob empty-store'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob empty-store'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob empty-store'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob empty-store'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob empty-store'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'blob empty-store'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy'" -s "v" -l "version" -d "Output the version number" # global
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'buy'" -a "credits" -d "Purchase Vercel credits for your team" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'buy'" -a "addon" -d "Purchase a Vercel addon for your team" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'buy'" -a "pro" -d "Purchase a Vercel Pro subscription for your team" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'buy'" -a "v0" -d "Purchase a v0 subscription for your team" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'buy'" -a "domain" -d "Purchase a domain name" # sub
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy credits'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy credits'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy credits'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy credits'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy credits'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy credits'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy credits'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy credits'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy credits'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy credits'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy addon'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy addon'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy addon'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy addon'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy addon'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy addon'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy addon'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy addon'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy addon'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy addon'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy pro'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy pro'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy pro'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy pro'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy pro'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy pro'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy pro'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy pro'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy pro'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy pro'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy v0'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy v0'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy v0'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy v0'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy v0'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy v0'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy v0'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy v0'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy v0'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy v0'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy domain'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy domain'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy domain'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy domain'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy domain'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy domain'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy domain'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy domain'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy domain'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'buy domain'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs'" -s "v" -l "version" -d "Output the version number" # global
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'certs'" -a "add" -d "Add a new certificate" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'certs'" -a "issue" -d "Issue a new certificate for a domain" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'certs'" -a "list" -d "Show all available certificates" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'certs'" -a "remove" -d "Remove a certificate by id" # sub
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs add'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs add'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs add'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs add'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs add'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs add'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs add'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs add'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs add'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs add'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs issue'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs issue'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs issue'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs issue'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs issue'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs issue'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs issue'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs issue'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs issue'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs issue'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs list'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs list'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs list'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs list'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs list'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs list'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs list'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs list'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs list'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs list'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs remove'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs remove'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs remove'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs remove'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs remove'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs remove'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs remove'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs remove'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs remove'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'certs remove'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect'" -s "v" -l "version" -d "Output the version number" # global
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'connect'" -a "create" -d "Create a new connector" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'connect'" -a "update" -d "Update connector branding (icon and colors)" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'connect'" -a "list" -d "List connectors linked to the current project (falls back to every connector in the team when no project is linked or when --all-projects is set)" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'connect'" -a "token" -d "Get a token for a connector (accepts a connector ID like scl_abc or a UID like slack/my-bot)" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'connect'" -a "attach" -d "Attach a Vercel project to a connector for one or more environments" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'connect'" -a "detach" -d "Detach a Vercel project from a connector" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'connect'" -a "remove" -d "Delete a connector" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'connect'" -a "revoke-tokens" -d "Revoke tokens issued from a connector" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'connect'" -a "open" -d "Open a connector in the Vercel dashboard" # sub
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect create'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect create'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect create'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect create'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect create'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect create'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect create'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect create'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect create'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect create'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect update'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect update'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect update'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect update'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect update'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect update'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect update'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect update'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect update'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect update'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect list'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect list'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect list'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect list'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect list'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect list'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect list'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect list'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect list'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect list'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect token'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect token'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect token'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect token'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect token'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect token'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect token'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect token'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect token'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect token'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect attach'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect attach'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect attach'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect attach'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect attach'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect attach'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect attach'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect attach'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect attach'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect attach'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect detach'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect detach'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect detach'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect detach'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect detach'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect detach'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect detach'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect detach'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect detach'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect detach'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect remove'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect remove'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect remove'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect remove'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect remove'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect remove'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect remove'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect remove'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect remove'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect remove'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect revoke-tokens'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect revoke-tokens'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect revoke-tokens'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect revoke-tokens'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect revoke-tokens'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect revoke-tokens'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect revoke-tokens'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect revoke-tokens'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect revoke-tokens'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect revoke-tokens'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect open'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect open'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect open'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect open'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect open'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect open'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect open'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect open'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect open'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'connect open'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'contract'" -s "F" -l "format" -d "Specify the output format (json)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'contract'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'contract'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'contract'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'contract'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'contract'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'contract'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'contract'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'contract'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'contract'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'contract'" -s "v" -l "version" -d "Output the version number" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron'" -s "v" -l "version" -d "Output the version number" # global
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'cron'" -a "add" -d "Add a cron job to vercel.json" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'cron'" -a "list" -d "List all cron jobs for a project (default)" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'cron'" -a "run" -d "Trigger a cron job to run immediately" # sub
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron add'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron add'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron add'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron add'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron add'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron add'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron add'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron add'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron add'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron add'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron list'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron list'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron list'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron list'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron list'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron list'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron list'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron list'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron list'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron list'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron run'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron run'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron run'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron run'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron run'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron run'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron run'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron run'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron run'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'cron run'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons'" -s "v" -l "version" -d "Output the version number" # global
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'crons'" -a "add" -d "Add a cron job to vercel.json" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'crons'" -a "list" -d "List all cron jobs for a project (default)" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'crons'" -a "run" -d "Trigger a cron job to run immediately" # sub
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons add'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons add'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons add'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons add'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons add'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons add'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons add'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons add'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons list'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons list'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons list'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons list'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons list'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons list'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons list'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons list'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons run'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons run'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons run'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons run'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons run'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons run'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons run'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'crons run'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'curl'" -l "deployment" -d "The deployment ID or URL to target" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'curl'" -l "json" -d "With --trace, emit { response, requestId } as JSON on stdout" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'curl'" -l "protection-bypass" -d "Protection bypass secret for accessing protected deployments" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'curl'" -l "trace" -d "Capture a session trace for the request and print the trace request id" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'curl'" -s "y" -l "yes" -d "Skip confirmation when linking is required (e.g. in non-interactive mode)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'curl'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'curl'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'curl'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'curl'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'curl'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'curl'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'curl'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'curl'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'curl'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'curl'" -s "v" -l "version" -d "Output the version number" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks'" -s "v" -l "version" -d "Output the version number" # global
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks'" -a "list" -d "List deploy hooks for a project" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks'" -a "create" -d "Create a deploy hook for a Git branch" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks'" -a "remove" -d "Remove a deploy hook by id" # sub
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks list'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks list'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks list'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks list'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks list'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks list'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks list'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks list'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks list'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks list'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks create'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks create'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks create'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks create'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks create'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks create'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks create'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks create'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks create'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks create'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks remove'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks remove'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks remove'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks remove'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks remove'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks remove'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks remove'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks remove'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks remove'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'deploy-hooks remove'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns'" -s "v" -l "version" -d "Output the version number" # global
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'dns'" -a "add" -d "Add a new DNS entry (see below for examples)" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'dns'" -a "import" -d "Import a DNS zone file (see below for examples)" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'dns'" -a "list" -d "List DNS entries. Pass a domain to list its records, or omit the argument to list records across every domain on the scope (default)" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'dns'" -a "remove" -d "Remove a DNS entry using its ID" # sub
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns add'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns add'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns add'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns add'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns add'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns add'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns add'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns add'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns add'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns add'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns import'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns import'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns import'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns import'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns import'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns import'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns import'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns import'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns import'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns import'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns list'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns list'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns list'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns list'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns list'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns list'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns list'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns list'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns list'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns list'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns remove'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns remove'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns remove'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns remove'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns remove'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns remove'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns remove'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns remove'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns remove'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'dns remove'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains'" -s "v" -l "version" -d "Output the version number" # global
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'domains'" -a "list" -d "Show all domains in a list (default)" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'domains'" -a "inspect" -d "Displays information related to a domain" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'domains'" -a "add" -d "Add a domain name that you already own to a Vercel Team" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'domains'" -a "buy" -d "Purchase a new domain name" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'domains'" -a "check" -d "Check if a domain is available to buy" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'domains'" -a "move" -d "Move ownership of a domain name to another Vercel Team" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'domains'" -a "price" -d "Show registrar price quotes for one or more domains" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'domains'" -a "search" -d "Discover domain-name candidates from a keyword or fragment" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'domains'" -a "transfer-in" -d "Transfer in a domain name to Vercel" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'domains'" -a "remove" -d "Remove ownership of a domain name from a Vercel Team" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'domains'" -a "verify" -d "Check a domain's DNS configuration and explain what to fix when it is misconfigured or unverified" # sub
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains list'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains list'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains list'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains list'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains list'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains list'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains list'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains list'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains list'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains list'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains inspect'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains inspect'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains inspect'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains inspect'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains inspect'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains inspect'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains inspect'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains inspect'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains inspect'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains inspect'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains add'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains add'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains add'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains add'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains add'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains add'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains add'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains add'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains add'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains add'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains buy'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains buy'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains buy'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains buy'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains buy'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains buy'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains buy'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains buy'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains buy'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains buy'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains check'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains check'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains check'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains check'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains check'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains check'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains check'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains check'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains check'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains check'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains move'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains move'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains move'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains move'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains move'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains move'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains move'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains move'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains move'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains move'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains price'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains price'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains price'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains price'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains price'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains price'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains price'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains price'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains price'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains price'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains search'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains search'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains search'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains search'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains search'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains search'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains search'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains search'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains search'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains search'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains transfer-in'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains transfer-in'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains transfer-in'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains transfer-in'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains transfer-in'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains transfer-in'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains transfer-in'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains transfer-in'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains transfer-in'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains transfer-in'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains remove'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains remove'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains remove'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains remove'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains remove'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains remove'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains remove'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains remove'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains remove'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains remove'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains verify'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains verify'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains verify'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains verify'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains verify'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains verify'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains verify'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains verify'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains verify'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'domains verify'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall'" -s "v" -l "version" -d "Output the version number" # global
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'firewall'" -a "overview" -d "Show a summary of your project's firewall configuration, including active rules, IP blocks, bypasses, and any unpublished draft changes" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'firewall'" -a "diff" -d "Show draft changes that have been made but are not yet published to production" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'firewall'" -a "publish" -d "Publish all draft firewall changes to production, making them live immediately" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'firewall'" -a "discard" -d "Permanently discard all unpublished draft changes, reverting to the current production configuration" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'firewall'" -a "ip-blocks" -d "Manage IP blocking rules that deny access from specific addresses or ranges" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'firewall'" -a "rules" -d "Manage custom firewall rules that control how traffic is handled based on conditions" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'firewall'" -a "system-bypass" -d "Manage system bypass rules that allow specific IPs to skip firewall checks" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'firewall'" -a "attack-mode" -d "Manage attack mode, which challenges all incoming requests with a verification page" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'firewall'" -a "system-mitigations" -d "Manage automatic DDoS protection and system-level traffic filtering" # sub
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall overview'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall overview'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall overview'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall overview'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall overview'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall overview'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall overview'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall overview'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall overview'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall overview'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall diff'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall diff'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall diff'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall diff'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall diff'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall diff'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall diff'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall diff'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall diff'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall diff'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall publish'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall publish'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall publish'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall publish'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall publish'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall publish'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall publish'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall publish'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall publish'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall publish'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall discard'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall discard'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall discard'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall discard'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall discard'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall discard'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall discard'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall discard'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall discard'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall discard'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall ip-blocks'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall ip-blocks'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall ip-blocks'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall ip-blocks'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall ip-blocks'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall ip-blocks'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall ip-blocks'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall ip-blocks'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall ip-blocks'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall ip-blocks'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall rules'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall rules'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall rules'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall rules'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall rules'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall rules'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall rules'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall rules'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall rules'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall rules'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall system-bypass'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall system-bypass'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall system-bypass'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall system-bypass'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall system-bypass'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall system-bypass'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall system-bypass'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall system-bypass'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall system-bypass'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall system-bypass'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall attack-mode'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall attack-mode'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall attack-mode'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall attack-mode'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall attack-mode'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall attack-mode'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall attack-mode'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall attack-mode'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall attack-mode'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall attack-mode'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall system-mitigations'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall system-mitigations'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall system-mitigations'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall system-mitigations'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall system-mitigations'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall system-mitigations'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall system-mitigations'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall system-mitigations'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall system-mitigations'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'firewall system-mitigations'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'httpstat'" -l "deployment" -d "The deployment ID or URL to target" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'httpstat'" -l "protection-bypass" -d "Protection bypass secret for accessing protected deployments" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'httpstat'" -s "y" -l "yes" -d "Skip confirmation when linking is required (e.g. in non-interactive mode)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'httpstat'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'httpstat'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'httpstat'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'httpstat'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'httpstat'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'httpstat'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'httpstat'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'httpstat'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'httpstat'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'httpstat'" -s "v" -l "version" -d "Output the version number" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'logs'" -s "b" -l "branch" -d "Filter by git branch (defaults to current branch for a linked project)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'logs'" -s "d" -l "deployment" -d "Filter logs to a specific deployment ID or URL (alternative to positional argument)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'logs'" -l "environment" -d "Filter by environment" -xa "production preview" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'logs'" -s "x" -l "expand" -d "Show full log message below each request line" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'logs'" -s "f" -l "follow" -d "Stream live runtime logs for a deployment" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'logs'" -s "j" -l "json" -d "Output logs as JSON Lines for piping to other tools" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'logs'" -l "level" -d "Filter by log level" -xa "error warning info fatal" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'logs'" -s "n" -l "limit" -d "Maximum number of results (default: 100)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'logs'" -l "no-branch" -d "Disable auto-detection of git branch" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'logs'" -l "no-follow" -d "No-op; deployment arguments only stream logs when --follow is set" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'logs'" -s "p" -l "project" -d "Project name or ID (defaults to the linked project)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'logs'" -s "q" -l "query" -d "Advanced search query (supports filter syntax, e.g. \"status:500 error\")" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'logs'" -l "request-id" -d "Filter by request ID" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'logs'" -l "since" -d "Start time (ISO format or relative: 1h, 30m)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'logs'" -l "source" -d "Filter by source" -xa "serverless edge-function edge-middleware static" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'logs'" -l "status-code" -d "Filter by HTTP status code (e.g., 500, 4xx)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'logs'" -l "until" -d "End time (ISO format or relative, default: now)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'logs'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'logs'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'logs'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'logs'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'logs'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'logs'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'logs'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'logs'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'logs'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'logs'" -s "v" -l "version" -d "Output the version number" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics'" -s "a" -l "aggregation" -d "Aggregation function (default: sum for counts/bytes/currency, avg for durations/memory/ratios)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics'" -l "all" -d "Query across all projects for the team" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics'" -l "bucket-timezone" -d "IANA timezone for calendar bucket alignment only; does not shift --since/--until or output timestamps (e.g., Europe/Paris)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics'" -s "f" -l "filter" -d "OData filter expression (repeatable, ANDed together)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics'" -s "F" -l "format" -d "Specify the output format (json)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics'" -s "g" -l "granularity" -d "Time bucket size (default: auto)" -xa "5m 15m 1h 1d" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics'" -l "group-by" -d "Dimensions to group by (repeatable)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics'" -s "l" -l "limit" -d "Max groups per time bucket (default: 10)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics'" -l "order" -d "Order direction for grouped results (default: desc)" -xa "asc desc" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics'" -l "order-by" -d "Order grouped results by (default: count)" -xa "value count" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics'" -l "prod" -d "Limit query to production environment (equivalent to -f \"environment eq 'production'\")" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics'" -s "p" -l "project" -d "Project name or ID (defaults to the linked project)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics'" -s "s" -l "since" -d "Start time: relative (1h, 30m, 2d) or ISO date (default: 1h)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics'" -s "u" -l "until" -d "End time (default: now)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics'" -s "v" -l "version" -d "Output the version number" # global
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'metrics'" -a "schema" -d "List available metrics or inspect a specific metric." # sub
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics schema'" -s "a" -l "aggregation" -d "Aggregation function (default: sum for counts/bytes/currency, avg for durations/memory/ratios)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics schema'" -l "all" -d "Query across all projects for the team" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics schema'" -l "bucket-timezone" -d "IANA timezone for calendar bucket alignment only; does not shift --since/--until or output timestamps (e.g., Europe/Paris)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics schema'" -s "f" -l "filter" -d "OData filter expression (repeatable, ANDed together)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics schema'" -s "F" -l "format" -d "Specify the output format (json)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics schema'" -s "g" -l "granularity" -d "Time bucket size (default: auto)" -xa "5m 15m 1h 1d" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics schema'" -l "group-by" -d "Dimensions to group by (repeatable)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics schema'" -s "l" -l "limit" -d "Max groups per time bucket (default: 10)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics schema'" -l "order" -d "Order direction for grouped results (default: desc)" -xa "asc desc" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics schema'" -l "order-by" -d "Order grouped results by (default: count)" -xa "value count" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics schema'" -l "prod" -d "Limit query to production environment (equivalent to -f \"environment eq 'production'\")" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics schema'" -s "p" -l "project" -d "Project name or ID (defaults to the linked project)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics schema'" -s "s" -l "since" -d "Start time: relative (1h, 30m, 2d) or ISO date (default: 1h)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics schema'" -s "u" -l "until" -d "End time (default: now)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics schema'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics schema'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics schema'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics schema'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics schema'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics schema'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics schema'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics schema'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics schema'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'metrics schema'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'mcp'" -l "clients" -d "Comma-separated list of MCP clients to set up. In interactive mode, skips the client picker when set. Required in non-interactive mode." -xa "Claude Code Claude.ai and Claude for desktop Cursor VS Code with Copilot" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'mcp'" -l "project" -d "Set up project-specific MCP access for the currently linked project" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'mcp'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'mcp'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'mcp'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'mcp'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'mcp'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'mcp'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'mcp'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'mcp'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'mcp'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'mcp'" -s "v" -l "version" -d "Output the version number" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends'" -s "v" -l "version" -d "Output the version number" # global
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends'" -a "create-group" -d "Create a new microfrontends group to compose multiple projects into one cohesive application with shared routing" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends'" -a "add-to-group" -d "Add the current project to a microfrontends group so it can be independently deployed as part of the microfrontends group" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends'" -a "remove-from-group" -d "Remove the current project from its microfrontends group so it is no longer part of the composed application" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends'" -a "delete-group" -d "Delete a microfrontends group and all of its settings. This action is not reversible." # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends'" -a "inspect-group" -d "Inspect a microfrontends group and return project metadata used for setup automation" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends'" -a "pull" -d "Pull a Vercel Microfrontends configuration into your project" # sub
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends create-group'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends create-group'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends create-group'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends create-group'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends create-group'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends create-group'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends create-group'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends create-group'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends create-group'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends create-group'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends add-to-group'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends add-to-group'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends add-to-group'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends add-to-group'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends add-to-group'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends add-to-group'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends add-to-group'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends add-to-group'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends add-to-group'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends add-to-group'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends remove-from-group'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends remove-from-group'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends remove-from-group'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends remove-from-group'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends remove-from-group'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends remove-from-group'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends remove-from-group'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends remove-from-group'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends remove-from-group'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends remove-from-group'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends delete-group'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends delete-group'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends delete-group'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends delete-group'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends delete-group'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends delete-group'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends delete-group'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends delete-group'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends delete-group'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends delete-group'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends inspect-group'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends inspect-group'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends inspect-group'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends inspect-group'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends inspect-group'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends inspect-group'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends inspect-group'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends inspect-group'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends inspect-group'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends inspect-group'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends pull'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends pull'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends pull'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends pull'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends pull'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends pull'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends pull'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends pull'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends pull'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'microfrontends pull'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects'" -s "v" -l "version" -d "Output the version number" # global
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'projects'" -a "add" -d "Add a new project" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'projects'" -a "access-summary" -d "Show member counts by team role for project access (requires access groups entitlement)" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'projects'" -a "checks" -d "List, add, or remove deployment checks for a project (GET/POST/DELETE /v2/projects/.../checks)" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'projects'" -a "inspect" -d "Displays information related to a project" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'projects'" -a "list" -d "Show all projects in the selected scope (default)" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'projects'" -a "members" -d "List project members for a project" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'projects'" -a "access-groups" -d "List access groups for a project" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'projects'" -a "protection" -d "Show or toggle deployment protection settings for a project" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'projects'" -a "web-analytics" -d "Enable Web Analytics for a project" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'projects'" -a "speed-insights" -d "Enable Speed Insights for a project" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'projects'" -a "rename" -d "Rename a project" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'projects'" -a "remove" -d "Delete a project" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'projects'" -a "token" -d "Get a development OIDC token for a project" # sub
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects add'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects add'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects add'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects add'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects add'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects add'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects add'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects add'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects add'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects add'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects access-summary'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects access-summary'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects access-summary'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects access-summary'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects access-summary'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects access-summary'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects access-summary'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects access-summary'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects access-summary'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects access-summary'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects checks'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects checks'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects checks'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects checks'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects checks'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects checks'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects checks'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects checks'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects checks'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects checks'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects inspect'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects inspect'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects inspect'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects inspect'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects inspect'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects inspect'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects inspect'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects inspect'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects inspect'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects inspect'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects list'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects list'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects list'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects list'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects list'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects list'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects list'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects list'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects list'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects list'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects members'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects members'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects members'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects members'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects members'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects members'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects members'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects members'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects members'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects members'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects access-groups'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects access-groups'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects access-groups'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects access-groups'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects access-groups'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects access-groups'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects access-groups'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects access-groups'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects access-groups'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects access-groups'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects protection'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects protection'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects protection'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects protection'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects protection'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects protection'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects protection'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects protection'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects protection'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects protection'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects web-analytics'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects web-analytics'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects web-analytics'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects web-analytics'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects web-analytics'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects web-analytics'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects web-analytics'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects web-analytics'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects web-analytics'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects web-analytics'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects speed-insights'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects speed-insights'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects speed-insights'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects speed-insights'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects speed-insights'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects speed-insights'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects speed-insights'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects speed-insights'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects speed-insights'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects speed-insights'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects rename'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects rename'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects rename'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects rename'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects rename'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects rename'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects rename'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects rename'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects rename'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects rename'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects remove'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects remove'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects remove'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects remove'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects remove'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects remove'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects remove'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects remove'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects remove'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects remove'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects token'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects token'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects token'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects token'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects token'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects token'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects token'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects token'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects token'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'projects token'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects'" -s "v" -l "version" -d "Output the version number" # global
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'redirects'" -a "list" -d "List all redirects for the current project. These redirects apply to all deployments and environments. There may also be redirects defined in a deployment that are not listed here." # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'redirects'" -a "list-versions" -d "List all versions of redirects" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'redirects'" -a "add" -d "Add a new redirect" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'redirects'" -a "upload" -d "Upload redirects from a CSV or JSON file" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'redirects'" -a "remove" -d "Remove a redirect" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'redirects'" -a "promote" -d "Promote a staged redirects version to production" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'redirects'" -a "restore" -d "Restore a previous redirects version" # sub
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects list'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects list'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects list'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects list'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects list'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects list'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects list'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects list'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects list-versions'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects list-versions'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects list-versions'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects list-versions'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects list-versions'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects list-versions'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects list-versions'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects list-versions'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects add'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects add'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects add'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects add'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects add'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects add'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects add'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects add'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects upload'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects upload'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects upload'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects upload'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects upload'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects upload'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects upload'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects upload'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects remove'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects remove'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects remove'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects remove'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects remove'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects remove'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects remove'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects remove'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects promote'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects promote'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects promote'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects promote'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects promote'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects promote'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects promote'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects promote'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects restore'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects restore'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects restore'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects restore'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects restore'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects restore'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects restore'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'redirects restore'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rm'" -s "s" -l "safe" -d "Skip deployments with an active alias" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'rm'" -s "y" -l "yes" -d "Skip confirmation" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'rm'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'rm'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'rm'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'rm'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'rm'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'rm'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'rm'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'rm'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'rm'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'rm'" -s "v" -l "version" -d "Output the version number" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'remove'" -s "s" -l "safe" -d "Skip deployments with an active alias" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'remove'" -s "y" -l "yes" -d "Skip confirmation" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'remove'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'remove'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'remove'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'remove'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'remove'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'remove'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'remove'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'remove'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'remove'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'remove'" -s "v" -l "version" -d "Output the version number" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes'" -s "v" -l "version" -d "Output the version number" # global
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'routes'" -a "list" -d "List all routing rules for the current project. These routes apply to all deployments and environments." # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'routes'" -a "list-versions" -d "List all versions of routing rules" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'routes'" -a "inspect" -d "Show detailed information about a specific route" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'routes'" -a "add" -d "Add a new routing rule to the project" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'routes'" -a "edit" -d "Edit an existing routing rule" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'routes'" -a "delete" -d "Delete one or more routing rules" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'routes'" -a "enable" -d "Enable a disabled routing rule" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'routes'" -a "disable" -d "Disable a routing rule without deleting it" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'routes'" -a "reorder" -d "Move a routing rule to a different position" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'routes'" -a "export" -d "Export routes in vercel.json or vercel.ts format" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'routes'" -a "publish" -d "Publish staged routing changes to production" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'routes'" -a "restore" -d "Restore a previous routing version to production" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'routes'" -a "discard-staging" -d "Discard staged routing changes" # sub
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes list'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes list'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes list'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes list'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes list'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes list'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes list'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes list'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes list'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes list'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes list-versions'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes list-versions'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes list-versions'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes list-versions'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes list-versions'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes list-versions'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes list-versions'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes list-versions'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes list-versions'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes list-versions'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes inspect'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes inspect'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes inspect'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes inspect'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes inspect'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes inspect'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes inspect'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes inspect'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes inspect'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes inspect'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes add'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes add'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes add'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes add'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes add'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes add'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes add'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes add'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes add'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes add'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes edit'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes edit'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes edit'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes edit'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes edit'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes edit'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes edit'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes edit'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes edit'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes edit'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes delete'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes delete'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes delete'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes delete'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes delete'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes delete'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes delete'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes delete'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes delete'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes delete'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes enable'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes enable'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes enable'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes enable'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes enable'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes enable'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes enable'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes enable'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes enable'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes enable'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes disable'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes disable'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes disable'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes disable'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes disable'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes disable'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes disable'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes disable'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes disable'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes disable'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes reorder'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes reorder'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes reorder'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes reorder'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes reorder'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes reorder'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes reorder'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes reorder'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes reorder'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes reorder'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes export'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes export'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes export'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes export'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes export'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes export'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes export'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes export'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes export'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes export'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes publish'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes publish'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes publish'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes publish'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes publish'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes publish'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes publish'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes publish'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes publish'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes publish'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes restore'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes restore'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes restore'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes restore'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes restore'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes restore'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes restore'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes restore'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes restore'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes restore'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes discard-staging'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes discard-staging'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes discard-staging'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes discard-staging'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes discard-staging'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes discard-staging'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes discard-staging'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes discard-staging'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes discard-staging'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'routes discard-staging'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr'" -s "v" -l "version" -d "Output the version number" # global
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'rr'" -a "configure" -d "Configure rolling release settings for a project" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'rr'" -a "start" -d "Start a rolling release" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'rr'" -a "approve" -d "Approve the current stage of an active rolling release" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'rr'" -a "abort" -d "Abort an active rolling release" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'rr'" -a "complete" -d "Complete an active rolling release" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'rr'" -a "fetch" -d "Fetch details about a rolling release" # sub
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr configure'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr configure'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr configure'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr configure'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr configure'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr configure'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr configure'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr configure'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr configure'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr configure'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr start'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr start'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr start'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr start'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr start'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr start'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr start'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr start'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr start'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr start'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr approve'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr approve'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr approve'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr approve'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr approve'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr approve'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr approve'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr approve'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr approve'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr approve'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr abort'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr abort'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr abort'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr abort'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr abort'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr abort'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr abort'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr abort'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr abort'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr abort'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr complete'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr complete'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr complete'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr complete'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr complete'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr complete'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr complete'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr complete'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr complete'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr complete'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr fetch'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr fetch'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr fetch'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr fetch'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr fetch'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr fetch'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr fetch'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr fetch'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr fetch'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rr fetch'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release'" -s "v" -l "version" -d "Output the version number" # global
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release'" -a "configure" -d "Configure rolling release settings for a project" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release'" -a "start" -d "Start a rolling release" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release'" -a "approve" -d "Approve the current stage of an active rolling release" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release'" -a "abort" -d "Abort an active rolling release" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release'" -a "complete" -d "Complete an active rolling release" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release'" -a "fetch" -d "Fetch details about a rolling release" # sub
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release configure'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release configure'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release configure'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release configure'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release configure'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release configure'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release configure'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release configure'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release configure'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release configure'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release start'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release start'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release start'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release start'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release start'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release start'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release start'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release start'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release start'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release start'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release approve'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release approve'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release approve'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release approve'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release approve'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release approve'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release approve'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release approve'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release approve'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release approve'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release abort'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release abort'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release abort'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release abort'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release abort'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release abort'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release abort'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release abort'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release abort'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release abort'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release complete'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release complete'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release complete'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release complete'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release complete'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release complete'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release complete'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release complete'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release complete'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release complete'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release fetch'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release fetch'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release fetch'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release fetch'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release fetch'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release fetch'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release fetch'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release fetch'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release fetch'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'rolling-release fetch'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'skills'" -l "format" -d "Specify output format (json)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'skills'" -l "json" -d "Output results as JSON" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'skills'" -s "y" -l "yes" -d "Accept default value for all prompts" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'skills'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'skills'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'skills'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'skills'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'skills'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'skills'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'skills'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'skills'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'skills'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'skills'" -s "v" -l "version" -d "Output the version number" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'target'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'target'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'target'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'target'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'target'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'target'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'target'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'target'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'target'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'target'" -s "v" -l "version" -d "Output the version number" # global
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'target'" -a "list" -d "List targets defined for the current Project" # sub
complete -c "vercel" -n "__fish_seen_subcommand_from 'target list'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'target list'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'target list'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'target list'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'target list'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'target list'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'target list'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'target list'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'target list'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'target list'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams'" -s "v" -l "version" -d "Output the version number" # global
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'teams'" -a "add" -d "Create a new team" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'teams'" -a "invite" -d "Invite a new member to a team" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'teams'" -a "list" -d "Show all teams that you're a member of" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'teams'" -a "request" -d "Show join-request status for the current team (defaults to the authenticated user)" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'teams'" -a "switch" -d "Switch to a different team" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'teams'" -a "sso" -d "Show SAML / SSO configuration for the current team" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'teams'" -a "members" -d "List members for the currently scoped team" # sub
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams add'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams add'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams add'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams add'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams add'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams add'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams add'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams add'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams add'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams add'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams invite'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams invite'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams invite'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams invite'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams invite'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams invite'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams invite'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams invite'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams invite'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams invite'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams list'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams list'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams list'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams list'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams list'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams list'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams list'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams list'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams list'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams list'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams request'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams request'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams request'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams request'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams request'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams request'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams request'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams request'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams request'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams request'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams switch'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams switch'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams switch'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams switch'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams switch'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams switch'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams switch'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams switch'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams switch'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams switch'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams sso'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams sso'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams sso'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams sso'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams sso'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams sso'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams sso'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams sso'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams sso'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams sso'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams members'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams members'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams members'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams members'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams members'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams members'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams members'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams members'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams members'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'teams members'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry'" -s "v" -l "version" -d "Output the version number" # global
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'telemetry'" -a "enable" -d "Enables telemetry collection" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'telemetry'" -a "disable" -d "Disables telemetry collection" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'telemetry'" -a "status" -d "Shows whether telemetry collection is enabled or disabled" # sub
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry enable'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry enable'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry enable'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry enable'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry enable'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry enable'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry enable'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry enable'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry enable'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry enable'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry disable'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry disable'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry disable'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry disable'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry disable'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry disable'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry disable'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry disable'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry disable'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry disable'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry status'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry status'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry status'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry status'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry status'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry status'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry status'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry status'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry status'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'telemetry status'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces'" -s "v" -l "version" -d "Output the version number" # global
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'traces'" -a "get" -d "Fetch a captured trace by request id. (default)" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'traces'" -a "create" -d "Capture a session trace for a request (alias for `vercel curl --trace`)." # sub
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces get'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces get'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces get'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces get'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces get'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces get'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces get'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces get'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces get'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces get'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces create'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces create'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces create'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces create'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces create'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces create'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces create'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces create'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces create'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'traces create'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'upgrade'" -l "disable-auto" -d "Disable automatic CLI updates" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'upgrade'" -l "dry-run" -d "Show the upgrade command without executing it" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'upgrade'" -l "enable-auto" -d "Enable automatic CLI updates for future releases" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'upgrade'" -s "F" -l "format" -d "Specify the output format (json) - implies --dry-run" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'upgrade'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'upgrade'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'upgrade'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'upgrade'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'upgrade'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'upgrade'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'upgrade'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'upgrade'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'upgrade'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'upgrade'" -s "v" -l "version" -d "Output the version number" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'usage'" -l "breakdown" -d "Show usage breakdown by time period instead of aggregated totals" -xa "daily weekly monthly" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'usage'" -s "F" -l "format" -d "Specify the output format" -xa "json" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'usage'" -l "from" -d "Start date (YYYY-MM-DD, interpreted as midnight LA time)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'usage'" -l "group-by" -d "Group usage by a dimension instead of aggregated totals" -xa "project region" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'usage'" -l "to" -d "End date (YYYY-MM-DD, interpreted as end of day LA time)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'usage'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'usage'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'usage'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'usage'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'usage'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'usage'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'usage'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'usage'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'usage'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'usage'" -s "v" -l "version" -d "Output the version number" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks'" -s "v" -l "version" -d "Output the version number" # global
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'webhooks'" -a "list" -d "Show all webhooks (default)" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'webhooks'" -a "get" -d "Displays information related to a webhook" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'webhooks'" -a "create" -d "Create a new webhook" # sub
complete -f -c "vercel" -n "__fish_seen_subcommand_from 'webhooks'" -a "remove" -d "Remove a webhook" # sub
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks list'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks list'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks list'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks list'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks list'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks list'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks list'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks list'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks list'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks list'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks get'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks get'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks get'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks get'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks get'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks get'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks get'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks get'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks get'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks get'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks create'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks create'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks create'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks create'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks create'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks create'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks create'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks create'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks create'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks create'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks remove'" -l "cwd" -d "Sets the current working directory for a single run of a command" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks remove'" -s "d" -l "debug" -d "Debug mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks remove'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks remove'" -s "h" -l "help" -d "Output usage information" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks remove'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks remove'" -l "no-color" -d "No color mode (default off)" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks remove'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks remove'" -s "S" -l "scope" -d "Set a custom scope" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks remove'" -s "t" -l "token" -d "Login token" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'webhooks remove'" -s "v" -l "version" -d "Output the version number" # subcommands flags
complete -c "vercel" -n "__fish_seen_subcommand_from 'whoami'" -s "F" -l "format" -d "Specify the output format (json)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'whoami'" -l "cwd" -d "Sets the current working directory for a single run of a command" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'whoami'" -s "d" -l "debug" -d "Debug mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'whoami'" -s "Q" -l "global-config" -d "Path to the global `.vercel` directory" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'whoami'" -s "h" -l "help" -d "Output usage information" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'whoami'" -s "A" -l "local-config" -d "Path to the local `vercel.json` file" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'whoami'" -l "no-color" -d "No color mode (default off)" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'whoami'" -l "non-interactive" -d "Run without interactive prompts; when an agent is detected this is the default" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'whoami'" -s "S" -l "scope" -d "Set a custom scope" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'whoami'" -s "t" -l "token" -d "Login token" # global
complete -c "vercel" -n "__fish_seen_subcommand_from 'whoami'" -s "v" -l "version" -d "Output the version number" # global