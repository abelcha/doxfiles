function locker
    set --append files \
        "$XDG_CONFIG_HOME/rclone/rclone.conf" \
        "$XDG_CONFIG_HOME/fish/conf.d/secrets.fish" \
        "$XDG_CONFIG_HOME/authorized_key" \
        "$XDG_CONFIG_HOME/.gh-token"
    read --prompt-str "pass> " -s -l pass
    if [ (echo $pass | __fish_md5) != f64039409478d859948c8ce0ac51f8ac ]
        echo "wrong password"
        return 1
    end
    switch $argv[1]
        case encrypt
            for file in $files
                7z a -bso0 -bb0 -p"$pass" -mhe=on -t7z $file.7z $file
            end
        case decrypt
            for file in $files
                7z x -bso0 $file.7z -o"$(path dirname $file)" -p"$pass" -aoa
            end
    end
end
