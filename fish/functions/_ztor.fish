function ztor --argument zpage
    set -l page (echo $zpage|sd '^\/+' '')
    set -l file '/tmp/zcache/'(echo 'p'$page | sttr base64-encode -r|  string sub -s -200)
    #echo "getting $page $file"
    if test -s "$file"
        /bin/cat $file
        #--paging never --force-colorization
    else
        curl -x socks5h://127.0.0.1:9050 'http://4qyjonpyksc52bc3fsgfgedssqgo4a6vlfsjknqnkncbyl4layqkqjid.onion/'$page | tee -a $file
    end
end
