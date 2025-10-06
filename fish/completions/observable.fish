complete -f -c "observable" -n "__fish_use_subcommand" -a "create" -d "create a new app from a template" # sub
complete -f -c "observable" -n "__fish_use_subcommand" -a "preview" -d "start the preview server" # sub
complete -f -c "observable" -n "__fish_use_subcommand" -a "build" -d "generate a static site" # sub
complete -f -c "observable" -n "__fish_use_subcommand" -a "login" -d "sign-in to Observable" # sub
complete -f -c "observable" -n "__fish_use_subcommand" -a "logout" -d "sign-out of Observable" # sub
complete -f -c "observable" -n "__fish_use_subcommand" -a "deploy" -d "deploy an app to Observable [deprecated]" # sub
complete -f -c "observable" -n "__fish_use_subcommand" -a "whoami" -d "check authentication status" # sub
complete -f -c "observable" -n "__fish_use_subcommand" -a "convert" -d "convert an Observable notebook to Markdown" # sub
complete -f -c "observable" -n "__fish_use_subcommand" -a "help" -d "print usage information" # sub
complete -f -c "observable" -n "__fish_use_subcommand" -a "version" -d "print the version" # sub
complete -c "observable" -n "__fish_seen_subcommand_from 'preview'" -l "root" -d "Path to the project root" # global
complete -c "observable" -n "__fish_seen_subcommand_from 'preview'" -s "c" -l "config" -d "Path to the app config file" # global
complete -c "observable" -n "__fish_seen_subcommand_from 'preview'" -l "host" -d "the server host; use 0.0.0.0 to accept external connections" # global
complete -c "observable" -n "__fish_seen_subcommand_from 'preview'" -l "port" -d "the server port; defaults to 3000 (or higher if unavailable)" # global
complete -c "observable" -n "__fish_seen_subcommand_from 'preview'" -l "cors" -d "allow cross-origin requests on all origins (*)" # global
complete -c "observable" -n "__fish_seen_subcommand_from 'preview'" -l "allow-origin" -d "allow cross-origin requests on a specific origin" # global
complete -c "observable" -n "__fish_seen_subcommand_from 'preview'" -l "open" -d "open browser" # global
complete -c "observable" -n "__fish_seen_subcommand_from 'build'" -l "root" -d "Path to the project root" # global
complete -c "observable" -n "__fish_seen_subcommand_from 'build'" -s "c" -l "config" -d "Path to the app config file" # global
complete -c "observable" -n "__fish_seen_subcommand_from 'deploy'" -l "root" -d "Path to the project root" # global
complete -c "observable" -n "__fish_seen_subcommand_from 'deploy'" -s "c" -l "config" -d "Path to the app config file" # global
complete -c "observable" -n "__fish_seen_subcommand_from 'deploy'" -s "m" -l "message" -d "Message to associate with this deploy" # global
complete -c "observable" -n "__fish_seen_subcommand_from 'deploy'" -l "build" -d "Always build before deploying" # global
complete -c "observable" -n "__fish_seen_subcommand_from 'deploy'" -l "no-build" -d "Don’t build before deploying; deploy as is" # global
complete -c "observable" -n "__fish_seen_subcommand_from 'deploy'" -l "deploy-config" -d "Path to the deploy config file (deploy.json)" # global
complete -c "observable" -n "__fish_seen_subcommand_from 'convert'" -s "o" -l "output" -d "Output directory (defaults to the source root)" # global
complete -c "observable" -n "__fish_seen_subcommand_from 'convert'" -s "f" -l "force" -d "If true, overwrite existing resources" # global
complete -c "observable" -n "__fish_seen_subcommand_from 'convert'" -l "root" -d "Path to the project root" # global
complete -c "observable" -n "__fish_seen_subcommand_from 'convert'" -s "c" -l "config" -d "Path to the app config file" # global