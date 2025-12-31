function activate_local_uv
    if not test -d ".venv"
        uv venv
    end
    source ./.venv/bin/activate.fish
end
