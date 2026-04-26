function _list_port_listener
    string replace -a -r '(:?\w+)\s+(:?\d+).+\:(:?\d+).+' '$3\t$1[$2]' (lsof -iTCP -sTCP:LISTEN -P |tail +2 )
end
