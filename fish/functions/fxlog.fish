function fxlog
    set arg (string escape --style script -- $argv)
    echo (set_color green )(isodatetime)(set_color blue)' > '"$(set_color white --dim )$arg$(set_color normal)" >>/tmp/fx.log
    eval $arg
end
