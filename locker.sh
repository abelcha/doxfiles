#!/usr/bin/env fish
set --append files "./rclone/rclone.conf" "./fish/conf.d/secrets.fish"

read --prompt-str "pass> " -s -l pass

if [ "$argv[1]" = "encrypt" ]
    for file in $files
        7z a -bb0 -p"$pass" -mhe=on -t7z $file.7z  $file
    end
    # echo "encrypt"
end

if [ "$argv[1]" = "decrypt" ]
    for file in $files
        7z x $file.7z -o"$(path dirname $file)" -p"$pass" -aoa
    end
end