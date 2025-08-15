function fish_prompt --description 'Write out the prompt'
    #return
    # set startime (gdate +%s%N) #% "(-$(gdate +%s%N) + $(sleep .3 && gdate +%s%N))/10^9"
    set -l last_pipestatus $pipestatus
    set -lx __fish_last_status $status # Export for __fish_print_pipestatus.
    set -l normal (set_color normal)
    set -q fish_color_status
    or set -g fish_color_status red
    
    # Color the prompt differently when we're root
    set -l color_cwd $fish_color_cwd
    set -l suffix ' ✝'
    if functions -q fish_is_root_user; and fish_is_root_user
        if set -q fish_color_cwd_root
            set color_cwd $fish_color_cwd_root
        end
        set suffix '#'
    end
    
    # Write pipestatus
    # If the status was carried over (if no command is issued or if `set` leaves the status untouched), don't bold it.
    set -l bold_flag --bold
    set -q __fish_prompt_status_generation; or set -g __fish_prompt_status_generation $status_generation
    if test $__fish_prompt_status_generation = $status_generation
        set bold_flag
    end
    set __fish_prompt_status_generation $status_generation
    set -l status_color (set_color $fish_color_status)
    set -l statusb_color (set_color $bold_flag $fish_color_status)
    set -l prompt_status (__fish_print_pipestatus "[" "]" "|" "$status_color" "$statusb_color" $last_pipestatus)
    #set -l fishvers (string sub -e 3 -- $FISH_VERSION)
    #echo -n -s (set_color brblack --background )(set_color white )"vcc$fishvers"(set_color --background brmagenta )
    set colx (switch $FISH_VERSION;case '*dirty'; echo brgreen; case '*';echo brmagenta; end)
    if test (tput cols) -gt 90
        echo -n -s (set_color  --reverse $colx ) " ✞ "(bkt --ttl=11m -- curl --silent  https://ip.me 2> /dev/null |grep -v mpty|sd .0.2.6.1.3.1.0 ::1)" ✞ "(bkt -- pmset -g batt |rg '\d+\%' --only-matching)" ⌁ "abel' '
    end
    set git_prompt (fish_vcs_prompt)
    if test (tput cols) -gt (math 60 + (string length -- "$git_prompt"))
        echo -n -s (set_color normal )(set_color $fish_color_cwd  ) (prompt_pwd ) $normal $git_prompt $normal | sd '~' /me | sd '/.*a[\w]{11}r' /me | sd .0.2.6.1.3.1.0 ::1
        echo -n -s " "$prompt_status
    end
    echo -n -s $suffix " "
    
    #if test (tput cols) -lt 75
    #echo '=====>'
    #end
    #fecho (% "( $(gdate +%s%N ) - $startime )/10^9")
end
