# function __fish_list_current_token --description 'List contents of token under the cursor if it is a directory, otherwise list the contents of the current directory'
#     set -l val (commandline -t | string replace -r '^~' "$HOME")
#     printf "\n"
#     if test -d $val
#         lld $val
#     else
#         set -l dir (dirname -- $val)
#         if test "$dir" != . -a -d $dir
#             lld $dir
#         else
#             lld
#         end
#     end

#     string repeat -N \n --count=(math (count (fish_prompt)) - 1)

#     commandline -f repaint
# end

# This function is typically bound to Alt-L, it is used to list the contents
# of the directory under the cursor.

function __fish_list_current_token -d "List contents of token under the cursor if it is a directory, otherwise list the contents of the current directory"
    set -l val (commandline -t | string replace -r '^~' "$HOME")
    set -l cmd
    if test -d $val
        set cmd ls $val
    else
        set -l dir (dirname -- $val)
        if test $dir != . -a -d $dir
            set cmd lld $dir
        else
            set cmd lld
        end
    end
    __fish_echo $cmd
end
