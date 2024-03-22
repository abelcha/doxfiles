function unpack --description 'Unpack arbitrary archive files'
    for file in $argv
        switch $file
            case '*.tar'
                tar -xf $file
            case '*.tar.gz' '*.tgz'
                tar -zxf $file
            case '*.tar.bz' '*.tar.bz2' '*.tbz' '*.tbz2'
                tar -jxf $file
            case '*.rar'
                unrar e $file
            case '*.zip'
                unzip $file
            case '*'
                echo File $file is of unknown type
        end
    end
end



function pak
    set -l dir (echo $argv[1] | sd '/$' '')
    tar --create --gzip --file "$dir.tar.gz" $dir
end
