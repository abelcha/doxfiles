function __runtime_bun
    echo bun --eval "console.log([`$argv`][0] && process.exit(0) ||process.exit(1))"
    bun --eval "console.log([`$argv`][0] && process.exit(0) ||process.exit(1))"
end
