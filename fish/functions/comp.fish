function comp
    if test (count $argv) -lt 1; or test $argv[1] = -h; or test $argv[1] = --help
        show_comp_document
        return
    else if test $argv[1] = -v; or test $argv[1] = --version
        show_comp_version
        return
    else if test (count $argv) -lt 2
        echo 'comp error: Please specify a file or directory'
        return -1
    end
    if ! contains $argv[1] gz bz2 xz zst 'tar.gz' 'tar.bz2' 'tar.xz' 'tar.zst' zip 7z 'zip.crypt' 'zip.aes' '7z.aes'
        echo 'comp error - Specified type is an unknown compression type : gz, bz2, xz, zst, tar.gz, tar.bz2, tar.xz, tar.zst, zip, 7z, zip.crypt, zip.aes, 7z.aes'
        return -1
    end
    if ! test -e $argv[2]
        echo 'comp error: A file or directory is not exists : '$argv[2]
        return -1
    end
    if contains $argv[1] gz bz2 xz zst; and ! test -f $argv[2]
        echo 'comp error: Given path is not a file : '$argv[2]
        return -1
    end
    if contains $argv[1] 'tar.gz' 'tar.bz2' 'tar.xz' 'tar.zst'; and ! test -d $argv[2]
        echo 'comp error: Given path is not a directory : '$argv[2]
        return -1
    end

    if test (count $argv) -gt 2
        set options $argv[3..-1]
    else
        set options
    end

    switch $argv[1]
        case gz
            pv $argv[2] -N (get_filename $argv[2]).gz | pigz $options >(get_filename $argv[2]).gz
        case bz2
            pv $argv[2] -N (get_filename $argv[2]).bz2 | lbzip2 $options >(get_filename $argv[2]).bz2
        case xz
            pv $argv[2] -N (get_filename $argv[2]).xz | pixz $options >(get_filename $argv[2]).xz
        case zst
            pv $argv[2] -N (get_filename $argv[2]).zst | pzstd $options >(get_filename $argv[2]).zst
        case 'tar.gz'
            gtar cf - $argv[2] | pv -s (command gdu -sb $argv[2] | gcut -f 1) -N (get_filename $argv[2]).tar.gz | pigz $options >(get_filename $argv[2]).tar.gz
        case 'tar.bz2'
            gtar cf - $argv[2] | pv -s (command gdu -sb $argv[2] | gcut -f 1) -N (get_filename $argv[2]).tar.bz2 | lbzip2 $options >(get_filename $argv[2]).tar.bz2
        case 'tar.xz'
            gtar cf - $argv[2] | pv -s (command gdu -sb $argv[2] | gcut -f 1) -N (get_filename $argv[2]).tar.xz | pixz $options >(get_filename $argv[2]).tar.xz
        case 'tar.zst'
            gtar cf - $argv[2] | pv -s (command gdu -sb $argv[2] | gcut -f 1) -N (get_filename $argv[2]).tar.zst | pzstd $options >(get_filename $argv[2]).tar.zst
        case zip
            7z a -tzip -r $options (get_filename $argv[2]).zip $argv[2]
        case 'zip.aes'
            read -p'echo "Password: "' -s pswd
            7z a -tzip -mem=AES256 -p(echo $pswd) -r- $options (get_filename $argv[2]).zip $argv[2]
        case 'zip.crypt'
            read -p'echo "Password: "' -s pswd
            7z a -tzip -mem=ZipCrypto -p(echo $pswd) -r- $options (get_filename $argv[2]).zip $argv[2]
        case 7z
            7z a -t7z -m0=LZMA2 -r- $options (get_filename $argv[2]).7z $argv[2]
        case '7z.aes'
            read -p'echo "Password: "' -s pswd
            7z a -t7z -m0=LZMA2 -p(echo $pswd) -mhe=on -r- $options (get_filename $argv[2]).7z $argv[2]
    end
end
