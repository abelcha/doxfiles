function str_argopt
    string match -rai -- '^-.*' "$argv"; or return 1
end
