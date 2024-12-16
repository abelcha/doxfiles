function 7ll
    7z l $argv[1] | read -z resp #) #|  echo xx (ug --max-count=1 --format='%n' --  "----------------------"  )
    #echo $resp
    set tablePos (echo $resp|ug --max-count=1 --format='%n' --  "----------------------")
    echo $resp | utail -n +(% "$tablePos ") | parse_sizes #|  # shiki -l html-derivative
    #echo $tablePos
end
