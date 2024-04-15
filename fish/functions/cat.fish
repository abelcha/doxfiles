

function cat -d "Use bat instead of cat unless it's a Markdown file, then use mdless" --wraps bat
    if not isatty stdout
        /bin/cat $argv
        return 0
    end

    command bat --force-colorization --style plain --theme OneHalfDark $argv
end



function get_ext -d 'Get the file extension from the argument'

    set -l splits (string split "." "$argv" | sd '-' )
    set -l filtered
    echo $splits[-1]
end
