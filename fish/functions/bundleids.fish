function bundleids
    osascript -e 'tell application "System Events" to get bundle identifier of every process whose background only is false'
end
