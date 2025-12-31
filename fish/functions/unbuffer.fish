function unbuffer
    script -q /dev/null fish -c (esc $argv)
end
