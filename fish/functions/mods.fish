function mods --description '--wraps mods'
    GROQ_API_KEY=$GROQ_API_KEY \
        GEMINI_KEY=$GEMINI_KEY \
        ANTHROPIC_API_KEY=$ANTHROPIC_API_KEY \
        OPENROUTER_KEY=$OPENROUTER_KEY \
        MISTRAL_KEY=$MISTRAL_KEY \
        PERPLEXITY_API_KEY=$PERPLEXITY_API_KEY \
        XAI_API_KEY=$XAI_API_KEY \
        OPENAI_API_KEY=$OPENAI_API_KEY command mods --word-wrap (colwidth) $argv


end
