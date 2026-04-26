function parse_git_addr
    string match --groups-only --regex '(github|gitlab)\.com\/([^\/]+)\/([^\/]+?)\/?(?:\.git)?$' -- "$argv"
end
