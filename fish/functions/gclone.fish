function gclone
    #echo $argv
    #return
    set repo (string match --groups-only --regex 'github\.com\/([^\/]+)\/([^\/]+?)(?:\.git)?$'  -- "$argv")
    set repowner "$repo[1]/$repo[2]"
    set cmd (commandline --tokens-raw )
    #echo --------
    #set --show cmd
    #echo -----------
    if [ "$cmd[1]" = fsimrep ]
        echo $repowner
    else if test -z "$cmd[2]"
        echo gh repo clone $repowner "&&" cd $repo[-1]
    else if [ "$cmd[2]" = clone ]
        echo https://github.com/$repowner
    else
        echo $argv
    end
    
    #string replace --regex 'github.com/([^\/]+/[^\/]+)' 'github.com/$1' -- $argv[1]
    #set xx $argv
    #fset xx
end
