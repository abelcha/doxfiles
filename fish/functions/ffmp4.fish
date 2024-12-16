function ffmp4 --wraps=ffmpeg --argument file
    set output (path change-extension .mp4 "$file")
    nice -1 ffmpeg-m1 -hide_banner -threads 4 -i "$file" -c:v hevc_videotoolbox -tag:v hvc1 $output
end
