function lzf --wraps=compression_tool --argument-names file
    argparse --ignore-unknown rm -- $argv; or return
    
    # set time ()
    pv $file --delay-start 1 | compression_tool -encode -o "$file.lzfse" $argv[2..]
    #echo (du -sh "$file") '->' (du -sh "$file.lzf")
    diffsize "$file" "$file.lzfse"
    set -q _flag_rm; and trash "$file"
end
