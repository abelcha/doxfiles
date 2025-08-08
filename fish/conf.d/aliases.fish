# alias swift-format "swift format"
alias npx bunx
alias codi="/Applications/VisualStudioCode-Insiders.app/Contents/Resources/app/bin/code"
alias codi /Applications/Trae.app/Contents/Resources/app/bin/marscode
alias diskattach 'diskimage attach'
alias c container
alias speedtest cfspeedtest
# alias docker container
alias hopper="/Applications/Hopper\ Disassembler\ v4.app/Contents/MacOS/hopper"
alias l1="ls -l1"
alias ufind="unbuffer find"
alias xfind="/usr/bin/find"
alias ssah="spass ssh"
alias btc="/opt/homebrew/bin/bx"
alias s3='aws s3'
alias pkill="killport"
alias bd="sttr base64-decode"
alias diskimage="diskutil image"
# alias mktemp="umktemp"
alias atob="sttr base64-encode"
alias btoa="sttr base64-decode"
alias pcsv="psub -s .csv"
alias pjson="psub -s .json"
alias pjsonl="psub -s .jsonl"
alias ptxt="psub -s .txt"
alias hwatch="hwatch --shell fish --color "
alias md hdiutil
alias parallel "parallel --eta --progress --bar"
alias ffprobe "ffprobe -hide_banner "
alias dus "du -sh"
alias lynx "lynx -accept_all_cookies"
alias pu pueue
alias zx "zstd --format=xz"
alias unz="unzstd"
alias compt="compression_tool"
alias pak="lz4 --rm --fast"
alias chroma="chroma --formatter=terminal256 --style fruity --lexer fish"
alias lzcat=lz4cat
alias rand="command random"
alias flyctl="fly"
alias ccp="/bin/cp"
alias rrm="/bin/rm -fr"
alias p="pnpm"
alias shiki="chroma"
alias ono="ionosctl"
alias read_csv="read_duck csv"
alias read_json="read_duck json"
alias samplesize="shuf --head-count"
alias z="zellij"
alias fpip="parse_pip_search"
alias ffd="fd -I -H"
# alias ccat /bin/cat
alias r='rclone'
# alias codi="/Applications/VisualStudioCode-Insiders.app/Contents/Resources/app/bin/code"
alias ld="lld"
alias llt="ll --sort type"
alias ddb="duckdb"
alias kv="wrangler kv:key   --binding kv"
alias dxl="dx --strategy=live"
alias charm="gum"
alias datafusion="datafusion-cli"
alias jsonll="jq . -s"
alias rev-lines tac
# alias keyreadr "fish_key_reader -c"
alias simctl 'xcrun simctl'
alias lite="litecli"
# alias bx "bunx --bun"
alias gco "git checkout"
alias co "git checkout"
alias gc "git checkout"
alias gd "git diff -w"
# alias code /opt/homebrew/bin/code
# alias comv "git commit --no-verify -m"
alias ip "curl ipinfo.io"
alias ipinfo "ip -s | jq 'del(.postal, .timezone, .readme, .org, .loc, .region, .hostname)'"
alias llls "DX_STRATEGY=live lls"
alias llld "DX_STRATEGY=live lld"
alias lld "ll  --sort date "
alias lls "ll  --sort size "
alias ls "ls --color=auto -t"
alias ne /opt/homebrew/bin/emacs
alias plines "tr ' ' '\n'"
alias pline "sd '\s.+' ' '"
alias prv "qlmanage -p"
alias psv "git push"
alias psvf "psv --force"
alias py python
alias rrg "command rg --no-ignore"
alias runw "bun --watch run"

function set_display -a res origin degree
    set -l display_props "id:37D8832A-2D66-02CA-B9F7-8F30A301B230 res:1512x982 hz:120 color_depth:8 enabled:true scaling:on origin:(0,0) degree:0"
    set -l sec_props "id:F4976B4A-2BFE-4497-81AB-1FBDA9F8C847 res:$res hz:60 color_depth:8 enabled:true scaling:off origin:\($origin\) degree:$degree"
    command displayplacer "$display_props" "$sec_props"
end
alias s180 'set_display 1280x720 "1512,131" 180'
alias s90 'set_display 720x1280 "1512,-243" 90'
alias screen_ls 'system_profiler SPDisplaysDataType'
# alias screen 'if displayplacer list | grep degree:90; then screen180; else screen90; fi'
alias sentry sentry-cli
alias st "git status"
alias timecurl curltime
# alias ts "tsx --no-warnings"
# alias tw the-way
# alias unpack "tar -zxvf "
alias vd visidata
# alias wrun "bun --watch run"
# alias y yazi

# alias zcat zstdcat
