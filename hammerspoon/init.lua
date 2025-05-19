GCodeEditorsEnum = {
    "com.exafunction.windsurf", "com.vscodium.VSCodiumInsiders", "com.vscodium", "com.microsoft.VSCodeInsiders",
    "io.lapce", "com.microsoft.VSCode", "dev.zed.Zed", "com.todesktop.230313mzl4w4u92",
}
GBrowserEnum = {
    "com.brave.Browser", "com.kagi.kagimacOS", "com.apple.Safari",
    "org.chromium.Chromium", "com.google.Chrome.canary", "com.google.Chrome.dev", "com.google.Chrome.dev",
    "com.google.Chrome", "company.thebrowser.Browser", "org.mozilla.firefox", "org.chromium.Thorium",
    "com.sigmaos.sigmaos.macos", "com.microsoft.edgemac", "com.apple.SafariTechnologyPreview",
    "com.duckduckgo.macos.browser", "org.torproject.torbrowser",
}
local function log(...)
    local args = { ... }
    local str = ""
    for i, v in ipairs(args) do
        if type(v) == "table" then
            str = str .. hs.inspect(v)
        else
            str = str .. tostring(v)
        end
    end
    print(str)
end


local startTS = hs.timer.secondsSinceEpoch()
-- Initialize hammerspoon modules
hs.loadSpoon('EmmyLua')

if not hs then
    hs = require("hs")
end

-- Load window-switcher.lua from the same directory
pcall(function()
    dofile("/me/config/hammerspoon/window-switcher.lua")
    dofile("/me/config/hammerspoon/volume.lua")
    dofile("/me/config/hammerspoon/app-picker.lua")
end)



local function logTime(text)
    local endTS = hs.timer.secondsSinceEpoch()
    local diff = endTS - startTS
    local rounded = math.floor(diff * 100) / 100
    print("[time] " .. rounded .. " - " .. text)
end
-- hs.styledtext


local function alert(text, seconds, options)
    options = options or {}
    seconds = seconds or .15
    options.textSize = options.textSize or 20
    options.padding = 5
    options.radius = options.radius or 12
    options.fillColor = options.fillColor or { 0, 0, 0, 0.5 }
    options.strokeColor = options.strokeColor or { 1, 1, 1, 1 }
    options.margin = options.margin or 10
    options.topMargin = options.topMargin or 10
    options.strokeWidth = options.strokeWidth or 10

    options.atScreenEdge = options.atScreenEdge or 2
    options.screen = options.screen or hs.screen.mainScreen()
    hs.alert.show(text, options, seconds)
end


alert("Loading Hammerspoon config...", 5)
hs.console.clearConsole()
hs.console.consolePrintColor(hs.drawing.color.white)
-- watch for changes int ~/.hammerspoon/init.lua:
local function reloadIfRelevant(files)
    for _, file in ipairs(files) do
        local fname = file:match("([^/]+)$")
        if fname == "app-picker.lua" or fname == "init.lua" or fname == "window-switcher.lua" then
            hs.reload()
            return
        end
    end
end

local myWatcher = hs.pathwatcher.new("/me/config/hammerspoon/", reloadIfRelevant):start()



-- log(hs.drawing.color)

hs.hotkey.bind({ "cmd", "option" }, ",", function()
    hs.application.open("System Preferences")
end)

hs.hotkey.bind({ "cmd", "shift" }, ",", function()
    hs.application.open("System Preferences")
end)


hs.hotkey.bind({ "cmd" }, "h", function()
    -- alert("hide", 2)
    hs.eventtap.keyStroke({}, "F13")
end)
hs.hotkey.bind({ "cmd" }, "m", function()
    -- alert("minimize", 2)
    hs.eventtap.keyStroke({ }, "F14")
end)


hs.hotkey.bind({ "cmd", "shift" }, "P", function()
    local focusedBundleID = hs.application.frontmostApplication():bundleID()
    if hs.fnutils.contains(GCodeEditorsEnum, focusedBundleID) then
        print("f1111")
        hs.eventtap.keyStroke({}, "F1")
        return
    else
        print("matche")
        hs.eventtap.keyStroke({ "control", "shift" }, "P")
    end
end)

hs.hotkey.bind({ "cmd", "ctrl" }, "n", function()
    hs.alert.show("open note")
    local appleScript = [[
        tell application "Notes"
            show note "Projects"
        end tell
        ]]
    hs.osascript.applescript(appleScript)
end)


-- copying terminal text
hs.hotkey.bind({ "cmd", "shift" }, "c", function()
    print('copying terminal text')
    -- Trigger the normal copy
    hs.eventtap.keyStroke({ "cmd" }, "c")
    -- After copy, clean up the clipboard
    hs.timer.doAfter(0.1, function()
        local txt = hs.pasteboard.getContents() or ""
        print('cleaning up the clipboard', txt)
        -- Remove leading spaces, digits, whitespace, “│” and following space
        local cleaned = txt:gsub("%s*%d+%s+│%s", "\n")
        hs.pasteboard.setContents(cleaned)
        hs.alert.show("Clipboard cleaned")
    end)
end)


-- -- bind cmd-f1 to send real f1 macos
-- hs.hotkey.bind({ "cmd" }, "f5", function()
--     hs.eventtap.keyStroke({}, "f5")
-- end)

hs.hotkey.bind({}, "F3", function()
    local iterm = hs.application.find("iTerm2")
    if iterm then
        iterm:activate()
    else
        hs.application.launchOrFocus("iTerm2")
    end
end)

-- -- on ctrl-g toggle hs console allways on top
local isOnTop = false
hs.hotkey.bind({ "ctrl" }, "g", function()
    isOnTop = not isOnTop
    hs.consoleOnTop(isOnTop)
    if isOnTop then
        hs.console.alpha(0.7)
    end
end)

hs.hotkey.bind({ "alt" }, "`", function()
    hs.eventtap.keyStroke({}, "^")
end)

-- on ctrl-g toggle hs console allways on top
hs.hotkey.bind({ "ctrl" }, "j", function()
    local focused = hs.application.frontmostApplication()
    local oas2 = [[
        tell application "System Events"
        tell process "Simulator"
            set frontmost to true
            click menu item "Stay On Top" of menu "Window" of menu bar 1
            set hide to true
        end tell
    end tell
    ]]
    local rtn, result, descritor = hs.osascript.applescript(oas2) -- if wasFrontMost then
    focused:activate()
end)


-- log("Done loading config", tsDiff(startTS), "ms")

logTime("691")



-- set timeout close all alerts
hs.timer.doAfter(0.3, function()
    hs.alert.closeAll()
end)
