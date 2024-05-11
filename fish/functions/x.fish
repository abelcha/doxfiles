function x --wraps=xh

    # xh -b --follow $argv 2>/dev/null
    # if test $status -ne 200
    xh --follow $argv
    # end
end
