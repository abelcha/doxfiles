function __fish_fake_subcommand
    set -l cmd (commandline -pxc)
    set -S cmd
    echo "|||$cmd|||" >> /tmp/logs.txt
    set -e cmd[1]
    for i in $cmd
        switch $i
            case '-*'
                continue
        end
        return 1
    end
    return 0
    
end
