function cup
    for file in $argv
        set destfile (echo $argv[1]|string replace  '/me/' '/home/x/' )
        scp -r -p -C $file x@x.local:$destfile && echo $destfile
        echo $destfile | pbcopy
    end
end
