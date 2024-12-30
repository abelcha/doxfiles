function cp --wraps='advcp -gir' --wraps=xcp
    #advcp -gir $argv 
    
    xcp --recursive -v $argv
    
end
