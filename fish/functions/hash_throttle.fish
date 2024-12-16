function hash_throttle --argument duration
    test -z $argv[1]; and set duration 1ms
    math -s0 (date +%s) x 1000 / \( (duration $argv[1]) +1 \)
end
