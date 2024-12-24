function trim-trailing-slash
    read str
    string replace -r '/$' '' -- $str
    trim-trailing-slash "$str"
end
