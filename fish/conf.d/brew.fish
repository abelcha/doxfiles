if test (uname) = Darwin
    if test -e /opt/homebrew/bin/brew
        # eval ( /opt/homebrew/bin/brew shellenv)
    else if test -e /usr/local/bin/brew
        eval ( /usr/local/bin/brew shellenv)
    end
else
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
end

if type -q brew
    if not set --query HOMEBREW_PREFIX
        set -gx HOMEBREW_PREFIX (brew --prefix)
    end
    set -gx CPATH "$HOMEBREW_PREFIX/include"
    set -gx LIBRARY_PATH "$HOMEBREW_PREFIX/lib"
    set -gx LD_LIBRARY_PATH "$HOMEBREW_PREFIX/lib"

    # if test -d (brew --prefix)"/share/fish/completions" 
    #     set -gx fish_complete_path $fish_complete_path (brew --prefix)/share/fish/completions
    # end

    # if test -d (brew --prefix)"/share/fish/vendor_completions.d"
    #     set -gx fish_complete_path $fish_complete_path (brew --prefix)/share/fish/vendor_completions.d
    # end
else
    echo "Please install 'brew' first!"
end
