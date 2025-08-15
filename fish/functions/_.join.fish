function _.join --wraps='string _.join'
    read -za in
    string join $argv -- $in
    #string replace f X -- (string collect -- $in)
    #set -a argv ' '
    #sd '\n' $argv[1]
    #echo "==$argv[1]=="
    #sd '\n' 
end
