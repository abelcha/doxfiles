complete -c ocrmypdf -s h -l help -d 'show this help message and exit'
complete -c ocrmypdf -s l -l language -d LANGUAGES
complete -c ocrmypdf -l list-langs -d 'for all language packs installed in your'
complete -c ocrmypdf -l image-dpi -d 'DPI       When the input file is an image, not a PDF, use this'
complete -c ocrmypdf -l output-type -d '{pdfa,pdf,pdfa-1,pdfa-2,pdfa-3,none}'
complete -c ocrmypdf -l sidecar -d '[FILE]      Generate sidecar text files that contain the same text'
complete -c ocrmypdf -n __fish_no_arguments -l version -d 'Print program version and exit'
complete -c ocrmypdf -s j -l jobs -d 'N          Use up to N CPU cores simultaneously (default: use'
complete -c ocrmypdf -s q -l quiet -d 'Suppress INFO messages'
complete -c ocrmypdf -s v -l verbose -d '[VERBOSE]'
complete -c ocrmypdf -l title -d 'TITLE         Set document title (place multiple words in quotes)'
complete -c ocrmypdf -l author -d 'AUTHOR       Set document author'
complete -c ocrmypdf -l subject -d 'SUBJECT     Set document subject description'
complete -c ocrmypdf -l keywords -d 'KEYWORDS   Set document keywords'
complete -c ocrmypdf -s r -l rotate-pages -d 'Automatically rotate pages based on detected text'
complete -c ocrmypdf -l remove-background -d 'Attempt to remove background from gray or color pages,'
complete -c ocrmypdf -s d -l deskew -d 'Deskew each page before performing OCR'
complete -c ocrmypdf -s c -l clean -d 'Clean pages from scanning artifacts before performing'
complete -c ocrmypdf -s i -l clean-final -d 'Clean page as above, and incorporate the cleaned image'
complete -c ocrmypdf -l unpaper-args -d UNPAPER_ARGS
complete -c ocrmypdf -l oversample -d 'DPI      Oversample images to at least the specified DPI, to'
complete -c ocrmypdf -l remove-vectors -d 'EXPERIMENTAL. Mask out any vector objects in the PDF'
complete -c ocrmypdf -s f -l force-ocr -d 'Rasterize any text or vector objects on each page,'
complete -c ocrmypdf -s s -l skip-text -d 'Skip OCR on any pages that already contain text, but'
complete -c ocrmypdf -l redo-ocr -d 'Attempt to detect and remove the hidden OCR layer from'
complete -c ocrmypdf -l skip-big -d 'MPixels    Skip OCR on pages larger than the specified amount of'
complete -c ocrmypdf -l pages -d 'PAGES         Limit OCR to the specified pages (ranges or comma'
complete -c ocrmypdf -l max-image-mpixels -d MPixels
complete -c ocrmypdf -l pdf-renderer -d '{auto,hocr,sandwich,hocrdebug}'
complete -c ocrmypdf -l rotate-pages-threshold -d CONFIDENCE
complete -c ocrmypdf -l fast-web-view -d MEGABYTES
complete -c ocrmypdf -l plugin -d 'PLUGINS      Name of plugin to import. Argument may be issued'
complete -c ocrmypdf -l tesseract-config -d CFG
complete -c ocrmypdf -l tesseract-pagesegmode -d PSM
complete -c ocrmypdf -l tesseract-oem -d 'MODE  Set Tesseract 4+ OCR engine mode: 0 - original'
complete -c ocrmypdf -l tesseract-thresholding -d METHOD
complete -c ocrmypdf -l tesseract-timeout -d SECONDS
complete -c ocrmypdf -l tesseract-non-ocr-timeout -d SECONDS
complete -c ocrmypdf -l tesseract-downsample-above -d TESSERACT_DOWNSAMPLE_ABOVE
complete -c ocrmypdf -l user-words -d 'FILE     Specify the location of the Tesseract user words file.'
complete -c ocrmypdf -l user-patterns -d 'FILE  Specify the location of the Tesseract user patterns'
complete -c ocrmypdf -s O -l optimize -d '{0,1,2,3}'
complete -c ocrmypdf -l jpeg-quality -d 'Q      Adjust JPEG quality level for JPEG optimization. 100'
complete -c ocrmypdf -l png-quality -d 'Q       Adjust PNG quality level to use when quantizing PNGs.'
complete -c ocrmypdf -l jbig2-lossy -d 'Enable JBIG2 lossy mode (better compression, not'
complete -c ocrmypdf -l jbig2-threshold -d 'T   Adjust JBIG2 symbol code classification threshold'
complete -c ocrmypdf -l color-conversion-strategy -d STRATEGY
complete -c ocrmypdf -l pdfa-image-compression -d '{auto,jpeg,lossless}'
complete -c ocrmypdf -l output-type -d 'pdfa which converts the PDF to a standardized PDF/A-2b.  This'
