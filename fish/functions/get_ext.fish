# sh function get_ext --description 'Get the file extension from the argument'

#     set -l splits (string split "." "$argv" | sd '-' '' )
#     set -l filtered
#     echo $splits[-1]
# end

# function set_ext -a filepath new_ext --description "replace extension from filename"
#     set -l ext (get_ext $new_ext)
#     echo $filepath | sd '$ext' '$new_ext'
# end

# function getext -a filepath --description "get basename from filename"
#     echo $filepath | string split "." | last
# end

# function setext -a filepath new_ext --description "replace extension from filename"
#     set -l ext (get_ext $filepath)
#     echo $filepath | sd '$ext' '$new_ext'
# end

# function change_file_type -a filepath new_ext --description "replace extension from filename"
#     echo $filepath | 
# end