complete -c "enrich" -s "h" -l "help" -d "show this help message and exit" # global
complete -c "enrich" -l "with" -d "Source input column(s), comma-separated" # global
complete -c "enrich" -l "hint" -d "Optional minimal hint" # global
complete -c "enrich" -l "schema-json" -d "Inline JSON schema/example to enforce in the prompt" # global
complete -c "enrich" -l "default-output" -d "Default output value on parse failure, e.g. fraud_probability=0.0 or passengers=[]" # global
complete -c "enrich" -l "mode" -d "Prompt/output format" -xa "jsonl_full jsonl_output csv_full kv_null kv_blank kv_placeholder" # global
complete -c "enrich" -l "provider" -xa "local openrouter" # global
complete -c "enrich" -l "model" -d "Model id" # global
complete -c "enrich" -l "api-url" -d "Override OpenAI-compatible endpoint" # global
complete -c "enrich" -l "api-key" -d "Override API key" # global
complete -c "enrich" -l "temperature" # global
complete -c "enrich" -l "top-p" # global
complete -c "enrich" -l "max-tokens" # global
complete -c "enrich" -l "max-token-cap" # global
complete -c "enrich" -l "batch-size" -d "Fixed batch size when adaptive packing is off" # global
complete -c "enrich" -l "retry-tokens" -d "Retry larger max_tokens before splitting" # global
complete -c "enrich" -l "split-on-fail" -d "Split batch on truncation/parse failure" # global
complete -c "enrich" -l "no-split-on-fail" # global
complete -c "enrich" -l "adaptive-pack" -d "Pack rows by estimated token budget" # global
complete -c "enrich" -l "no-adaptive-pack" # global
complete -c "enrich" -l "target-prompt-tokens" -d "Prompt budget for batch packing" # global
complete -c "enrich" -l "target-row-tokens" -d "Per-row estimated cost" # global
complete -c "enrich" -l "min-batch" -d "Smallest batch when splitting" # global
complete -c "enrich" -l "cache-dir" # global
complete -c "enrich" -l "out" -d "Output CSV path; if omitted, print CSV to stdout" # global
complete -c "enrich" -l "color" -d "Force ANSI colors in stdout CSV" # global
complete -c "enrich" -l "no-color" # global
complete -c "enrich" -l "debug" # global
complete -c "enrich" -l "dry-run" # global
complete -c "enrich" -l "limit" -d "Only process first N rows" # global
complete -c "enrich" -l "emit-debug-json" -d "Write detailed run info" # global