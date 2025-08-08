function untrash --wraps='mv ~/.Trash/ ' --wraps='mv ~/.Trash/'
    mv ~/.Trash/$argv[1] .
end
