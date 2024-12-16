function ffformat --wraps=ffmpeg -a file -a ext
    set output (path change-extension "$ext" "$file")
    fexec ffmpeg-m1 -hide_banner -i "$file" $argv[3..] "$output"
end
