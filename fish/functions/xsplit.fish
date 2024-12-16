function xsplit --wraps=usplit --argument filename
    set -l dotspl (string split '.' $argv[1])
    set -l prefix $dotspl[1..-2]
    set -l suffix $dotspl[-1]
    set -l args $argv[2..]
    set -l cmd "usplit '$filename' '$prefix' --additional-suffix='.$suffix' --numeric-suffixes --verbose $args"
    echo $cmd
    eval $cmd
    #command usplit (echo $cmd)
end
