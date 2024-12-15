function extension --wraps=string\ match\ --groups-only\ -r\ \'\\.\(\\w+\$\)\'\  --description alias\ extension=string\ match\ --groups-only\ -r\ \'\\.\(\\w+\$\)\'\ 
    string match --groups-only -r '\.(\w+$)' $argv

end
