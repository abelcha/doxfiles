function lzf --argument file
    # set time ()
    pv $file | compression_tool -encode -o "$file.lzf" $argv[2..]
    echo (du -sh "$file") '->' (du -sh "$file.lzf")
end
