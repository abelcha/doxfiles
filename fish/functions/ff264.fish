function ff264 --wraps=ffmpeg --argument-names file
    set output (path change-extension .mp4 "$file")
    ffmpeg -threads 16  -hide_banner -i "$file" -c:v h264_videotoolbox $output
end
