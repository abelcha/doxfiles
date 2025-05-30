complete -c colortail -s f -l follow -d 'output appended data as the file grows'
complete -c colortail -s h -l help -d 'display this help and exit'
complete -c colortail -s k -l config -d "color config files for the tail files. If only one config file it's global otherwise one config file for each tail file"
complete -c colortail -s n -l lines -d 'output the last N lines, instead of last 10'
complete -c colortail -s q -l quiet -d 'never output headers giving file names'
complete -c colortail -n __fish_no_arguments -s v -l version -d 'output version information and exit'
