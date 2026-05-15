complete -c "vinext" -s "h" -l "help" -d "Show this help" # global
complete -c "vinext" -l "version" -d "Show version" # global
complete -f -c "vinext" -n "__fish_use_subcommand" -a "dev" -d "Start development server" # sub
complete -f -c "vinext" -n "__fish_use_subcommand" -a "build" -d "Build for production" # sub
complete -f -c "vinext" -n "__fish_use_subcommand" -a "start" -d "Start production server" # sub
complete -f -c "vinext" -n "__fish_use_subcommand" -a "deploy" -d "Deploy to Cloudflare Workers" # sub
complete -f -c "vinext" -n "__fish_use_subcommand" -a "init" -d "Migrate a Next.js project to vinext" # sub
complete -f -c "vinext" -n "__fish_use_subcommand" -a "check" -d "Scan Next.js app for compatibility" # sub
complete -f -c "vinext" -n "__fish_use_subcommand" -a "lint" -d "Run linter" # sub
complete -c "vinext" -n "__fish_seen_subcommand_from 'dev'" -s "p" -l "port" -d "Port to listen on" # global
complete -c "vinext" -n "__fish_seen_subcommand_from 'dev'" -s "H" -l "hostname" -d "Hostname to bind to" # global
complete -c "vinext" -n "__fish_seen_subcommand_from 'dev'" -l "turbopack" -d "Accepted for compatibility (no-op, Vite is always used)" # global
complete -c "vinext" -n "__fish_seen_subcommand_from 'dev'" -s "h" -l "help" -d "Show this help" # global
complete -c "vinext" -n "__fish_seen_subcommand_from 'build'" -l "verbose" -d "Show full Vite/Rollup build output (suppressed by default)" # global
complete -c "vinext" -n "__fish_seen_subcommand_from 'build'" -l "prerender-all" -d "Pre-render discovered routes after building (future releases will serve these files in vinext start)" # global
complete -c "vinext" -n "__fish_seen_subcommand_from 'build'" -l "precompress" -d "Precompress static assets at build time (.br, .gz, .zst)" # global
complete -c "vinext" -n "__fish_seen_subcommand_from 'build'" -s "h" -l "help" -d "Show this help" # global
complete -c "vinext" -n "__fish_seen_subcommand_from 'start'" -s "p" -l "port" -d "Port to listen on (default: 3000, or PORT env)" # global
complete -c "vinext" -n "__fish_seen_subcommand_from 'start'" -s "H" -l "hostname" -d "Hostname to bind to (default: 0.0.0.0)" # global
complete -c "vinext" -n "__fish_seen_subcommand_from 'start'" -s "h" -l "help" -d "Show this help" # global
complete -c "vinext" -n "__fish_seen_subcommand_from 'deploy'" -l "preview" -d "Deploy to preview environment (same as --env preview)" # global
complete -c "vinext" -n "__fish_seen_subcommand_from 'deploy'" -l "env" -d "Deploy using wrangler env.<name>" # global
complete -c "vinext" -n "__fish_seen_subcommand_from 'deploy'" -l "name" -d "Custom Worker name (default: from package.json)" # global
complete -c "vinext" -n "__fish_seen_subcommand_from 'deploy'" -l "skip-build" -d "Skip the build step (use existing dist/)" # global
complete -c "vinext" -n "__fish_seen_subcommand_from 'deploy'" -l "dry-run" -d "Generate config files without building or deploying" # global
complete -c "vinext" -n "__fish_seen_subcommand_from 'deploy'" -l "prerender-all" -d "Pre-render discovered routes after building (future releases will auto-populate the remote cache)" # global
complete -c "vinext" -n "__fish_seen_subcommand_from 'deploy'" -s "h" -l "help" -d "Show this help" # global
complete -c "vinext" -n "__fish_seen_subcommand_from 'deploy'" -l "experimental-tpr" -d "Enable Traffic-aware Pre-Rendering" # global
complete -c "vinext" -n "__fish_seen_subcommand_from 'deploy'" -l "tpr-coverage" -d "Traffic coverage target, 0–100 (default: 90)" # global
complete -c "vinext" -n "__fish_seen_subcommand_from 'deploy'" -l "tpr-limit" -d "Hard cap on pages to pre-render (default: 1000)" # global
complete -c "vinext" -n "__fish_seen_subcommand_from 'deploy'" -l "tpr-window" -d "Analytics lookback window in hours (default: 24)" # global
complete -c "vinext" -n "__fish_seen_subcommand_from 'init'" -s "p" -l "port" -d "Dev server port for the vinext script" # global
complete -c "vinext" -n "__fish_seen_subcommand_from 'init'" -l "skip-check" -d "Skip the compatibility check step" # global
complete -c "vinext" -n "__fish_seen_subcommand_from 'init'" -l "force" -d "Overwrite existing vite.config.ts" # global
complete -c "vinext" -n "__fish_seen_subcommand_from 'init'" -s "h" -l "help" -d "Show this help" # global
complete -c "vinext" -n "__fish_seen_subcommand_from 'check'" -s "h" -l "help" -d "Show this help" # global
complete -c "vinext" -n "__fish_seen_subcommand_from 'lint'" -s "h" -l "help" -d "Show this help" # global