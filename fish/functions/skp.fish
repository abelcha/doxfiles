function skp --wraps=sk
    set -l results (bfs $argv[1] |sk $SKP_OPTIONS $argv[2..])

    # if test -z "$results"
    #     commandline -f repaint
    #     return
    # else
    #     commandline -t ""
    # end
    commandline_insert $results

    # for result in $results
    #     commandline -it -- (string escape $result)
    #     commandline -it -- " "
    # end
    # commandline -f repaint
    # echo -e skp
end
