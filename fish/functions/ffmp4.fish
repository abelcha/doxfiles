function ffmp4 --wraps=ffmpeg --argument-names file
    set output (path change-extension .mp4 "$file")
    ffmpeg -hide_banner -i "$file" -c:v hevc_videotoolbox -tag:v hvc1 $output
end
