function __s5cmd_complete
    set -l tokens (commandline -opc)
    SHELL=zsh command $tokens --generate-bash-completion | awk -F ":" '{
        if ($1 ~ /^s3/)
            print $0;
        else 
            print $1 "\t" $2
    }'
end
complete -f -c s5cmd -k -a '(__s5cmd_complete)'
