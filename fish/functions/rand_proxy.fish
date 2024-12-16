function rand_proxy --argument duration
    echo "|$duration|"
    echo "$PROX:$(% (hash_throttle $duration) % 10 + 8001)"
end
