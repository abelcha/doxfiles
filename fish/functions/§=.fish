function §= --argument-names value

    if not isatty 0
        read in
    end
    if isatty 0; or not test -z "$in"
        echo -n $value
    else
        # echo -n "$in"
    end
    #set -l in (gcat -)
    #set temp_file (mktemp)
    #read in
    #/bin/cat > $temp_file
    #echo "cc|$in|"
end
