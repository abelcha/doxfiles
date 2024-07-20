function fs --wraps='fish_trace=3 fish --no-config' --description 'alias fx=fish_trace=3 fish --no-config'
    fish_trace=3 fish --no-config $argv

end
