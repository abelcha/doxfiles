function gosearch --argument query
    argparse h/help 'm/kind=' 's/system=' -- $argv; or return

    #echo "query|$query|$_flag_package|$_flag_system|"
    #set -l system GO
    #set -l kind module
    set -l uri https://deps.dev/_/search/suggest\?q=(sttr url-encode "$argv")
    set -q _flag_kind; and set --append -l uri "&kind=$_flag_kind"
    set -q _flag_system; and set --append -l uri "&system=$_flag_system"
    #echo "uri:$uri"
    xc $uri | jq '.results [].name' --raw-output
end
