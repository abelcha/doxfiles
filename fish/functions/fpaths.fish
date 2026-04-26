function fpaths
    fp=(string match -er 'dir|path' -- (set -g --names )) for l in $fp
        echo -n \n$$l
    end|path filter 
end
