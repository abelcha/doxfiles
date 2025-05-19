
local logger = hs.logger.new('WindowSwitcher', 'info')

local function isAppFromList(app, appList)
    if not app then
        logger.i("isAppFromList: app is nil")
        return false
    end
    local bundleID = app:bundleID()
    if not bundleID then
        logger.i("isAppFromList: bundleID is nil for app: " .. app:title())
        return false
    end
    logger.i("isAppFromList: Checking bundleID: " .. bundleID)
    for _, id in ipairs(appList) do
        if bundleID == id then
            logger.i("isAppFromList: Match found: " .. bundleID)
            return true
        end
    end
    logger.i("isAppFromList: No match for: " .. bundleID)
    return false
end

-- Helper to get the IDs of the two frontmost windows of a given type
local function getFrontmostTwoIDs(appEnum, typeName)
    logger.i("getFrontmostTwoIDs: Called for " .. typeName)
    local ids = {}
    local ordered = hs.window.orderedWindows()
    for i, win in ipairs(ordered) do
        logger.i("getFrontmostTwoIDs: Checking window " .. i .. ": " .. (win:title() or "Untitled") .. " (App: " .. (win:application() and win:application():name() or "N/A") .. ")")
        if win:isStandard() and win:isVisible() and isAppFromList(win:application(), appEnum) then
            logger.i("getFrontmostTwoIDs: Found matching " .. typeName .. " window: " .. win:title() .. " (ID: " .. win:id() .. ")")
            table.insert(ids, win:id())
            if #ids >= 2 then
                break
            end
        end
    end
    logger.i("getFrontmostTwoIDs: Found IDs for " .. typeName .. ": " .. hs.inspect(ids))
    return ids
end

-- F1: Toggle between the last two browser windows
hs.hotkey.bind({}, "F1", function()
    logger.i("F1 pressed: Toggling browser windows")
    local browserIDs = getFrontmostTwoIDs(GBrowserEnum, "Browser")
    local currentWindow = hs.window.focusedWindow()
    local targetID = nil

    if currentWindow then
        logger.i("F1: Current focused window: " .. (currentWindow:title() or "Untitled") .. " (ID: " .. currentWindow:id() .. ")")
    else
        logger.i("F1: No window currently focused")
    end

    if #browserIDs == 0 then
        logger.i("F1: No browser windows found")
        hs.alert.show("No browser windows found")
        return
    end

    if #browserIDs == 1 then
        logger.i("F1: Only one browser window found (ID: " .. browserIDs[1] .. "). Focusing it.")
        local win = hs.window.get(browserIDs[1])
        if win then win:focus() else hs.alert.show("Browser window not found") end
        return
    end

    -- We have at least two browser IDs
    if currentWindow and browserIDs[1] and currentWindow:id() == browserIDs[1] then
        targetID = browserIDs[2] -- Current is frontmost, target second
        logger.i("F1: Current is frontmost browser. Targeting second (ID: " .. targetID .. ")")
    else
        targetID = browserIDs[1] -- Current is not frontmost (or not a browser), target frontmost
        logger.i("F1: Current is not frontmost browser or not a browser. Targeting frontmost (ID: " .. targetID .. ")")
    end

    if targetID then
        logger.i("F1: Attempting to focus target ID: " .. targetID)
        local winToFocus = hs.window.get(targetID)
        if winToFocus then
            winToFocus:focus()
            logger.i("F1: Successfully focused window ID: " .. targetID)
        -- If target window disappeared, try focusing the primary one from the list if it still exists
        elseif browserIDs[1] then
             logger.i("F1: Target window (ID: " .. targetID .. ") not found. Attempting fallback to ID: " .. browserIDs[1])
             local fallbackWin = hs.window.get(browserIDs[1])
             if fallbackWin then fallbackWin:focus(); logger.i("F1: Successfully focused fallback window ID: " .. browserIDs[1]) else hs.alert.show("Fallback browser window not found"); logger.i("F1: Fallback browser window not found") end
        else
            hs.alert.show("Target browser window not found")
            logger.i("F1: Target browser window (ID: " .. targetID .. ") and fallback not found.")
        end
    else
        logger.i("F1: No targetID determined.")
    end
end)

-- F2: Toggle between the last two code editor windows
hs.hotkey.bind({}, "F2", function()
    logger.i("F2 pressed: Toggling code editor windows")
    local editorIDs = getFrontmostTwoIDs(GCodeEditorsEnum, "Code Editor")
    local currentWindow = hs.window.focusedWindow()
    local targetID = nil

    if currentWindow then
        logger.i("F2: Current focused window: " .. (currentWindow:title() or "Untitled") .. " (ID: " .. currentWindow:id() .. ")")
    else
        logger.i("F2: No window currently focused")
    end

    if #editorIDs == 0 then
        logger.i("F2: No code editor windows found")
        hs.alert.show("No code editor windows found")
        return
    end

    if #editorIDs == 1 then
        logger.i("F2: Only one code editor window found (ID: " .. editorIDs[1] .. "). Focusing it.")
        local win = hs.window.get(editorIDs[1])
        if win then win:focus() else hs.alert.show("Editor window not found") end
        return
    end

    if currentWindow and editorIDs[1] and currentWindow:id() == editorIDs[1] then
        targetID = editorIDs[2]
        logger.i("F2: Current is frontmost editor. Targeting second (ID: " .. targetID .. ")")
    else
        targetID = editorIDs[1]
        logger.i("F2: Current is not frontmost editor or not an editor. Targeting frontmost (ID: " .. targetID .. ")")
    end

    if targetID then
        logger.i("F2: Attempting to focus target ID: " .. targetID)
        local winToFocus = hs.window.get(targetID)
        if winToFocus then
            winToFocus:focus()
            logger.i("F2: Successfully focused window ID: " .. targetID)
        elseif editorIDs[1] then
             logger.i("F2: Target window (ID: " .. targetID .. ") not found. Attempting fallback to ID: " .. editorIDs[1])
             local fallbackWin = hs.window.get(editorIDs[1])
             if fallbackWin then fallbackWin:focus(); logger.i("F2: Successfully focused fallback window ID: " .. editorIDs[1]) else hs.alert.show("Fallback editor window not found"); logger.i("F2: Fallback editor window not found") end
        else
            hs.alert.show("Target editor window not found")
            logger.i("F2: Target editor window (ID: " .. targetID .. ") and fallback not found.")
        end
    else
        logger.i("F2: No targetID determined.")
    end
end)

-- Helper function to cycle windows (for Cmd+F1, Cmd+F2)
local function cycleWindows(appList, forward, typeName)
    logger.i("cycleWindows: Called for " .. typeName .. " - forward: " .. tostring(forward))
    local allAppWindows = {} 
    for _, win in ipairs(hs.window.allWindows()) do -- Get all windows, not just ordered, to ensure we find all instances
        if win:isStandard() and win:isVisible() and isAppFromList(win:application(), appList) then
            table.insert(allAppWindows, win)
        end
    end

    logger.i("cycleWindows: Found " .. #allAppWindows .. " " .. typeName .. " windows initially: " .. hs.inspect(allAppWindows))

    if #allAppWindows == 0 then
        logger.i("cycleWindows: No matching " .. typeName .. " windows found")
        hs.alert.show("No matching " .. typeName .. " windows found")
        return
    end

    -- Sort windows by ID for stable cycling order
    table.sort(allAppWindows, function(a,b) return a:id() < b:id() end)
    logger.i("cycleWindows: Sorted " .. #allAppWindows .. " " .. typeName .. " windows by ID: " .. hs.inspect(allAppWindows))

    if #allAppWindows == 1 then
        logger.i("cycleWindows: Only one " .. typeName .. " window. Focusing it: " .. (allAppWindows[1]:title() or "Untitled"))
        allAppWindows[1]:focus()
        return
    end

    local currentFocusedWindow = hs.window.focusedWindow()
    local currentIndex = -1

    if currentFocusedWindow then
        logger.i("cycleWindows: Current focused window: " .. (currentFocusedWindow:title() or "Untitled") .. " (ID: " .. currentFocusedWindow:id() .. ")")
        for i, win in ipairs(allAppWindows) do
            if win:id() == currentFocusedWindow:id() then
                currentIndex = i
                logger.i("cycleWindows: Current focused window is a " .. typeName .. " at sorted index: " .. currentIndex)
                break
            end
        end
    else
        logger.i("cycleWindows: No window currently focused")
    end
    
    local nextIndex
    if forward then -- Cycle forward
        if currentIndex == -1 then -- No matching window currently focused, or current is not of type
            nextIndex = 1 -- Start from the first window in the sorted list
            logger.i("cycleWindows: No " .. typeName .. " focused or current not of type. Targeting first " .. typeName .. " in sorted list (index " .. nextIndex .. ")")
        else
            nextIndex = (currentIndex % #allAppWindows) + 1 -- Cycle: 1->2, ..., N->1
            logger.i("cycleWindows: Cycling forward. Current sorted index: " .. currentIndex .. ", Next sorted index: " .. nextIndex)
        end
    else -- Cycle backward
        if currentIndex == -1 then
            nextIndex = #allAppWindows -- Start from the last window in the sorted list
            logger.i("cycleWindows: No " .. typeName .. " focused. Targeting last " .. typeName .. " in sorted list (index " .. nextIndex .. ")")
        else
            nextIndex = currentIndex - 1
            if nextIndex < 1 then
                nextIndex = #allAppWindows -- Cycle: 1->N
            end
            logger.i("cycleWindows: Cycling backward. Current sorted index: " .. currentIndex .. ", Next sorted index: " .. nextIndex)
        end
    end
    
    if allAppWindows[nextIndex] then
        logger.i("cycleWindows: Attempting to focus " .. typeName .. " window (from sorted list): " .. (allAppWindows[nextIndex]:title() or "Untitled") .. " (ID: " .. allAppWindows[nextIndex]:id() .. ", sorted index " .. nextIndex .. ")")
        allAppWindows[nextIndex]:focus()
    else
        logger.i("cycleWindows: Next " .. typeName .. " window for cycling (from sorted list, index " .. nextIndex .. ") not found")
        hs.alert.show("Next " .. typeName .. " window for cycling not found")
    end
end


-- Cmd+F1: Cycle through all browser windows
hs.hotkey.bind({"cmd"}, "F1", function()
    logger.i("Cmd+F1 pressed: Cycling browser windows")
    cycleWindows(GBrowserEnum, true, "Browser")
end)

-- Cmd+F2: Cycle through all code editor windows
hs.hotkey.bind({"cmd"}, "F2", function()
    logger.i("Cmd+F2 pressed: Cycling code editor windows")
    cycleWindows(GCodeEditorsEnum, true, "Code Editor")
end)