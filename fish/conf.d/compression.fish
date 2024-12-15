



function imagedisk --wraps 'hdiutil create'
    hdiutil create -volname "$argv[1]" -format SPARSEBUNDLE -encryption AES-128 -stdinpass "$argv[1].dmg" -srcfolder $argv
end


# function taz --wraps pzstd
#     if test -f $argv[1]

#         zstd --fast --rm $argv[1]
#         return
#     end
#     # pv $argv[1] | tar -c - |
#     # pakz $argv[1]
#     #    tar -c - | pzstd -o $argv[1].tzst $argv[2..] && trash $argv[1]
#     # tar -cf '$argv[1].tar' $argv[1] && pzstdc  $argv[1..] --
#     #  tar cf - $argv[1] | pv -s (command gdu -sb $argv[1] | cut -f 1) -N (get_filename $argv[1]).tzst | pzstd $argv[1..] >(get_filename $argv[1]).tzst
#     # tcar -c - $argv[1] | pzstd $argv[1..] && trash $argv[1]
#     # comp tar.zst $argv && trash $argv
#     aarpack compress $argv

# end

function dz -a file
    pv $file | zstd -d --stdout | tar -x - -C . && trash $file
end

# function pak --wraps tar
#     set -l dir (echo $argv[1] | sd '/$' '')
#     tar --create --gzip --file "$dir.tar.gz" $dir
# end



function paxz --wraps tar
    set -l dir (echo $argv[1] | sd '/$' '')
    # tar --create --xz --file "$dir.tar.xz" $dir
    # tar -I/opt/homebrew/bin/pixz -cf output.tar.xz $dir
    echo "creating tar"
    tar --create --file "$dir.tar" $dir
    echo compression
    pixz "$dir.tar"
    # trash $argv[1]

end

function pack --wraps tar
    pak $argv[1]
    trash $argv[1]
end

function zipy
    set -l folder "$argv[1]"
    dx -s=live "$folder"
    zip -qrm "$folder.zip" "$folder" && trash "$folder"
    dx -s=live "$folder.zip"
end
