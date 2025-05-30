complete -c html2text -s h -l help -d 'show this help message and exit'
complete -c html2text -l default-image-alt -d DEFAULT_IMAGE_ALT
complete -c html2text -l pad-tables -d 'pad the cells to equal column width in tables'
complete -c html2text -l no-wrap-links -d "don't wrap links during conversion"
complete -c html2text -l wrap-list-items -d 'wrap list items during conversion'
complete -c html2text -l wrap-tables -d 'wrap tables'
complete -c html2text -l ignore-emphasis -d "don't include any formatting for emphasis"
complete -c html2text -l reference-links -d 'use reference style links instead of inline links'
complete -c html2text -l ignore-links -d "don't include any formatting for links"
complete -c html2text -l protect-links -d 'protect links from line breaks surrounding them with'
complete -c html2text -l ignore-images -d "don't include any formatting for images"
complete -c html2text -l images-as-html -d 'Always write image tags as raw html; preserves'
complete -c html2text -l images-to-alt -d 'Discard image data, only keep alt text'
complete -c html2text -l images-with-size -d 'Write image tags with height and width attrs as raw'
complete -c html2text -s g -l google-doc -d 'convert an html-exported Google Document'
complete -c html2text -s b -d 'BODY_WIDTH, --body-width BODY_WIDTH'
complete -c html2text -s i -d 'LIST_INDENT, --google-list-indent LIST_INDENT'
complete -c html2text -l escape-all -d 'Escape all special characters. Output is less'
complete -c html2text -l bypass-tables -d 'Format tables in HTML rather than Markdown syntax.'
complete -c html2text -l ignore-tables -d 'Ignore table-related tags (table, th, td, tr) while'
complete -c html2text -l single-line-break -d 'Use a single line break after a block element rather'
complete -c html2text -l unicode-snob -d 'Use unicode throughout document'
complete -c html2text -l no-automatic-links -d 'Do not use automatic links wherever applicable'
complete -c html2text -l links-after-para -d 'Put links after each paragraph instead of document'
complete -c html2text -l mark-code -d 'Mark program code blocks with [code]...[/code]'
complete -c html2text -l decode-errors -d DECODE_ERRORS
complete -c html2text -l open-quote -d OPEN_QUOTE
complete -c html2text -l close-quote -d CLOSE_QUOTE
complete -c html2text -n __fish_no_arguments -l version -d "show program's version number and exit"
complete -c html2text -l include-sup-sub -d 'Include the sup and sub tags'
