function _replace_fdate --wraps=rg
    /opt/homebrew/bin/rg '(\d\d?)\/(\d\d?)\/(\d{4})\s(\d\d?\d\d?),(\d\d?),(\d\d?)\s([AP]M)' -r '$3-$1-$2T$4:$5:$6' $argv
end
