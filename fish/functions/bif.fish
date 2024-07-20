function bif
    bat "/tmp/info/$argv[1]"; or brew info $argv[1] | tee /tmp/info/$argv[1] | shiki --theme monokai
end
