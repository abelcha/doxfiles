function delta
    if test -z "$argv"
        git diff | delta --side-by-side
    else
        command delta $argv
    end
end
