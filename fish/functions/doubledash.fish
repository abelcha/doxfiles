function doubledash
    rg "^\s+(\-\w{3,})" --passthru -r'-$1'
end
