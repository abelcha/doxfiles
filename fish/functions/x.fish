function x --wraps=xh
    xh -b --follow $argv 2>/dev/null
    if test $status -ne 200
        xh -h -b --follow $argv
    end
end
