function available_functions --wraps=functions
    functions  $argv | while read -l line
        type -q $line && echo $line
    end
end
