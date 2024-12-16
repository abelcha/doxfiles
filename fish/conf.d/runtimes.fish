# echo "RUNTIMES"

# command bun run /opt/c/fish/runtime.ts init
function fish_runtime 
    fish_function_dir=$__fish_config_dir/functions command bun run /opt/c/fish/runtime.ts $argv
end