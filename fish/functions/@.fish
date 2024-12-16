function @ --wraps=fd
    #echo lol
    fd $argv | gum choose --select-if-one
end
