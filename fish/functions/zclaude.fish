function zclaude --wraps=claude
    claude --settings (jq '.env += {"ANTHROPIC_MODEL": "glm-5.2",  "ANTHROPIC_AUTH_TOKEN": "'$Z_API_KEY'","ANTHROPIC_BASE_URL": "https://api.z.ai/api/anthropic"}' ~/.claude/settings.json |psub -s .json) $argv
end
