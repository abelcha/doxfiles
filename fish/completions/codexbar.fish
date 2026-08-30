# Ordered, flag-ignoring subcommand-path matcher.
# True when the non-option tokens after the command equal the args in order.
function __fish_seen_subcommand_path
    set -l subs
    for t in (commandline -pxc)[2..]
        string match -q -- '-*' $t; and continue
        set -a subs $t
    end
    test "$subs" = "$argv"
end
complete -c "codexbar" -s "h" -l "help" -d "Show help" # global
complete -c "codexbar" -s "V" -l "version" -d "Show version" # global
complete -c "codexbar" -s "v" -l "verbose" -d "Enable verbose logging" # global
complete -c "codexbar" -l "no-color" -d "Disable ANSI colors in text output" # global
complete -c "codexbar" -l "log-level" -xa "trace verbose debug info warning error critical" # global
complete -c "codexbar" -l "json-output" -d "Emit machine-readable logs (JSONL) to stderr" # global
complete -c "codexbar" -l "format" -xa "text json toon" # global
complete -c "codexbar" -l "json" -d "Output JSON on stdout" # global
complete -c "codexbar" -l "json-only" # global
complete -c "codexbar" -l "provider" -xa "codex openai azure-openai claude clinepass cursor opencode opencodego alibaba-coding-plan alibaba-token-plan qwen-cloud factory fireworks gemini antigravity copilot devin zai minimax manus kimi kilo kiro vertexai augment jetbrains moonshot amp t3chat ollama synthetic openrouter elevenlabs warp windsurf zed perplexity mimo doubao sakana abacusai mistral deepseek deepinfra codebuff crof venice commandcode qoder stepfun bedrock grok groqcloud llmproxy litellm deepgram poe chutes neuralwatt clawrouter longcat sub2api wayfinder zenmux aiand zoommate xai notion ibmbob both all" # global
complete -c "codexbar" -l "account" # global
complete -c "codexbar" -l "account-index" # global
complete -c "codexbar" -l "all-accounts" -d "Fetch every token account, or every visible Codex account for Codex" # global
complete -c "codexbar" -l "no-credits" # global
complete -c "codexbar" -l "pretty" # global
complete -c "codexbar" -l "status" # global
complete -c "codexbar" -l "source" -xa "auto web cli oauth api" # global
complete -c "codexbar" -l "web-timeout" # global
complete -c "codexbar" -l "web-debug-dump-html" # global
complete -c "codexbar" -l "antigravity-plan-debug" # global
complete -c "codexbar" -l "augment-debug" # global
complete -f -c "codexbar" -n "__fish_use_subcommand" -a "usage" -d "Print usage from enabled providers as text (default), JSON, or TOON. Honors your in-app toggles." # sub
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -s "h" -l "help" -d "Show help" # subcommands flags
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -s "V" -l "version" -d "Show version" # subcommands flags
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -s "v" -l "verbose" -d "Enable verbose logging" # subcommands flags
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -l "no-color" -d "Disable ANSI colors in text output" # subcommands flags
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -l "log-level" -xa "trace verbose debug info warning error critical" # subcommands flags
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -l "json-output" -d "Emit machine-readable logs (JSONL) to stderr" # subcommands flags
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -l "format" -xa "text json toon" # subcommands flags
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -l "json" -d "Output JSON on stdout" # subcommands flags
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -l "json-only" # subcommands flags
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -l "provider" -xa "codex openai azure-openai claude clinepass cursor opencode opencodego alibaba-coding-plan alibaba-token-plan qwen-cloud factory fireworks gemini antigravity copilot devin zai minimax manus kimi kilo kiro vertexai augment jetbrains moonshot amp t3chat ollama synthetic openrouter elevenlabs warp windsurf zed perplexity mimo doubao sakana abacusai mistral deepseek deepinfra codebuff crof venice commandcode qoder stepfun bedrock grok groqcloud llmproxy litellm deepgram poe chutes neuralwatt clawrouter longcat sub2api wayfinder zenmux aiand zoommate xai notion ibmbob both all" # subcommands flags
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -l "account" # subcommands flags
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -l "account-index" # subcommands flags
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -l "all-accounts" -d "Fetch every token account, or every visible Codex account for Codex" # subcommands flags
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -l "no-credits" # subcommands flags
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -l "pretty" # subcommands flags
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -l "status" # subcommands flags
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -l "source" -xa "auto web cli oauth api" # subcommands flags
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -l "web-timeout" # subcommands flags
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -l "web-debug-dump-html" # subcommands flags
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -l "antigravity-plan-debug" # subcommands flags
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -l "augment-debug" # subcommands flags
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -l "format" -xa "text json toon" # global
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -l "json" -d "output JSON to stdout" # global
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -l "json-only" # global
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -l "json-output" -d "emit machine-readable logs (JSONL) to stderr" # global
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -l "log-level" -xa "trace verbose debug info warning error critical" # global
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -s "v" -l "verbose" -d "enable verbose logging" # global
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -l "provider" -xa "codex openai azure-openai claude clinepass cursor opencode opencodego alibaba-coding-plan alibaba-token-plan qwen-cloud factory fireworks gemini antigravity copilot devin zai minimax manus kimi kilo kiro vertexai augment jetbrains moonshot amp t3chat ollama synthetic openrouter elevenlabs warp windsurf zed perplexity mimo doubao sakana abacusai mistral deepseek deepinfra codebuff crof venice commandcode qoder stepfun bedrock grok groqcloud llmproxy litellm deepgram poe chutes neuralwatt clawrouter longcat sub2api wayfinder zenmux aiand zoommate xai notion ibmbob both all" # global
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -l "account" # global
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -l "account-index" # global
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -l "all-accounts" -d "fetch every token account" # global
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -l "no-credits" # global
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -l "no-color" -d "disable ANSI colors in text output" # global
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -l "pretty" # global
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -l "status" # global
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -l "source" -xa "auto web cli oauth api" # global
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -l "web-timeout" # global
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -l "web-debug-dump-html" # global
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -l "antigravity-plan-debug" # global
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -l "augment-debug" # global
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -s "h" -l "help" -d "show help" # global
complete -c "codexbar" -n "__fish_seen_subcommand_from 'usage'" -s "V" -l "version" -d "show version" # global
