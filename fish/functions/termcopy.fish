function termcopy --argument-names uri
    printf '\e]8;;%s\a%s\e]8;;\a' "$argv[2..]" "copy://$(string escape --style url  $uri)"
end
