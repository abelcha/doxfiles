complete -c "skills" -s "g" -l "global" -d "Install skill globally (user-level) instead of project-level for add command; Remove from global scope for remove command; List global skills for list command" # global
complete -c "skills" -s "a" -l "agent" -d "Specify agents to install to (use '*' for all agents) for add command; Remove from specific agents (use '*' for all agents) for remove command; Filter by specific agents for list command" # global
complete -c "skills" -s "s" -l "skill" -d "Specify skill names to install (use '*' for all skills) for add command; Specify skills to remove (use '*' for all skills) for remove command" # global
complete -c "skills" -s "l" -l "list" -d "List available skills in the repository without installing" # global
complete -c "skills" -s "y" -l "yes" -d "Skip confirmation prompts" # global
complete -c "skills" -l "all" -d "Shorthand for --skill '*' --agent '*' -y" # global
complete -c "skills" -l "full-depth" -d "Search all subdirectories even when a root SKILL.md exists" # global
complete -c "skills" -l "help" -d "Show this help message" # global
complete -c "skills" -s "h" -l "help" -d "Show this help message" # global
complete -c "skills" -l "version" -d "Show version number" # global
complete -c "skills" -s "v" -l "version" -d "Show version number" # global
complete -f -c "skills" -n "__fish_use_subcommand" -a "add" -d "Add a skill package" # sub
complete -f -c "skills" -n "__fish_use_subcommand" -a "remove" -d "Remove installed skills" # sub
complete -f -c "skills" -n "__fish_use_subcommand" -a "list" -d "List installed skills" # sub
complete -f -c "skills" -n "__fish_use_subcommand" -a "ls" -d "List installed skills" # sub
complete -f -c "skills" -n "__fish_use_subcommand" -a "find" -d "Search for skills interactively" # sub
complete -f -c "skills" -n "__fish_use_subcommand" -a "init" -d "Initialize a skill (creates <name>/SKILL.md or ./SKILL.md)" # sub
complete -f -c "skills" -n "__fish_use_subcommand" -a "check" -d "Check for available skill updates" # sub
complete -f -c "skills" -n "__fish_use_subcommand" -a "update" -d "Update all skills to latest versions" # sub
complete -c "skills" -n "__fish_seen_subcommand_from 'add'" -s "g" -l "global" -d "Install skill globally (user-level) instead of project-level for add command; Remove from global scope for remove command; List global skills for list command" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'add'" -s "a" -l "agent" -d "Specify agents to install to (use '*' for all agents) for add command; Remove from specific agents (use '*' for all agents) for remove command; Filter by specific agents for list command" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'add'" -s "s" -l "skill" -d "Specify skill names to install (use '*' for all skills) for add command; Specify skills to remove (use '*' for all skills) for remove command" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'add'" -s "l" -l "list" -d "List available skills in the repository without installing" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'add'" -s "y" -l "yes" -d "Skip confirmation prompts" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'add'" -l "all" -d "Shorthand for --skill '*' --agent '*' -y" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'add'" -l "full-depth" -d "Search all subdirectories even when a root SKILL.md exists" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'remove'" -s "g" -l "global" -d "Install skill globally (user-level) instead of project-level for add command; Remove from global scope for remove command; List global skills for list command" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'remove'" -s "a" -l "agent" -d "Specify agents to install to (use '*' for all agents) for add command; Remove from specific agents (use '*' for all agents) for remove command; Filter by specific agents for list command" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'remove'" -s "s" -l "skill" -d "Specify skill names to install (use '*' for all skills) for add command; Specify skills to remove (use '*' for all skills) for remove command" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'remove'" -s "l" -l "list" -d "List available skills in the repository without installing" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'remove'" -s "y" -l "yes" -d "Skip confirmation prompts" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'remove'" -l "all" -d "Shorthand for --skill '*' --agent '*' -y" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'remove'" -l "full-depth" -d "Search all subdirectories even when a root SKILL.md exists" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'list'" -s "g" -l "global" -d "Install skill globally (user-level) instead of project-level for add command; Remove from global scope for remove command; List global skills for list command" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'list'" -s "a" -l "agent" -d "Specify agents to install to (use '*' for all agents) for add command; Remove from specific agents (use '*' for all agents) for remove command; Filter by specific agents for list command" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'list'" -s "s" -l "skill" -d "Specify skill names to install (use '*' for all skills) for add command; Specify skills to remove (use '*' for all skills) for remove command" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'list'" -s "l" -l "list" -d "List available skills in the repository without installing" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'list'" -s "y" -l "yes" -d "Skip confirmation prompts" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'list'" -l "all" -d "Shorthand for --skill '*' --agent '*' -y" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'list'" -l "full-depth" -d "Search all subdirectories even when a root SKILL.md exists" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'ls'" -s "g" -l "global" -d "Install skill globally (user-level) instead of project-level for add command; Remove from global scope for remove command; List global skills for list command" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'ls'" -s "a" -l "agent" -d "Specify agents to install to (use '*' for all agents) for add command; Remove from specific agents (use '*' for all agents) for remove command; Filter by specific agents for list command" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'ls'" -s "s" -l "skill" -d "Specify skill names to install (use '*' for all skills) for add command; Specify skills to remove (use '*' for all skills) for remove command" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'ls'" -s "l" -l "list" -d "List available skills in the repository without installing" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'ls'" -s "y" -l "yes" -d "Skip confirmation prompts" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'ls'" -l "all" -d "Shorthand for --skill '*' --agent '*' -y" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'ls'" -l "full-depth" -d "Search all subdirectories even when a root SKILL.md exists" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'find'" -s "g" -l "global" -d "Install skill globally (user-level) instead of project-level for add command; Remove from global scope for remove command; List global skills for list command" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'find'" -s "a" -l "agent" -d "Specify agents to install to (use '*' for all agents) for add command; Remove from specific agents (use '*' for all agents) for remove command; Filter by specific agents for list command" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'find'" -s "s" -l "skill" -d "Specify skill names to install (use '*' for all skills) for add command; Specify skills to remove (use '*' for all skills) for remove command" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'find'" -s "l" -l "list" -d "List available skills in the repository without installing" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'find'" -s "y" -l "yes" -d "Skip confirmation prompts" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'find'" -l "all" -d "Shorthand for --skill '*' --agent '*' -y" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'find'" -l "full-depth" -d "Search all subdirectories even when a root SKILL.md exists" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'init'" -s "g" -l "global" -d "Install skill globally (user-level) instead of project-level for add command; Remove from global scope for remove command; List global skills for list command" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'init'" -s "a" -l "agent" -d "Specify agents to install to (use '*' for all agents) for add command; Remove from specific agents (use '*' for all agents) for remove command; Filter by specific agents for list command" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'init'" -s "s" -l "skill" -d "Specify skill names to install (use '*' for all skills) for add command; Specify skills to remove (use '*' for all skills) for remove command" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'init'" -s "l" -l "list" -d "List available skills in the repository without installing" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'init'" -s "y" -l "yes" -d "Skip confirmation prompts" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'init'" -l "all" -d "Shorthand for --skill '*' --agent '*' -y" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'init'" -l "full-depth" -d "Search all subdirectories even when a root SKILL.md exists" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'check'" -s "g" -l "global" -d "Install skill globally (user-level) instead of project-level for add command; Remove from global scope for remove command; List global skills for list command" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'check'" -s "a" -l "agent" -d "Specify agents to install to (use '*' for all agents) for add command; Remove from specific agents (use '*' for all agents) for remove command; Filter by specific agents for list command" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'check'" -s "s" -l "skill" -d "Specify skill names to install (use '*' for all skills) for add command; Specify skills to remove (use '*' for all skills) for remove command" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'check'" -s "l" -l "list" -d "List available skills in the repository without installing" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'check'" -s "y" -l "yes" -d "Skip confirmation prompts" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'check'" -l "all" -d "Shorthand for --skill '*' --agent '*' -y" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'check'" -l "full-depth" -d "Search all subdirectories even when a root SKILL.md exists" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'update'" -s "g" -l "global" -d "Install skill globally (user-level) instead of project-level for add command; Remove from global scope for remove command; List global skills for list command" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'update'" -s "a" -l "agent" -d "Specify agents to install to (use '*' for all agents) for add command; Remove from specific agents (use '*' for all agents) for remove command; Filter by specific agents for list command" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'update'" -s "s" -l "skill" -d "Specify skill names to install (use '*' for all skills) for add command; Specify skills to remove (use '*' for all skills) for remove command" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'update'" -s "l" -l "list" -d "List available skills in the repository without installing" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'update'" -s "y" -l "yes" -d "Skip confirmation prompts" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'update'" -l "all" -d "Shorthand for --skill '*' --agent '*' -y" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'update'" -l "full-depth" -d "Search all subdirectories even when a root SKILL.md exists" # subcommands flags
complete -c "skills" -n "__fish_seen_subcommand_from 'remove'" -s "g" -l "global" -d "Remove from global scope (~/) instead of project scope" # global
complete -c "skills" -n "__fish_seen_subcommand_from 'remove'" -s "a" -l "agent" -d "Remove from specific agents (use '*' for all agents)" # global
complete -c "skills" -n "__fish_seen_subcommand_from 'remove'" -s "s" -l "skill" -d "Specify skills to remove (use '*' for all skills)" # global
complete -c "skills" -n "__fish_seen_subcommand_from 'remove'" -s "y" -l "yes" -d "Skip confirmation prompts" # global
complete -c "skills" -n "__fish_seen_subcommand_from 'remove'" -l "all" -d "Shorthand for --skill '*' --agent '*' -y" # global
complete -c "skills" -n "__fish_seen_subcommand_from 'list'" -s "g" -d "list global skills" # global
complete -c "skills" -n "__fish_seen_subcommand_from 'ls'" -s "g" -d "List global skills" # global