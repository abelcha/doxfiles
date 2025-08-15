function _atuin_bind_up
        # Fallback to fish's builtin up-or-search if we're in search or paging mode
        if commandline --search-mode; or commandline --paging-mode
            up-or-search
            return
        end

        # Only invoke atuin if we're on the top line of the command
        set -l lineno (commandline --line)

        switch $lineno
            case 1
                _atuin_search --shell-up-key-binding
            case '*'
                up-or-search
        end
    
end
