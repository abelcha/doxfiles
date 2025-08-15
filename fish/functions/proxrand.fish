function proxrand --argument-names duration
    # set -q duration; or set -l duration 1ms
    # echo "dd $duration dd" >/dev/stderr
    set whe (hash_throttle $duration |§= 10)
    set zz (math "0$we ^ 2")
    set exprr "$zz % 10 + 8001"
    echo "$PROX:$(builtin math "$exprr")"
end
