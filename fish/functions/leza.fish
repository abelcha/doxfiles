function leza
    if type -f -q leza
        command leza $argv
    else if type -f -q eza
        command eza $argv
    else
        echo eza not installed
    end
    
end
