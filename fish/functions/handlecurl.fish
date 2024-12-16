function handlecurl

    # set tempfile (mktemp )
    set tempfile (mktemp )
    read >$tempfile
    set uri (rg "(http[^\s]+)'\s" -r '$1' --only-matching   $tempfile)[1]
    set domain (adaparse $uri --get host|string split ".")[-2]
    cat $tempfile | grep "[\-]H" | sd '\W\n' '\n' | sd "'" '"' >"$domain.txt"

    commandline --insert (string join " " "curl -K $domain.txt $uri")

end
