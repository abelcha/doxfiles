function xc --wraps=xh

    set -l cachedir /tmp/xcache
    if not test -d /tmp/xcache
        mkdir /tmp/xcache
    end
    set -l reqid (url encode "$argv[1]")
    set -l filepath "$cachedir/$reqid"

    if test -e "$filepath"
        /bin/cat $filepath
    else
        x get $argv | tee $filepath
        # set -l response (x $argv)
        # echo $response > $filepath
        # echo $response
    end

end
