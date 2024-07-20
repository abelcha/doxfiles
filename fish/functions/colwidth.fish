function colwidth
    stty size | awk { print \$2 }
end
