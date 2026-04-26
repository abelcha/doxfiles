function abr_fix_github
    set cmd (commandline --tokens-raw)
    begin
        set -S cmd
        echo =====$cmd========
        echo heeeere __"$argv"__
    end >>/tmp/gg.logs
    if string match -qr '(curl|wget|xh|x)' -- $cmd[1]
        string replace /blob/ /raw/ -- $argv
    else
        echo $argv
    end
end
