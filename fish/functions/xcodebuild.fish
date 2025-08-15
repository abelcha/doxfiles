function xcodebuild
    command xcodebuild $argv | xcbeautify
    #return
    #if isatty stdin
    #command xcodebuild $argv | xcbeautify
    #else
    #command xcodebuild $argv
    #end
end
