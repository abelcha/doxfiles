function complete_no_files
    begin
        echo yaaa
    end >> /tmp/comp.logs
    complete --command (__actual_cmd_token) --force-files
end
