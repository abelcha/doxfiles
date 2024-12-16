function cdown
    for file in $argv
        set destfile (echo $argv[1]|anon|string replace  '/me/' '/home/x/' )
        scp -r -p -C x@x.local:$destfile $file && echo $file
        echo $destfile | pbcopy
    end
end
