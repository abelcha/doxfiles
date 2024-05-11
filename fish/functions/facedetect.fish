function facedetect --argument img
    pigo -in $img -cf ~/dev/pigo/cascade/facefinder -out /tmp/whatever.png -json -
end
