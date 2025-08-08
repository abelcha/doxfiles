function cp --wraps='advcp -gir' --wraps=xcp
    #advcp -gir $argv   test
    if not type -q xcp
        command cp $argv
    end
    xcp --recursive -v $argv
    
end
