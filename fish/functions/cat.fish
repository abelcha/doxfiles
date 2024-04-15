

set -g ExtMap
set -g zat_exts (zat --list-extensions)
# echo $zat_exts
for ext in (string split ' ' $zat_exts)
    dict ExtMap set $ext OK
    # echo '==>' $ext (dict ExtMap get $ext)
end


function cat -d "Use bat instead of cat unless it's a Markdown file, then use mdless" --wraps bat
    if not isatty stdout
        /bin/cat $argv
        return 0
    end
    if test (count $argv) -ne 1 #-a not test -f $argv[-1]
        #echo "Error: argv length is not equal to 3"
        /bin/cat -- $argv
        return 0
    end
    # if not test -f $argv[-1]
    command bat --force-colorization --style plain --theme OneHalfDark $argv
    return 0
    # echo "use cat"
    set -l ext (get_ext $argv)
    set -l lookup (dict ExtMap get "$ext")
    # echo "xxx $ext xxx $lookup KOOLUIP"
    if [ $ext = md ]
        # echo MDLESS
        mdless -P $argv
        # echo VAT
        # command zat $argv
    else if test -n $lookup
        # echo "NORMAL V"
        command zat $argv
        # else if test (get_ext $argv) = md
    else
        command bat --force-colorization --style plain --theme OneHalfDark $argv
    end
    # echo NOTFOUND
    return 1
end



function get_ext -d 'Get the file extension from the argument'

    set -l splits (string split "." "$argv" | sd '-' )
    set -l filtered
    echo $splits[-1]
end

function pcat --wraps cat
    # if command is piped or not a markdown file, use original cat
    # otherwise use mdless
    # if not (commandline -t); and not contains (get_ext $argv) $exts
    # set -l cmd (commandline -p)
    # echo "COMMAND $cmd xxx"
    if string match (get_ext $argv) md
        echo mdless
        mdless $argv
    else
        echo bar
        command bat --style plain --theme OneHalfDark $argv
    end
end



# function replace_cat
#     echo "'$argv[1]'"q
# end

# abbr -a cat --position anywhere --regex "" --function replace_cat

# function pcat -d "Use bat instead of cat unless it's a Markdown file, then use mdless" 
# 	set -l exts md markdown txt

# 	if not test -f $argv
# 		echo "File not found: $argv"
# 		return 0
# 	end

# 	if contains (get_ext $argv) $exts
# 		mdless $argv
# 	else
# 		command bat --style plain --theme OneHalfDark $argv
# 	end
# end

# function ^
#   if test (count $argv) -gt 1 or not test -f $argv[1] or not test $argv[1] =*.md
#     return 0
#   else
#     command
#   end
# end



# abbr -a 'cat' 'mdcat_abbr'
