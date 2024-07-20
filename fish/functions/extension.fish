function extension --wraps=string\ match\ --groups-only\ -r\ \'\\.\(\\w+\$\)\'\  --description alias\ extension=string\ match\ --groups-only\ -r\ \'\\.\(\\w+\$\)\'\ 
    set -l ext (string match --groups-only -r '\.(\w+$)' $argv[1])
    if test -n $argv[2]
        string replace $ext $argv[2]
    else
        echo $ext
    end

end
