function html2llm --wraps=html2text
    html2text --ignore-links --ignore-images --no-automatic-links --mark-code $argv
end
