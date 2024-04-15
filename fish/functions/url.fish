function url --argument operation uri
    if [ $operation = encode ]
        bun -e "console.log(encodeURIComponent('$uri'))"
    end

    if [ $operation = decode ]
        bun -e "console.log(decodeURIComponent('$uri'))"
    end
end
