function parse_fish
    fish_indent --pygment $argv[1]|while read -l line
        set spl (string split , $line)
        echo $spl[1]-$spl[2]\t(string pad -r -w 20 $spl[-1]) "'$(bun --print "(await Bun.file('xz.fish').text()).slice($spl[1], $spl[2])")'"
    end
    
end
