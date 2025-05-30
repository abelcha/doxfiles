complete -c hereby -s h -l help -d 'Display this usage guide.'
complete -c hereby -l herebyfile -d 'path   A path to a Herebyfile. Optional.'
complete -c hereby -s T -l tasks -d 'Print a listing of the available tasks.'
complete -c hereby -n __fish_no_arguments -l version -d 'Print the current hereby version.'
function hereby_task_complete
    # hereby --tasks | string replace -r -f '^\s+([\w\:\-]+)\s+(.+?)\s+$' '$1'\t'"$2"'
    hereby --tasks | string replace -fr '^\s\s([\w\-\:]+)\s+(\w.+\w)?' "\$1\t'\$2'" | string replace \t"''" ""
end

complete -c hereby -x -a '(hereby_task_complete)'
