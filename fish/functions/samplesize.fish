function samplesize
    bun --print "(await Bun.stdin.text()).split('\n').filter(e => e).reverse().sort(() => Math.random()).slice(0, $argv[1]).join('\n');"
end
