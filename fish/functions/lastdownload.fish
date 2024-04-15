
function lastdownload
    find ~/Downloads -maxdepth 1 -type f -print0 | xargs -0 ls -t1 | head -1
end
