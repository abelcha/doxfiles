function pp --wraps=command
    status current-function
    set -l resp (pueue add -- $argv)
    set -l id (echo $resp| rg "\(id (\d+)\)" -or '$1')
    pueue follow $id
end
