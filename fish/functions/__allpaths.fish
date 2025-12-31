function __allpaths
    allp=(env|rg -i '(path|dir)\=(.+)' -or '$2'|string join :  |string split : ) sort -u $allp 2>&-
end
