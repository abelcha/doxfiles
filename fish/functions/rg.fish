function rg
    if not isatty 1
        command rg $argv
    else
        _ripgrep_maxwidth $argv
    end
    
    # set -cl wlen (string length "[... XX more match]")
    #echo (colwidth) ddd $wlen
    # /opt/homebrew/bin/rg --max-columns-preview -M (math (colwidth) - $wlen - 3) $argv
    # /opt/homebrew/bin/rg
end
