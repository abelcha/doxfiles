function __ollama_parse_library
    lynx -accept_all_cookies -dump -width 1000 -with_backspaces https://ollama.ai/library | sd '\s*\n+\s*' '|' | sd "\\*" '\n' | rg '^\|.+ago' --only-matching
    # lynx -accept_all_cookies -dump -width 1000 -with_backspaces  https://ollama.ai/library|sd '\s*\n+\s*' ';' |sd  "\\*" '\n'   | rg '^;.+ago'  --only-matching|sd '\s([\d\.]+)K\s+Pul' '\;$1 GGG'   |csvlens -d ';'
end
