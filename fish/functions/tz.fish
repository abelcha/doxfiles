function tz
    zstd --rm $argv[1] -o (echo $argv[1]|sd '\.txt' '')'.tzt'
end
