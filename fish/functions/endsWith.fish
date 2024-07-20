function endsWith --argument str prefix
    #string match -qr "$str"\$ $prefix
    string match -q '*'$argv[2] $argv[1]
end
