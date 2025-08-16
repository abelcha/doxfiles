function log(...)
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

function alert(text, seconds, options)
    options = options or {}
    seconds = seconds or .4
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

local startTS = hs.timer.secondsSinceEpoch()
-- Initialize hammerspoon modules
-- hs.loadSpoon('EmmyLua')
-- hs.closeConsole()

-- if not hs then
--     hs = require("hs")
-- end

-- Load window-switcher.lua from the same directory
pcall(function()
    -- dofile("/me/config/hammerspoon/window-switcher.lua")
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

alert("Loading Hammerspoon config...", 5)
hs.console.clearConsole()
hs.console.consolePrintColor(hs.drawing.color.white)
-- watch for changes int ~/.hammerspoon/init.lua:
-- local function reloadIfRelevant(files)
--     hs.reload()
--     for _, file in ipairs(files) do
--         local fname = file:match("([^/]+)$")
--         if fname == "app-picker.lua" or fname == "init.lua" or fname == "window-switcher.lua" then
--             -- hs.reload()
--             return
--         end
--     end
-- end
local function cleanReload()
    -- clean up the console
    hs.console.clearConsole()
    hs.console.consolePrintColor(hs.drawing.color.white)
    -- reload the config
    hs.reload()
end

local myWatcher = hs.pathwatcher.new("/me/config/hammerspoon/", cleanReload):start()

hs.hotkey.bind({ "cmd", "option" }, ",", function()
    hs.application.open("System Preferences")
end)

hs.hotkey.bind({ "cmd", "shift" }, ",", function()
    hs.application.open("System Preferences")
end)

hs.hotkey.bind({ "control" }, "left", function()
    print('okokok')
    alert("left", 2)
    -- hs.eventtap.keyStroke({}, "F15")
end)
hs.hotkey.bind({ "cmd" }, "h", function()
    -- alert("hide", 2)
    hs.eventtap.keyStroke({}, "F13")
end)
hs.hotkey.bind({ "cmd" }, "m", function()
    -- alert("minimize", 2)
    hs.eventtap.keyStroke({}, "F14")
end)

hs.hotkey.bind({ "alt", "shift" }, "r", function()
    -- open hammerspoon config:
    alert("Reloading...", 0.5)
    -- sleep
    hs.timer.doAfter(.5, hs.reload)
end)

hs.hotkey.bind({ "alt", "shift" }, "o", function()
    -- open hammerspoon config:
    alert("Opening Hammerspoon Config", 0.5)
    local cmd = 'code /me/config/hammerspoon'
    local output, status, type, rc = hs.execute(cmd, true)
end)

hs.hotkey.bind({ "alt", "shift" }, "P", function()
    hs.eventtap.keyStroke({}, "F1")
end)

hs.hotkey.bind({ "alt", "shift" }, "A", function()
    -- alert available disk space for physical SSDs:
    local cmd = [[
    diskutil list | grep -E '^/dev/disk[0-9]+$' | while read disk; do
        # Get disk info to check if it's a physical disk
        disk_info=$(diskutil info "$disk" 2>/dev/null)
        if echo "$disk_info" | grep -q "Solid State"; then
            disk_name=$(echo "$disk_info" | grep "Device / Media Name" | cut -d: -f2 | xargs)
            # Find the main partition (usually s1 or s2)
            main_partition=$(diskutil list "$disk" | grep -E 'Apple_APFS|Apple_HFS' | head -1 | awk '{print $NF}')
            if [ ! -z "$main_partition" ]; then
                echo "=== $disk_name ==="
                diskutil info "$main_partition" | rg '.+Space\:[^\(]+' --only-matching
                echo ""
            fi
        fi
    done
    ]]
    local output, status, type, rc = hs.execute(cmd, true)
    
    -- Fallback: show main mounted volumes if primary command fails
    if not output or output == "" then
        local fallback_cmd = [[
        df -h | grep -E '^/dev/disk[0-9]+s[0-9]+' | grep -E '/$|/Volumes/' | awk '{print $9 ": " $4 " free (" $2 " total)"}'
        ]]
        output, status, type, rc = hs.execute(fallback_cmd, true)
    end
    
    alert(output, 5)  -- Show for 5 seconds
end)


GCodeEditorsEnum = { "com.microsoft.VSCode", "com.vscodium", "io.lapce", "com.voidspace", "com.trae.appspace",
    "com.trae.app",
    "com.exafunction.windsurfspace", "com.vscodium.VSCodiumInsidersspace", "com.vscodiumspace",
    "com.microsoft.VSCodeInsidersspace", "io.lapcespace", "com.microsoft.VSCodespace"
}

hs.hotkey.bind({ "cmd", "shift" }, "P", function()
    local focusedBundleID = hs.application.frontmostApplication():bundleID()
    print("focusedBundleID", focusedBundleID)
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
        local cleaned = txt:gsub("%s*%d+%s+│%s", "\n"):gsub("%s*+", "\n")
        hs.pasteboard.setContents(cleaned)
        hs.alert.show("Clipboard cleaned")
    end)
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
local function insert_char(char)
    local savedClipboard = hs.pasteboard.getContents()
    hs.pasteboard.setContents(char)
    hs.eventtap.keyStroke({ "cmd" }, "v")
    hs.timer.doAfter(0.1, function()
        hs.pasteboard.setContents(savedClipboard)
    end)
end

hs.hotkey.bind({ "alt" }, "`", function()
    hs.eventtap.keyStroke({}, "^")
end)

hs.hotkey.bind({ "alt" }, "e", function()
    insert_char("Σ")
end)
hs.hotkey.bind({ "alt" }, "k", function()
    insert_char("Σ")
end)

hs.hotkey.bind({"cmd", 'alt'}, "R", function()
    alert('red')
    local script = [[
    tell application "Finder"
        set selectedItems to selection
        repeat with anItem in selectedItems
            if label index of anItem is 2 then
                set label index of anItem to 0
            else
                set label index of anItem to 2
            end if
        end repeat
    end tell
    ]]
    hs.osascript.applescript(script)
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

hs.hotkey.bind({ "cmd" }, '1', function()
    -- focus on com.openai.chat whindow:
    local app = hs.application.get("com.openai.chat")
    if app then
        app:activate()
    else
        hs.application.launchOrFocus("OpenAI Chat")
    end
end)

hs.hotkey.bind({ "alt", 'shift' }, "B", function()
    hs.screen.setInvertedPolarity(not hs.screen.getInvertedPolarity())
end)

hs.timer.doAfter(0.9, function()
    hs.alert.closeAll()
end)

function runCommandAsync(cmd)
    hs.task.new("/bin/bash", nil, function(task, stdOut, stdErr)
        if stdOut and #stdOut > 0 then
            print("Output: " .. stdOut)
        end
        if stdErr and #stdErr > 0 then
            print("Error: " .. stdErr)
        end
        return true
    end, { "-c", cmd }):start()
end

-- runCommandAsync("/opt/bin/keyshift")
