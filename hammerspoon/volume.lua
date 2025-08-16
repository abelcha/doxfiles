
hs.hotkey.bind({}, 'f12', function()
    local script = [[
        set currentVolume to output volume of (get volume settings)
        set volume output volume (currentVolume + 10)
        if currentVolume >=90 then set currentVolume to 90

        return "Volume: " & (currentVolume + 10)
    ]]
    local _, result = hs.osascript.applescript(script)
    alert(result)
end)



hs.hotkey.bind({}, 'f11', function()
    local script = [[
        set currentVolume to output volume of (get volume settings)
        set volume output volume (currentVolume - 10)
        if currentVolume <=10 then set currentVolume to 10
        return "Volume: " & (currentVolume - 10)
    ]]
    local _, result = hs.osascript.applescript(script)
    -- hs.alert.closeAll()
    alert(result)
end)


-- hs.hotkey.bind({ "cmd"}, 'h', function()
--     hs.alert.show("⌘H")
-- end)


hs.hotkey.bind({}, 'f10', function()
    local script = [[
        set currentVolume to 10
        set volume output volume (currentVolume - 10)
        return "Volume: " & (currentVolume - 10)
    ]]
    local _, result = hs.osascript.applescript(script)
    -- hs.alert.closeAll()
    alert(result)
end)