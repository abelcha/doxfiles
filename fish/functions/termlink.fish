function termlink --argument-names uri
    printf '\e]8;;%s\a%s\e]8;;\a' "$argv[2..]" "$(string escape --style url  $uri)"
end
