complete -c "prisma-cli" -l "json" -d "Emit structured JSON output." # global
complete -c "prisma-cli" -s "q" -l "quiet" -d "Reduce human-oriented output." # global
complete -c "prisma-cli" -s "v" -l "verbose" -d "Increase human-oriented output detail." # global
complete -c "prisma-cli" -l "trace" -d "Show deeper diagnostics for failures." # global
complete -c "prisma-cli" -l "no-interactive" -d "Disable interactive behavior and prompts." # global
complete -c "prisma-cli" -s "y" -l "yes" -d "Accept supported confirmation prompts." # global
complete -c "prisma-cli" -l "version" -d "Print the CLI version and exit." # global
complete -f -c "prisma-cli" -n "__fish_use_subcommand" -a "version" -d "Show CLI build and environment" # sub
complete -f -c "prisma-cli" -n "__fish_use_subcommand" -a "auth" -d "Manage local authentication for the CLI" # sub
complete -f -c "prisma-cli" -n "__fish_use_subcommand" -a "project" -d "Manage and inspect your Prisma projects" # sub
complete -f -c "prisma-cli" -n "__fish_use_subcommand" -a "git" -d "Manage Git repository connections for a project" # sub
complete -f -c "prisma-cli" -n "__fish_use_subcommand" -a "branch" -d "View your Platform branches" # sub
complete -f -c "prisma-cli" -n "__fish_use_subcommand" -a "database" -d "Manage Prisma Postgres databases for a project" # sub
complete -f -c "prisma-cli" -n "__fish_use_subcommand" -a "app" -d "Manage apps and deployments for a project" # sub
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'version'" -l "json" -d "Emit structured JSON output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'version'" -s "q" -l "quiet" -d "Reduce human-oriented output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'version'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'version'" -l "trace" -d "Show deeper diagnostics for failures." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'version'" -l "no-interactive" -d "Disable interactive behavior and prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'version'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'auth'" -l "json" -d "Emit structured JSON output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'auth'" -s "q" -l "quiet" -d "Reduce human-oriented output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'auth'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'auth'" -l "trace" -d "Show deeper diagnostics for failures." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'auth'" -l "no-interactive" -d "Disable interactive behavior and prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'auth'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project'" -l "json" -d "Emit structured JSON output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project'" -s "q" -l "quiet" -d "Reduce human-oriented output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project'" -l "trace" -d "Show deeper diagnostics for failures." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project'" -l "no-interactive" -d "Disable interactive behavior and prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'git'" -l "json" -d "Emit structured JSON output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'git'" -s "q" -l "quiet" -d "Reduce human-oriented output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'git'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'git'" -l "trace" -d "Show deeper diagnostics for failures." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'git'" -l "no-interactive" -d "Disable interactive behavior and prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'git'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'branch'" -l "json" -d "Emit structured JSON output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'branch'" -s "q" -l "quiet" -d "Reduce human-oriented output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'branch'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'branch'" -l "trace" -d "Show deeper diagnostics for failures." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'branch'" -l "no-interactive" -d "Disable interactive behavior and prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'branch'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database'" -l "json" -d "Emit structured JSON output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database'" -s "q" -l "quiet" -d "Reduce human-oriented output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database'" -l "trace" -d "Show deeper diagnostics for failures." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database'" -l "no-interactive" -d "Disable interactive behavior and prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app'" -l "json" -d "Emit structured JSON output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app'" -s "q" -l "quiet" -d "Reduce human-oriented output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app'" -l "trace" -d "Show deeper diagnostics for failures." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app'" -l "no-interactive" -d "Disable interactive behavior and prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'version'" -l "json" -d "Emit structured JSON output." # global
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'version'" -s "q" -l "quiet" -d "Reduce human-oriented output." # global
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'version'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # global
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'version'" -l "trace" -d "Show deeper diagnostics for failures." # global
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'version'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # global
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'version'" -l "interactive" -d "Force interactive behavior when prompts are supported." # global
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'version'" -l "no-interactive" -d "Disable interactive behavior and prompts." # global
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'version'" -l "color" -d "Force color output in supported terminals." # global
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'version'" -l "no-color" -d "Disable color output." # global
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'auth'" -l "json" -d "Emit structured JSON output." # global
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'auth'" -s "q" -l "quiet" -d "Reduce human-oriented output." # global
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'auth'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # global
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'auth'" -l "trace" -d "Show deeper diagnostics for failures." # global
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'auth'" -l "no-interactive" -d "Disable interactive behavior and prompts." # global
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'auth'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # global
complete -f -c "prisma-cli" -n "__fish_seen_subcommand_from 'auth'" -a "login" -d "Log in to your Prisma platform account" # sub
complete -f -c "prisma-cli" -n "__fish_seen_subcommand_from 'auth'" -a "logout" -d "Clear stored authentication credentials" # sub
complete -f -c "prisma-cli" -n "__fish_seen_subcommand_from 'auth'" -a "whoami" -d "Show the authenticated user and accessible workspace" # sub
complete -f -c "prisma-cli" -n "__fish_seen_subcommand_from 'auth'" -a "workspace" -d "Manage local authenticated workspaces" # sub
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'auth login'" -l "json" -d "Emit structured JSON output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'auth login'" -s "q" -l "quiet" -d "Reduce human-oriented output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'auth login'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'auth login'" -l "trace" -d "Show deeper diagnostics for failures." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'auth login'" -l "no-interactive" -d "Disable interactive behavior and prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'auth login'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'auth logout'" -l "json" -d "Emit structured JSON output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'auth logout'" -s "q" -l "quiet" -d "Reduce human-oriented output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'auth logout'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'auth logout'" -l "trace" -d "Show deeper diagnostics for failures." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'auth logout'" -l "no-interactive" -d "Disable interactive behavior and prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'auth logout'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'auth whoami'" -l "json" -d "Emit structured JSON output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'auth whoami'" -s "q" -l "quiet" -d "Reduce human-oriented output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'auth whoami'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'auth whoami'" -l "trace" -d "Show deeper diagnostics for failures." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'auth whoami'" -l "no-interactive" -d "Disable interactive behavior and prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'auth whoami'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'auth workspace'" -l "json" -d "Emit structured JSON output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'auth workspace'" -s "q" -l "quiet" -d "Reduce human-oriented output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'auth workspace'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'auth workspace'" -l "trace" -d "Show deeper diagnostics for failures." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'auth workspace'" -l "no-interactive" -d "Disable interactive behavior and prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'auth workspace'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project'" -l "json" -d "Emit structured JSON output." # global
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project'" -s "q" -l "quiet" -d "Reduce human-oriented output." # global
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # global
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project'" -l "trace" -d "Show deeper diagnostics for failures." # global
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project'" -l "no-interactive" -d "Disable interactive behavior and prompts." # global
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # global
complete -f -c "prisma-cli" -n "__fish_seen_subcommand_from 'project'" -a "list" -d "List all projects in your workspace" # sub
complete -f -c "prisma-cli" -n "__fish_seen_subcommand_from 'project'" -a "show" -d "Show this directory's Project binding" # sub
complete -f -c "prisma-cli" -n "__fish_seen_subcommand_from 'project'" -a "create" -d "Create a Project and link this directory" # sub
complete -f -c "prisma-cli" -n "__fish_seen_subcommand_from 'project'" -a "link" -d "Link this directory to a Project" # sub
complete -f -c "prisma-cli" -n "__fish_seen_subcommand_from 'project'" -a "env" -d "Manage environment variables for the active project" # sub
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project list'" -l "json" -d "Emit structured JSON output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project list'" -s "q" -l "quiet" -d "Reduce human-oriented output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project list'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project list'" -l "trace" -d "Show deeper diagnostics for failures." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project list'" -l "no-interactive" -d "Disable interactive behavior and prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project list'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project show'" -l "json" -d "Emit structured JSON output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project show'" -s "q" -l "quiet" -d "Reduce human-oriented output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project show'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project show'" -l "trace" -d "Show deeper diagnostics for failures." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project show'" -l "no-interactive" -d "Disable interactive behavior and prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project show'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project create'" -l "json" -d "Emit structured JSON output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project create'" -s "q" -l "quiet" -d "Reduce human-oriented output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project create'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project create'" -l "trace" -d "Show deeper diagnostics for failures." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project create'" -l "no-interactive" -d "Disable interactive behavior and prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project create'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project link'" -l "json" -d "Emit structured JSON output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project link'" -s "q" -l "quiet" -d "Reduce human-oriented output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project link'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project link'" -l "trace" -d "Show deeper diagnostics for failures." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project link'" -l "no-interactive" -d "Disable interactive behavior and prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project link'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project env'" -l "json" -d "Emit structured JSON output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project env'" -s "q" -l "quiet" -d "Reduce human-oriented output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project env'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project env'" -l "trace" -d "Show deeper diagnostics for failures." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project env'" -l "no-interactive" -d "Disable interactive behavior and prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'project env'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'git'" -l "json" -d "Emit structured JSON output." # global
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'git'" -s "q" -l "quiet" -d "Reduce human-oriented output." # global
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'git'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # global
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'git'" -l "trace" -d "Show deeper diagnostics for failures." # global
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'git'" -l "no-interactive" -d "Disable interactive behavior and prompts." # global
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'git'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # global
complete -f -c "prisma-cli" -n "__fish_seen_subcommand_from 'git'" -a "connectgit-url" -d "Connect the resolved project to a GitHub repository" # sub
complete -f -c "prisma-cli" -n "__fish_seen_subcommand_from 'git'" -a "disconnect" -d "Disconnect the GitHub repository from the resolved project" # sub
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'git connectgit-url'" -l "json" -d "Emit structured JSON output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'git connectgit-url'" -s "q" -l "quiet" -d "Reduce human-oriented output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'git connectgit-url'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'git connectgit-url'" -l "trace" -d "Show deeper diagnostics for failures." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'git connectgit-url'" -l "no-interactive" -d "Disable interactive behavior and prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'git connectgit-url'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'git disconnect'" -l "json" -d "Emit structured JSON output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'git disconnect'" -s "q" -l "quiet" -d "Reduce human-oriented output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'git disconnect'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'git disconnect'" -l "trace" -d "Show deeper diagnostics for failures." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'git disconnect'" -l "no-interactive" -d "Disable interactive behavior and prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'git disconnect'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'branch'" -l "json" -d "Emit structured JSON output." # global
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'branch'" -s "q" -l "quiet" -d "Reduce human-oriented output." # global
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'branch'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # global
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'branch'" -l "trace" -d "Show deeper diagnostics for failures." # global
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'branch'" -l "no-interactive" -d "Disable interactive behavior and prompts." # global
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'branch'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # global
complete -f -c "prisma-cli" -n "__fish_seen_subcommand_from 'branch'" -a "list" -d "List Platform branches for the resolved project" # sub
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'branch list'" -l "json" -d "Emit structured JSON output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'branch list'" -s "q" -l "quiet" -d "Reduce human-oriented output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'branch list'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'branch list'" -l "trace" -d "Show deeper diagnostics for failures." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'branch list'" -l "no-interactive" -d "Disable interactive behavior and prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'branch list'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database'" -l "json" -d "Emit structured JSON output." # global
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database'" -s "q" -l "quiet" -d "Reduce human-oriented output." # global
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # global
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database'" -l "trace" -d "Show deeper diagnostics for failures." # global
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database'" -l "no-interactive" -d "Disable interactive behavior and prompts." # global
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # global
complete -f -c "prisma-cli" -n "__fish_seen_subcommand_from 'database'" -a "list" -d "List Prisma Postgres databases for the resolved project" # sub
complete -f -c "prisma-cli" -n "__fish_seen_subcommand_from 'database'" -a "show" -d "Show database metadata without secret values" # sub
complete -f -c "prisma-cli" -n "__fish_seen_subcommand_from 'database'" -a "create" -d "Create a Prisma Postgres database and print its one-time connection URL" # sub
complete -f -c "prisma-cli" -n "__fish_seen_subcommand_from 'database'" -a "remove" -d "Remove a database after exact id confirmation" # sub
complete -f -c "prisma-cli" -n "__fish_seen_subcommand_from 'database'" -a "connection" -d "Manage one-time-view database connection strings" # sub
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database list'" -l "json" -d "Emit structured JSON output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database list'" -s "q" -l "quiet" -d "Reduce human-oriented output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database list'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database list'" -l "trace" -d "Show deeper diagnostics for failures." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database list'" -l "no-interactive" -d "Disable interactive behavior and prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database list'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database show'" -l "json" -d "Emit structured JSON output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database show'" -s "q" -l "quiet" -d "Reduce human-oriented output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database show'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database show'" -l "trace" -d "Show deeper diagnostics for failures." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database show'" -l "no-interactive" -d "Disable interactive behavior and prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database show'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database create'" -l "json" -d "Emit structured JSON output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database create'" -s "q" -l "quiet" -d "Reduce human-oriented output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database create'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database create'" -l "trace" -d "Show deeper diagnostics for failures." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database create'" -l "no-interactive" -d "Disable interactive behavior and prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database create'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database remove'" -l "json" -d "Emit structured JSON output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database remove'" -s "q" -l "quiet" -d "Reduce human-oriented output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database remove'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database remove'" -l "trace" -d "Show deeper diagnostics for failures." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database remove'" -l "no-interactive" -d "Disable interactive behavior and prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database remove'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database connection'" -l "json" -d "Emit structured JSON output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database connection'" -s "q" -l "quiet" -d "Reduce human-oriented output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database connection'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database connection'" -l "trace" -d "Show deeper diagnostics for failures." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database connection'" -l "no-interactive" -d "Disable interactive behavior and prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'database connection'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app'" -l "json" -d "Emit structured JSON output." # global
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app'" -s "q" -l "quiet" -d "Reduce human-oriented output." # global
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # global
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app'" -l "trace" -d "Show deeper diagnostics for failures." # global
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app'" -l "no-interactive" -d "Disable interactive behavior and prompts." # global
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # global
complete -f -c "prisma-cli" -n "__fish_seen_subcommand_from 'app'" -a "buildapp" -d "Build the app locally into a deployable artifact" # sub
complete -f -c "prisma-cli" -n "__fish_seen_subcommand_from 'app'" -a "runapp" -d "Run your app locally" # sub
complete -f -c "prisma-cli" -n "__fish_seen_subcommand_from 'app'" -a "deployapp" -d "Creates a new deployment for the app" # sub
complete -f -c "prisma-cli" -n "__fish_seen_subcommand_from 'app'" -a "showapp" -d "Show the app and its current deployment" # sub
complete -f -c "prisma-cli" -n "__fish_seen_subcommand_from 'app'" -a "openapp" -d "Open the app's live URL" # sub
complete -f -c "prisma-cli" -n "__fish_seen_subcommand_from 'app'" -a "domain" -d "Manage custom domains for an app" # sub
complete -f -c "prisma-cli" -n "__fish_seen_subcommand_from 'app'" -a "logsapp" -d "Stream logs for the app's current deployment" # sub
complete -f -c "prisma-cli" -n "__fish_seen_subcommand_from 'app'" -a "list-deploysapp" -d "List deployments for the app" # sub
complete -f -c "prisma-cli" -n "__fish_seen_subcommand_from 'app'" -a "show-deploydeployment" -d "Show a deployment in detail" # sub
complete -f -c "prisma-cli" -n "__fish_seen_subcommand_from 'app'" -a "promotedeploymentapp" -d "Promote a deployment to production by rebuilding with production env vars" # sub
complete -f -c "prisma-cli" -n "__fish_seen_subcommand_from 'app'" -a "rollbackapp" -d "Roll back production to a previous deployment" # sub
complete -f -c "prisma-cli" -n "__fish_seen_subcommand_from 'app'" -a "removeapp" -d "Remove the app from the current branch" # sub
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app buildapp'" -l "json" -d "Emit structured JSON output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app buildapp'" -s "q" -l "quiet" -d "Reduce human-oriented output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app buildapp'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app buildapp'" -l "trace" -d "Show deeper diagnostics for failures." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app buildapp'" -l "no-interactive" -d "Disable interactive behavior and prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app buildapp'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app runapp'" -l "json" -d "Emit structured JSON output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app runapp'" -s "q" -l "quiet" -d "Reduce human-oriented output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app runapp'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app runapp'" -l "trace" -d "Show deeper diagnostics for failures." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app runapp'" -l "no-interactive" -d "Disable interactive behavior and prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app runapp'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app deployapp'" -l "json" -d "Emit structured JSON output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app deployapp'" -s "q" -l "quiet" -d "Reduce human-oriented output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app deployapp'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app deployapp'" -l "trace" -d "Show deeper diagnostics for failures." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app deployapp'" -l "no-interactive" -d "Disable interactive behavior and prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app deployapp'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app showapp'" -l "json" -d "Emit structured JSON output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app showapp'" -s "q" -l "quiet" -d "Reduce human-oriented output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app showapp'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app showapp'" -l "trace" -d "Show deeper diagnostics for failures." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app showapp'" -l "no-interactive" -d "Disable interactive behavior and prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app showapp'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app openapp'" -l "json" -d "Emit structured JSON output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app openapp'" -s "q" -l "quiet" -d "Reduce human-oriented output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app openapp'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app openapp'" -l "trace" -d "Show deeper diagnostics for failures." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app openapp'" -l "no-interactive" -d "Disable interactive behavior and prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app openapp'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app domain'" -l "json" -d "Emit structured JSON output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app domain'" -s "q" -l "quiet" -d "Reduce human-oriented output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app domain'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app domain'" -l "trace" -d "Show deeper diagnostics for failures." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app domain'" -l "no-interactive" -d "Disable interactive behavior and prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app domain'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app logsapp'" -l "json" -d "Emit structured JSON output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app logsapp'" -s "q" -l "quiet" -d "Reduce human-oriented output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app logsapp'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app logsapp'" -l "trace" -d "Show deeper diagnostics for failures." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app logsapp'" -l "no-interactive" -d "Disable interactive behavior and prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app logsapp'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app list-deploysapp'" -l "json" -d "Emit structured JSON output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app list-deploysapp'" -s "q" -l "quiet" -d "Reduce human-oriented output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app list-deploysapp'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app list-deploysapp'" -l "trace" -d "Show deeper diagnostics for failures." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app list-deploysapp'" -l "no-interactive" -d "Disable interactive behavior and prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app list-deploysapp'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app show-deploydeployment'" -l "json" -d "Emit structured JSON output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app show-deploydeployment'" -s "q" -l "quiet" -d "Reduce human-oriented output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app show-deploydeployment'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app show-deploydeployment'" -l "trace" -d "Show deeper diagnostics for failures." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app show-deploydeployment'" -l "no-interactive" -d "Disable interactive behavior and prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app show-deploydeployment'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app promotedeploymentapp'" -l "json" -d "Emit structured JSON output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app promotedeploymentapp'" -s "q" -l "quiet" -d "Reduce human-oriented output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app promotedeploymentapp'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app promotedeploymentapp'" -l "trace" -d "Show deeper diagnostics for failures." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app promotedeploymentapp'" -l "no-interactive" -d "Disable interactive behavior and prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app promotedeploymentapp'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app rollbackapp'" -l "json" -d "Emit structured JSON output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app rollbackapp'" -s "q" -l "quiet" -d "Reduce human-oriented output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app rollbackapp'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app rollbackapp'" -l "trace" -d "Show deeper diagnostics for failures." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app rollbackapp'" -l "no-interactive" -d "Disable interactive behavior and prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app rollbackapp'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app removeapp'" -l "json" -d "Emit structured JSON output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app removeapp'" -s "q" -l "quiet" -d "Reduce human-oriented output." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app removeapp'" -s "v" -l "verbose" -d "Increase human-oriented output detail." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app removeapp'" -l "trace" -d "Show deeper diagnostics for failures." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app removeapp'" -l "no-interactive" -d "Disable interactive behavior and prompts." # subcommands flags
complete -c "prisma-cli" -n "__fish_seen_subcommand_from 'app removeapp'" -s "y" -l "yes" -d "Accept supported confirmation prompts." # subcommands flags