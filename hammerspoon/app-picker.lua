


local function pickAppBinding(fkey, cb)
    local app_chooser = hs.chooser.new(function(choice)
        if choice then
            return cb(choice.id)
        end
    end)

    local cobj = {}
    for _, w in ipairs(hs.window.orderedWindows()) do
        local rtn = {
            id = w:id()
        }
        local app = hs.application.get(w:application():bundleID())
        local text = w:title():len() > 0 and w:title() or nil
        local subText = app:name()

        if not text then
            rtn.text = subText
        else
            rtn.text = text
            rtn.subText = subText
        end
        if app then
            rtn.image = hs.image.imageFromAppBundle(app:bundleID())
        end
        table.insert(cobj, rtn)
    end
    app_chooser:choices(cobj):show()
end


local fmaps = {
    f4 = 0,
    f5 = 0,
    f6 = 0,
}

for fkey, value in pairs(fmaps) do
    hs.hotkey.bind({ "alt", "shift" }, fkey, function()
        local frontWindow = hs.window.frontmostWindow()
        local id = frontWindow:id()
        if id == fmaps[fkey] then
            fmaps[fkey] = 0
        else
            fmaps[fkey] = id
        end
    end)
    hs.hotkey.bind({ "alt" }, fkey, function()
        pickAppBinding(fkey, function(winID)
            fmaps[fkey] = winID
            local zwin = fmaps[fkey] and hs.window.get(fmaps[fkey])
            zwin:focus()
        end)
    end)
    hs.hotkey.bind({}, fkey, function()
        local xwin = fmaps[fkey] and hs.window.get(fmaps[fkey])
        if xwin then
            xwin:focus()
        else
            pickAppBinding(fkey, function(winID)
                fmaps[fkey] = winID
                local zwin = fmaps[fkey] and hs.window.get(fmaps[fkey])
                zwin:focus()
            end)
        end
    end)
end

for _, tuple in ipairs(fmaps) do
    local modifier = tuple[3] or {}
end



local gmaps = {
    x1 = 0,
    x2 = 0,
    x3 = 0,
    x4 = 0,
    x5 = 0,
}

for gkey, value in pairs(gmaps) do
    print('gmaps', gkey, value, gkey:sub(2))
    local key = gkey:sub(2)
    local fkey = 'f' .. key
    -- hs.hotkey.bind({ "alt", "cmd" }, key, function()
    --     local frontWindow = hs.window.frontmostWindow()
    --     local id = frontWindow:id()
    --     if id == gmaps[gkey] then
    --         gmaps[gkey] = 0
    --     else
    --         gmaps[gkey] = id
    --     end
    -- end)
    -- -- key is "3" or '4' ? "alt" else "cmd"
    -- local mod = key == "3" or key == "4" or key == "5" and { "cmd", "alt" } or { "cmd", "shift" }
    -- hs.hotkey.bind(mod, key, function()
    --     pickAppBinding(gkey, function(winID)
    --         gmaps[gkey] = winID
    --         local zwin = gmaps[gkey] and hs.window.get(gmaps[gkey])
    --         zwin:focus()
    --     end)
    -- end)
    hs.hotkey.bind({ "shift" }, fkey, function()
        local xwin = gmaps[fkey] and hs.window.get(gmaps[fkey])
        if xwin then
            xwin:focus()
        else
            pickAppBinding(fkey, function(winID)
                gmaps[fkey] = winID
                local zwin = gmaps[fkey] and hs.window.get(gmaps[fkey])
                zwin:focus()
            end)
        end
    end)
    if key ~= "1" then
        hs.hotkey.bind({ "cmd" }, key, function()
            local xwin = gmaps[gkey] and hs.window.get(gmaps[gkey])
            if xwin then
                xwin:focus()
            else
                pickAppBinding(gkey, function(winID)
                    gmaps[gkey] = winID
                    local zwin = gmaps[gkey] and hs.window.get(gmaps[gkey])
                    zwin:focus()
                end)
            end
        end)
    end
end
