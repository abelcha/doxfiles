function dest --argument-names dirname
    test -d "$dirname" || mkdir "$dirname"
    echo "$dirname"
end
