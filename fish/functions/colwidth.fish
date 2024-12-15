function colwidth
    tput cols
    #stty size | awk { print \$2 }
end
