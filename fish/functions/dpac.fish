function dpac
    zipinfo -1 $argv[1] | rg BCP | jh --lines --map "e.split('/')[1]" --filter e | jh -l --count e
end
