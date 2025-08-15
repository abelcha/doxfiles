function b64
    test -z "$argv"; and read str; or set str "$argv"
    #echo "--->  $(string replace -ra '\n\s*' '' -- $str)"
    set decss (sttr base64-decode "$(string replace -ra '\n\s*' '' -- $str)" 2>/dev/null )
    if string match -rq 'UTF-8|ASCII' -- "$( echo $decss | uchardet $decs)"; and not string match -rq illegal -- "$decss"
        #echo $fish_color_status 'Decoded:'
        echo $decss
        return 0
    end
    sttr base64-encode $str
end
