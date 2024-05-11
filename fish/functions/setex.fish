function setex --description 'replace extension from filename' --argument filepath new_ext
    echo $filepath | sd '.\w+\$' '.$new_ext'

end
