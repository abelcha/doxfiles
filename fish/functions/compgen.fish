function compgen --wraps=command --wraps=which
    OPENAI_API_KEY=$OPENAI_API_KEY bun run /me/dev/compgen/index.ts $argv
end
