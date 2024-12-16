function proxrand --argument duration
    # set -q duration; or set -l duration 1ms
    # echo "dd $duration dd" >/dev/stderr
    echo "$PROX:$(%  (hash_throttle $duration)^2 % 10 + 8001)"
end
