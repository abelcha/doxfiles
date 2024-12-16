function lf --wraps=fd --wraps=eza
    fd . -t f --exec-batch eza --long -F --total-size --no-user $argv
end
