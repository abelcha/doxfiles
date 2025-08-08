function ll --wraps=ls --wraps=lla --wraps=lx --wraps=eza --description 'alias ll lx'
    #lx $argv
    #EZA_COLORS="da=38"
    if test -z "$argv[1]"
        timeout --foreground 0.5s leza --long -F --no-user --total-size $argv
        test $status = 124; and leza --long -F --no-user $argv
        return 0
    end
    leza --long -F --no-user --total-size $argv
    #leza --long -F --no-user --total-size $argv
end
