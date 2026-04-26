complete -c "ai-git-narrator" -l "api-key" -d "Set the API key for OpenAI or Gemini (mandatory for these providers, optional for Ollama)" # global
complete -c "ai-git-narrator" -l "llm-provider" -d "Set the LLM provider (Available: openai, gemini, ollama). Default: openai" -xa "openai gemini ollama" # global
complete -c "ai-git-narrator" -l "model" -d "Set the model for the chosen LLM (default: gpt-4.1-mini for OpenAI, gemini-2.0-flash for Gemini, llama3.2 for Ollama)." # global
complete -c "ai-git-narrator" -l "max-tokens" -d "Set the maximum number of tokens. Default: 32768." # global
complete -c "ai-git-narrator" -l "temperature" -d "Set the temperature for sampling (default: 0.7). Lower values make the output more focused and deterministic, while higher values make it more random." # global
complete -c "ai-git-narrator" -l "timeout" -d "Set the request timeout in seconds for the specific llm provider (default: 120)." # global
complete -c "ai-git-narrator" -l "ollama-base-url" -d "Set the Ollama base URL (default: http://localhost:11434). Only used when --llm-provider is ollama" # global
complete -c "ai-git-narrator" -l "base-branch" -d "Set the base branch to compare for generating PR description" # global
complete -c "ai-git-narrator" -l "generate-commit-message" -d "Generate a commit message based on all changes" # global
complete -c "ai-git-narrator" -l "generate-staged-commit-message" -d "Generate a commit message based on staged changes" # global
complete -c "ai-git-narrator" -l "generate-unstaged-commit-message" -d "Generate a commit message based on unstaged changes" # global
complete -c "ai-git-narrator" -l "generate-pr" -d "Generate a PR title and description based on commits" # global
complete -c "ai-git-narrator" -s "h" -l "help" -d "Show help information." # global