# Fish completion for clerk
# Save to:
#   mkdir -p ~/.config/fish/completions
#   clerk completion fish > ~/.config/fish/completions/clerk.fish

function __clerk_complete
    set -l tokens (commandline -opc)
    set -l current (commandline -ct)

    # Remove the command name, pass the rest + current token to __complete
    set -l args $tokens[2..]
    set -l output (clerk __complete $args $current 2>/dev/null)

    if test $status -ne 0
        return
    end

    # Last line is the directive — skip it
    set -l count (count $output)
    if test $count -le 1
        return
    end

    # Output all lines except the last (directive)
    for i in (seq 1 (math $count - 1))
        echo $output[$i]
    end
end

# Disable file completions by default, let __complete control it
complete -c clerk -f -a '(__clerk_complete)'
