function dest --argument-names dirname
    test -d "$dirname" || mkdir -p "$dirname"
    echo "$dirname"
end
