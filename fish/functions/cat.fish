function cat --wraps=bat --description Use\ bat\ instead\ of\ cat\ unless\ it\'s\ a\ Markdown\ file,\ then\ use\ mdless
    if not isatty stdout
        /bin/cat $argv
        return 0
    end
    # set -l ext (get_ext $argv)
    #echo $ext
    switch ( echo $argv[-1] | sed 's/.*\.//' )
        case png jpeg jpg gif mp4 webp svg
            imgcat $argv
        case zip tar.gz
            # echo "遲   Extract $argv[1]"
        case '*'

            command bat --force-colorization --style plain --theme OneHalfDark $argv
    end
end
