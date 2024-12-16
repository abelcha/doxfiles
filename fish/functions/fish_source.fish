function fish_source
    rg '(export\s)?(\w+)=(.+)' -r 'set --$1 $2 $3'
end
