# complete -c simulate-cli.ts --wraps simulate-cli
complete -c "simulate-cli.ts" -l dept -d "Departure department filter" -xa "{}" # global
complete -c "simulate-cli.ts" -l max-zones -d "Maximum zones" -xa "{}" # global
complete -c "simulate-cli.ts" -l max-carriers -d "Maximum distinct carriers" -xa "{}" # global
complete -c "simulate-cli.ts" -l cutoff -d "Cutoff weight in kg" -xa "{}" # global
complete -c "simulate-cli.ts" -l coverage -d "Coverage threshold %" -xa "{}" # global
complete -c "simulate-cli.ts" -l per-dept-coverage -d "Require coverage per dept" -xa "{}" # global
complete -c "simulate-cli.ts" -l no-contiguity -d "Disable contiguity post-processing" -xa "{}" # global
complete -c "simulate-cli.ts" -l auto-cutoff -d "Try all cutoff values, pick best" -xa "{}" # global
complete -c "simulate-cli.ts" -l max-cand -d "Max candidates per unit per dept" -xa "{}" # global
complete -c "simulate-cli.ts" -l time-limit -d "Solver time limit in seconds" -xa "{}" # global
complete -c "simulate-cli.ts" -l reconduction -d "Min % of covered spend keeping same carrier" -xa "{}" # global
complete -c "simulate-cli.ts" -l allowed -d "Only allow these carriers" -xa "{}" # global
complete -c "simulate-cli.ts" -l denied -d "Deny these carriers" -xa "{}" # global
