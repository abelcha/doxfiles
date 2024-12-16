function brew_search --wraps='brew search'
    brew search patch --desc --eval-all $argv | rg '^\w' | qsv table --delimiter ":" | gum choose | xargs brew install
end
