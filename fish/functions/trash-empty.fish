function trash-empty
    if test -z "$(udir ~/.Trash/)"
        echo allready empty
        return
    end
    osascript -e 'tell app "Finder" to empty trash'
end
