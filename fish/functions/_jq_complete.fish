function _jq_complete
    if string match -q "*yaml*" (commandline -b)
        set -x JQ_REPL_JQ "gojq --yaml-input"
        set -x JQ_REPL_ARGS --yaml-output
    end
    set -l query (__get_query)
    set -l result $status
    test -z "$JQ_REPL_JQ"; and set -l JQ_REPL_JQ jq
    if test -n "$query"
        set -l LBUFFER (__lbuffer_strip_trailing_pipe) " | $JQ_REPL_JQ"
        test -z "$JQ_REPL_ARGS"; or set -la LBUFFER $JQ_REPL_ARGS
        set -l LBUFFER "$LBUFFER '$query'"
        commandline -r "$LBUFFER"
    end
    commandline -f repaint
    return $result
end
