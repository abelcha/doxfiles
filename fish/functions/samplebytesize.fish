function samplebytesize --argument filename bytesize
    set -l bytesmargin 128
    set -l filesize (uwc --bytes --total=only $filename)
    set -l maxoffset (math $filesize - $bytesize - $bytesmargin)
    set -l offset (random 0 $maxoffset)
    if test $maxoffset -lt 0
        echo "file too small" >>/dev/stderr
        exit 1
    end
    echo "filesize: $filesize, maxoffset: $maxoffset, offset: $offset " >/dev/stderr
    ghead -c $offset $filename | gtail -c $bytesize
end
