function slice
    set -l argcom (echo $argv | trim| sd '\s+' ','|sd ',+' ',')
    #echo 'aaa'$argcom'aaa'
    bun --print "(await Bun.stdin.text()).split('\n').filter(e => e).slice($argcom).join('\n');"
end
