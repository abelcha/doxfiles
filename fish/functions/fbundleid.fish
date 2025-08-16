function fbundleid --wraps=fzf
    bundleids | string split ', ' | gum choose --timeout=0 | string trim | pbcopy
end
