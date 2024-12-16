function fissh-agent
    ssh-agent | rg '([^\s]+)=([^\s]+);.+' -r 'set -gx $1 "$2"' --passthru
end
