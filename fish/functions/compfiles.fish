function compfiles --wraps='fd  --type=file  .fish /Users/abelchalier/.config/fish/completions /opt/homebrew/etc/fish/completions /Users/abelchalier/.local/share/fish/vendor_completions.d /opt/homebrew/Cellar/fish/3.7.1/share/fish/vendor_completions.d /opt/homebrew/share/fish/vendor_completions.d /opt/homebrew/Cellar/fish/3.7.1/share/fish/completions /Users/abelchalier/.local/share/fish/generated_completions' --wraps=fd --description fd
        fd --type=file --glob "$argv[1].fish" $fish_complete_path $argv[2..] 2>/dev/null
    
end
