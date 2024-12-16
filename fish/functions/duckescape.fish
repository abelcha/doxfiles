function duckescape
    echo $argv | sd '\[([\w\.\~\/][^\s]{5,})\]' '[‘$1‘]' | tr '][@‘“' ")(*'\"" | sd '(\w+)=([^,\s\+\-]+)' '$1=\'$2\'' | sd --fixed-strings ":*" "@" | sd --fixed-strings "(:" "[" | sd --fixed-strings ":)" "]"
end
