function aaencrypt --wraps=aa
        set selfnaming (string match -q -r "\Wo\s" -- "$argv";or echo "-p")
        aa archive -keychain -password-gen -v $selfnaming -d $argv
end
