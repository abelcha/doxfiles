function ll --wraps=eza
    #lx $argv
    #EZA_COLORS="da=38"
    if not type -q eza
        ls -l $argv
        return
    end 
    if test -z "$argv[1]"
        timeout --foreground 0.5s eza --long -F --no-user --total-size $argv
        test $status = 124; and eza --long -F --no-user $argv
        return 0
    end
    eza --long -F --no-user --total-size $argv
    #leza --long -F --no-user --total-size $argv
end
