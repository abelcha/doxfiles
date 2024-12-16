function filenumber --argument file
    argparse -i n/next -- $argv
    set name (fd (path basename "$file")"(\.\d+)" (path dirname "$file") | sd '[^\d\n]' '' | usort --numeric-sort --reverse | head -n1 | string match -r '\d+')
    echo $name | § 0
    echo "x:$_flag_n"
    #test -z "$currentn"
    #echo "$file."(math "$currentn +1")
end
