function fecho --wraps=echo
        test -e /tmp/fifo; or mkfifo /tmp/fifo
        echo $argv >>/tmp/fifo
end
