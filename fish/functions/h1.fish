function h1
    set -l fullen (colwidth)
    set -l title " $argv "
    set -l titlen (string length $title)
    set -l padlen (expr \( $fullen - $titlen \) / 2  - 2 )
    set -l lr_coeff 10
    set -l padleft (expr $padlen / $lr_coeff)
    set -l padright (expr $padlen + $padlen - $padleft)
    #fset padleft padright
    #echo $padlen
    echo ""(string repeat -n $padleft '#') (set_color cyan ) $title (set_color normal ) (string repeat -n $padright '#')
    # set leftpad ("")
end
