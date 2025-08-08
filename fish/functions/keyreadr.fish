function keyreadr --wraps='fish_key_reader -c' --description 'alias keyreadr fish_key_reader -c'
    fish_key_reader | read -a response
    set typedkey $response[2]
    set presetbd (bind --preset $typedkey 2> /dev/null )
    #set userbd (bind --user $typedkey 2> /dev/null )
    echo $presetbd
    set inputbd (bind --user $typedkey |§ $presetbd | string replace -r -- '--\w+' '')
    test -z "$inputbd" && set inputbd "bind $typedkey"
    read --shell --command $inputbd inputdef
    fset response typedkey inputbd inputdef
    
end
