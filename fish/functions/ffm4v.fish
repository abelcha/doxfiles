function ffm4v --wraps=ffmpeg --argument file
    set output (path change-extension .m4v "$file")
    fexec ffmpeg-m1 -hide_banner -i "$file" -c:v h264_videotoolbox "$output"
end
