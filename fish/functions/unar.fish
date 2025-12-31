function unar
    switch $argv[1]
        case '*.aar'
            aarpack x $argv
        case '*'
            command unar $argv
    end
    #if equals "$(path extension $argv[1])"
    
end
