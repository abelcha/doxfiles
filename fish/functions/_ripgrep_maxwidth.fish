function _ripgrep_maxwidth
    set -l wlen (string length "[... XX more match]")
    command rg --max-columns-preview -M (math (colwidth) - $wlen - 2) $argv
end
