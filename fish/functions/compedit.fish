function compedit --argument cmd
    set -l p (compath $cmd)



    if test (count $p) -eq 1
        command $EDITOR $p
    else if test (count $p) -eq 0
        command $EDITOR "~/config/fish/completions/$cmd.fish"
    else
        command $EDITOR (compath $cmd|skp)
    end
end
