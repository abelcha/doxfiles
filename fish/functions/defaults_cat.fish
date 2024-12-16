function defaults_cat --argument domain
    echo "def..."
    defaults export $domain "/tmp/res/$domain.bplist"
    echo lole
    plutil -convert xml1 "/tmp/res/$domain.bplist" -e plist
    echo ekeke
end
