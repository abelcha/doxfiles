
function unpack --wraps='tar -zxvf ' --description 'alias unpack tar -zxvf '
# if filename endswith .aar:
    if string match -q '*.aar' $argv
        aarpack x --rm $argv
    else
        unar $argv
end
end
