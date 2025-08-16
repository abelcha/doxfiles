if test -e /opt/homebrew/bin/brew
    eval ( /opt/homebrew/bin/brew shellenv)
else if test -e /usr/local/bin/brew
    eval ( /usr/local/bin/brew shellenv)
else if test -e /home/linuxbrew/.linuxbrew/bin/brew
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
end
