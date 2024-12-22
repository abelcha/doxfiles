function lnswap --argument-names link
    if not test -L "$link"
        echo "Usage: ldswap <symlink>"
        return 1
    end
    set -l target (readlink $link)
    trash $link
    mv $target $link
    ln -sfn $link $target
end
