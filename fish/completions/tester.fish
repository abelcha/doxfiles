# Fish completion for tester.ts
# Usage: bun run /Users/abel/.config/fish/functions/tester.ts --completion | source

complete -c tester -f
complete -c tester -s m -l model -d "Model ID to test" -r -a "(bun run /Users/abel/.config/fish/functions/tester.ts --list-short)"
complete -c tester -s l -l list -d "List available models"
complete -c tester -s p -l prompt -d "Show research prompts"
complete -c tester -s h -l help -d "Show help"
complete -c tester -l completion -d "Generate fish shell completion"
