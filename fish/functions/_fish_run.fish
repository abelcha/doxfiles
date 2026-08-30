function _fish_run --description 'Run a script with the runtime for its extension' --no-scope-shadowing
    set -l script $argv[1]
    switch $script
        case '*.py'
            uv run --env-file ~/.config/.secrets --script $script $argv[2..]
        case '*.ts' '*.tsx' '*.js' '*.jsx'
            bun run --env-file ~/.config/.secrets $script $argv[2..]
        case '*.swift'
            swift $script $argv[2..]
        case '*'
            if test -x "$script"
                $script $argv[2]
            else
                echo "_fish_run: no runtime for $script" >&2
                return 127
            end
    end
end
