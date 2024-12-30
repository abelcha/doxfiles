function last_download_file
    echo (from2 (stat -f "%B,%N"  /me/{Downloads,XDL,Documents}/* |psub -s .csv) --quiet SELECT column1 as path ORDER BY column0 DESC limit 1)[-1]
end
