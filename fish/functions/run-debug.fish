function run-debug --wraps='bun-debug run'
    BUN_DEBUG_QUIET_LOGS=1 bun-debug run $argv
end
