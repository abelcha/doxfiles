function _list_tesseract_oem
    tesseract --help-oem | string replace -f -r '\s*\d+\|(\w+)\s+(\w+)' '$1\t$2'
    return
    echo -e "
tesseract_only\tLegacy engine only.
lstm_only\tNeural nets LSTM engine only.
tesseract_lstm_combined\tLegacy + LSTM engines.
default\tDefault, based on what is available
"
end

function _list_tesseract_psm
    tesseract --help-psm | string replace -f -r '\s*\d+\|(\w+)\s+(\w+)' '$1\t$2'
    return
    echo -e "
osd_only\tOrientation and script detection [OSD] only.
auto_osd\tAutomatic page segmentation with OSD.
auto_only\tAutomatic page segmentation, but no OSD, or OCR. [not implemented]
auto\tFully automatic page segmentation, but no OSD. [Default]
single_column\tAssume a single column of text of variable sizes.
single_block_vert_text\tAssume a single uniform block of vertically aligned text.
single_block\tAssume a single uniform block of text.
single_line\tTreat the image as a single text line.
single_word\tTreat the image as a single word.
circle_word\tTreat the image as a single word in a circle.
single_char\tTreat the image as a single character.
sparse_text\tSparse text. Find as much text as possible in no particular order.
sparse_text_osd\tSparse text with OSD.
raw_line\tRaw line. Treat the image as a single text line,
bypassing\thacks that are Tesseract-specific.
"
end

complete -c tesseract -l tessdata-dir -d 'PATH   Specify the location of tessdata path.'
complete -c tesseract -l user-words -d 'PATH     Specify the location of user words file.'
complete -c tesseract -l user-patterns -d 'PATH  Specify the location of user patterns file.'
complete -c tesseract -l dpi -d 'VALUE           Specify DPI for input image.'
complete -c tesseract -l loglevel -d 'LEVEL      Specify logging level. LEVEL can be'
complete -c tesseract -s l -d 'LANG[+LANG]        Specify language(s) used for OCR.'
complete -c tesseract -s c -d 'VAR=VALUE          Set value for config variables.'
complete -c tesseract -l psm -d 'Specify page segmentation mode.' -x -a '(_list_tesseract_psm)'
complete -c tesseract -l oem -d 'Specify OCR Engine mode.' -x -a '(_list_tesseract_oem)'

complete -c tesseract -s h -l help -d 'Show minimal help message.'
complete -c tesseract -l help-extra -d 'Show extra help for advanced users.'
complete -c tesseract -l help-psm -d 'Show page segmentation modes.'
complete -c tesseract -l help-oem -d 'Show OCR Engine modes.'
complete -c tesseract -n __fish_no_arguments -s v -l version -d 'Show version information.'
complete -c tesseract -l list-langs -d 'List available languages for tesseract engine.'
complete -c tesseract -l print-fonts-table -d 'Print tesseract fonts table.'
complete -c tesseract -l print-parameters -d 'Print tesseract parameters.'
