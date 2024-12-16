function untaz
    if string match -qr ".zst" -- "$argv[1]"
        unzstd --verbose --rm "$argv[1]"
    else
        aarpack x --rm "$argv[1]"
    end

end
