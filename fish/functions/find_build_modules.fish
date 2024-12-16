function find_build_modules --wraps=fd
    fds --full-path "(node_modules|packages*node_modules|target/debug|dist|build)\$" --max-depth 4 --no-ignore --prune -t d $argv
end
