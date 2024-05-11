function ollama_model_list
    xc ollama.ai/library | pup 'a[href^=/library] json{}' | jh --map "[e.href.split('/').pop(), e.children?.find(z => z.tag == 'p')?.text].join('\t')" --plain
end
