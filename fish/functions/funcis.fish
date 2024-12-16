function funcis --wraps='funced -is'
    if not functions -q $argv[1]; and command -q $argv[1]
        set source (which $argv[1])
        echo "source:::"$source
        if rg -q -w "ASCII|script text" (file $source|psub)
            hx $source
            #return
        end
    else if command -q $argv[1]; and not functions -q "$argv[1]"
        echo "Command exists already `$(which $argv[1])`"
    else
        funced -is $argv
    end
end
