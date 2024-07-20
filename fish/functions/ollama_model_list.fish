function ollama_model_list
    # xc ollama.ai/library | pup 'a[href^=/library] json{}' | jh --map "[e.href.split('/').pop(), e.children?.find(z => z.tag == 'p')?.text].join('\t')" --plain
    # xc ollama.ai/library 2>/dev/null | pup --indent 4 'a[href^=/library] text{}' | sd '\s{5,}' '\t' | cut -f 4,5 | grep -E '.{10,}'
    xc ollama.ai/library 2>/dev/null | pup --indent 4 'a[href^=/library] text{}' | sd '\s{5,}' '\t' | cut -f 4,5 | grep -E '^.{10,250}$' | grep -E -v 'dolphin-llama3|llama-pro|stablelm2|magicoder'
end
