function fdc --wraps=fd
    unbuffer fd $argv | unl
end
