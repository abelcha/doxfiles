function ll --wraps=eza
    if not type -q eza
        ls -l $argv
        return
    end
    if test -z "$argv[1]"
        timeout --foreground 0.5s eza --long -F --no-user --total-size $argv
        test $status = 124; and leza $argv
        return 0
    end
    leza --total-size $argv
end
