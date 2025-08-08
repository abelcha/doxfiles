function leza
    if type -f -q leza
        leza $argv
    else if type -f -q eza
        eza $argv
    else
        echo eza not installed
    end
    
end
