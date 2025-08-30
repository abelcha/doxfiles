function last_download_file
    # (stat -f "%B"\t"%N"  /me/{Downloads,XDL,Documents}/* | psub -s .csv)
    echo (from2  (stat -f "%B"\t"%N"  /me/{Downloads,XDL,Documents}/* | psub -s tsv) --quiet SELECT column1 as path ORDER BY column0 DESC limit 1)[-1]
    #echo (from2 (stat -f "%B,%N"  /me/{Downloads,XDL,Documents}/* |psub -s .csv) --quiet SELECT column1 as path ORDER BY column0 DESC limit 1)[-1]
end
