function gclone
    #echo $argv
    #return
    begin
        set repo (parse_git_addr $argv)
        set platform $repo[1]
        set repowner "$repo[2]/$repo[3]"
        set cmd (commandline --tokens-raw )
        fset repo repowner cmd
        #set -S $i
        #end
        #echo --------
        #set --show cmd >/tmp/log.txt
        #echo -----------
        #hr
        begin
            if [ "$cmd[1]" = fsimrep ]
                echo $repowner
            else if test -z "$cmd[2]"
                echo gh repo clone $repowner "&&" cd $repo[-1]
            else if [ "$cmd[2]" = clone ]
                echo https://github.com/$repowner
            else
                echo $argv
            end
        end >&5
        #string replace --regex 'github.com/([^\/]+/[^\/]+)' 'github.com/$1' -- $argv[1]
        #set xx $argv
        #fset xx
    end 1>>/tmp/stdout.txt 2>>/tmp/stderr.txt 5>| /bin/cat
end
