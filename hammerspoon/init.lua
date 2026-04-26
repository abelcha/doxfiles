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