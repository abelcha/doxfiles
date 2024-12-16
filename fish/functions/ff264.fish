function ff264 --wraps=ffmpeg --argument file
    set output (path change-extension x.mp4 "$file")
    nice -1 ffmpeg-m1 -hide_banner -i "$file" -c:v h264_videotoolbox "$output"
end
