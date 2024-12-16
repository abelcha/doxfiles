function fixencoding --argument file
    set fromcode (uchardet "$file")
    set destfile (subextension  "$file" utf8)
    #echo "$fromcode => $destfile"
    #echo " iconv -c --from-code $fromcode --to-code UTF-8"
    fexec iconv $file -c --from-code $fromcode --to-code UTF-8 >$destfile
end
