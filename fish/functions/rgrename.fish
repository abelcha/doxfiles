function rgrename
    for name in $argv[3..]
        echo mv $name (echo $name|ug "$argv[1]" -E --format="$argv[2]"  )
    end
end
