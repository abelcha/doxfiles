function cat --wraps=bat
    if test -n "$VSCODE_INJECTION"
        command cat $argv
        return
    end
    if test -z "$FORCE_RENDERING"; and not isatty stdout; or not isatty stdin
        command cat $argv
        return 0
    end
    for p in $argv
        test -f "$p"; and set --append filepath "$p"
    end
    if string match -qr  'https?://*' -- "$argv"
        x $argv
        return
    end
    if test -z "$filepath"
        test -z "$argv[1]"; and echo2 missing filename; or echo2 "'$argv[1]' no such file"
        return
    end
    if not type -q bat
        command cat $filepath
        return 0
    end
    if not string match -rq cargo ( type -p  bat)
        command bat $filepath
        return 0
    end
    if [ (count $filepath) -gt 1 ]
        command bat $filepath
        return 0
    end
    set -l dotspl (string split '.' $filepath)
    set -l decompname (string join -n '.' $dotspl[1..-2])
    set -l extension $dotspl[-1]
    if string match -g -rq '(^[^\:]+).*[\.]?'$extension'\b' (bat --list-languages)
        set language $extension
    end
    #fset language
    switch ( echo $extension )
        case png jpeg jpg gif mp4 webp svg ico heif pdf
            set decode imgcat
        case zst gz lz4 xz
            set decode zstdcat
            if string match -g -rq '(^[^\:]+).*[\.]?'$dotspl[-2]'\b' (bat --list-languages)
                set language $dotspl[-2]
            end
        case parquet
            set pre 'pq cat'
            set language json
        case zng zjson zson
            set decode zq
        case ipynb
            set pre 'uvx juv cat'
            set language py
        case hjson
            set decode "bunx hjson-cli -j"
            set language json
        case xlsx
            set decode "uvx xlsx2csv -"
            set language csv
        case '*'
            set --erase decode
    end
    if [ $extension = json ]
        set format jfmt
    end
    switch ( echo $extension )
        case md
            glow --pager $argv
        case zng zjson zson
            zq $argv
        case plist
            cat (plist-parser $argv[1]|psub -s ".$(path basename $argv[1]).json" )
        case torrent
            aria2c -S $argv[1] | bat --language groovy
        case msg
            uvx extract_msg --dump-stdout $argv
        case '*'
            #fset language
            if test -n "$filepath" -a -d "$filepath"
                lld $filepath
            else if test (string match -r '^http' -- "$filepath")
                x $filepath
            else
                bat $argv (fprops pre decode format language ) --force-colorization --style grid,header-filesize,header-filename --theme OneHalfDark
            end
    end
end
