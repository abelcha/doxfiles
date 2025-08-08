function ffm4v --wraps=ffmpeg --argument-names file
    set output (path change-extension .m4v "$file")
    ffmpeg -hide_banner -i "$file" -c:v h264_videotoolbox $output $argv[2..]
end
