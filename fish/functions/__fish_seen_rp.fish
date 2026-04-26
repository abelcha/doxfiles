function __fish_seen_rp
    #commandline -ct | string match -q '*:*' -xa
    #echo lol >>/tmp/logsb.fish
    #fexec string match -- "*/*" (commandline -t | string collect) &| tee -a /tmp/logsb.fix
    #fexec string match -- */* (commandline -t | string collect) &| tee -a /tmp/logsb.fix
    echo                     string match -- '*/*' "$(commandline -t | string collect)" >>/tmp/logs.txt
    string match -- '*/*' (commandline -t | string collect) >>/tmp/logs.txt
    string match -q -- '*/*' (commandline -t | string collect)
    #fexec string match -q -- "*/*" (commandline -t | string collect) 2>/tmp/logsb.fix
end
