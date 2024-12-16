function echo_center
    set -l offset (math -s0 "$(colwidth) /2 - $(string length "$argv") /2")

    echo (string repeat -n $offset ' ') $argv

end
