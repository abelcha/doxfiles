function cat --wraps=bat

    if test -n "$VSCODE_INJECTION"
        /bin/cat $argv
        return
    end
    if not isatty stdout; and test -z "$FORCE_RENDERING"
        /bin/cat $argv
        return 0
    end
    set -l dotspl (string split '.' $argv[-1])
    set -l decompname (string join -n '.' $dotspl[1..-2])
    set decoder --decode
    switch ( echo $dotspl[-1] )
        case png jpeg jpg gif mp4 webp svg ico heif pdf
            set --append decoder imgcat
        case zst gz lz4 xz
            set --append decoder zstdcat
        case zng zjson zson
            set --append decoder zq
        case hjson
            set --append decoder "hjson-cli -j"
        case xlsx
            set --append decoder xls2csv
        case '*'
            set --erase decoder
    end
    echo2 "========DECODER [$decoder]========"
    set formatter ""
    switch ( echo $dotspl[-1] )
        case md
            glow --pager $argv
        case zng zjson zson
            zq $argv
        case json
            if type -q jfmt
                #echo2 loooooool
                 jfmt $argv 2>/dev/null | bat --theme TwoDark $argv --language JSON --file-name $decompname
            else
                bat --theme TwoDark $argv
            end
            #    case png jpeg jpg gif mp4 webp svg ico heif pdf
            #         imgcat $argv
        case xlsx
            xls2csv $argv | csvlens
        case plist
            cat (plist-parser $argv[1]|psub -s ".$(path basename $argv[1]).json" )
        case bson
            bsondump $argv[1] | jq --monochrome-output | bat --color always --theme Coldark-Dark --language java
        case torrent
            aria2c -S $argv[1] | bat --language groovy
        case msg
            extract_msg --dump-stdout $argv
        case '*'
            #   echo2 heeere
            if test -n '$argv[1]' -a -d '$argv[1]'
                lld $argv
            else if test (string match -r '^http' -- "$argv[1]")
                x $argv
            else
                # test -z "$decoder" || set --append argv $decoder
                echo2 bat $argv --force-colorization --style full --theme OneHalfDark
                bat $argv $decoder --force-colorization --style full --theme OneHalfDark
            end
    end
end
