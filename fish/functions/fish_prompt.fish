function fish_prompt
    if test -n "$SSH_TTY"
        echo -n (set_color brred)"$USER"(set_color white)'@'(set_color yellow)(prompt_hostname)' '
    end

    echo -n (set_color blue)(prompt_pwd)' '

    set_color -o
    if fish_is_root_user
        echo -n (set_color red)'# '
    end
    set termwidth (tput cols)
    set maxwidth 50
    if test $termwidth -lt $maxwidth
        # If true, put the prompt on the next line:
        echo ""
    end
    echo -n (set_color red)'❯'(set_color yellow)'❯'(set_color green)'❯ '

    set_color normal
end
