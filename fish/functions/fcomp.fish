function fcomp --wraps=command --argument-names cmd
    #echo2 $fish_complete_path
    for i in $fish_complete_path"/$cmd.fish"
        test -e $i && echo $i
    end
end
