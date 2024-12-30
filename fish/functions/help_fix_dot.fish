function help_fix_dot
    command $argv  2>&1 | rg --passthru '^\s+-([a-z\-]+)(\n\s)?' --multiline-dotall -U -r '--$1'
end
