function _list_port_listener
    lsof  -iTCP -sTCP:LISTEN|choose 0  -2 |rg '(.+)\s.+:(\d+)' -r '$2'\t'\'$1\''|sort -u
end
