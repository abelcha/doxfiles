function _uv_run_list
    set -l cmd (commandline -opc )
    #fset cmd argv >>/tmp/logs2.txt
    #echo "> uv run $cmd[3..]" >>/tmp/logs2.txt
    set resp (string match -rg '^\- ([^\s]+)' -- (uv run $cmd[3..] 2>&- ) | string collect )
    #fset resp >>/tmp/logs2.txt
    echo $resp
end
