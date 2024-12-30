function h1
    set -l fullen (colwidth)
    set -l title " $argv "
    set -l titlen (string length $title)
    set -l padlen (expr \( $fullen - $titlen \) / 2  - 1 )
    #echo $padlen
    echo (string repeat -n $padlen '#') $title (string repeat -n $padlen '#')
    # set leftpad ("")
end
