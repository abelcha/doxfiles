# Alias every non-fish script in functions/ to _fish_run, which owns the
# extension -> runtime mapping. Unknown extensions fail there, not here.
for script in ~/.config/fish/functions/*.{py,ts,tsx,js,jsx,baml,swift} ~/.config/fish/functions/*/index.{py,ts,tsx,js,jsx,baml,swift}
    alias (path basename $script --no-extension) "_fish_run $script"

end
