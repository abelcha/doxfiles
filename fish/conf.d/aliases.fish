alias md hdiutil
# alias fish-lsp /me/dev/helix/fish-lsp/bin/fish-lsp
alias parallel "parallel --eta --progress --bar"
alias ffprobe "ffprobe -hide_banner "
alias ml malloy
alias ds "du -sh"
alias lynx "lynx -accept_all_cookies"
alias pu pueue
# alias printf uprintf
alias zx "zstd --format=xz"
# alias sort usort
alias chexec="chmod 700"
# alias pnpm="pnpm --no-deprecation
alias kebab="stdrename --kebab"
alias sz="7z"
alias unz="unzstd"
alias compt="compression_tool"
alias pak="lz4 --rm --fast"
alias helix="/opt/d/helix/target/release/hx"
alias chroma="chroma --formatter=terminal256 --style fruity --lexer fish"
alias lzcat=lz4cat
alias rand="command random"
alias flyctl="fly"
alias adb="arangodb"
alias add="arangod"
alias ash="arangosh"
alias rrm="/bin/rm"
alias ccp="/bin/cp"
alias hexfiend="open -a Hex\ Fiend.app"
alias drun="dub"
alias tk="csvtk"
# alias lyn="lynx -stdin"
alias rund="run-debug"
alias pcsv="psub -s .csv"
alias pjson="psub -s .json"
alias pjsonl="psub -s .jsonl"
alias ptxt="psub -s .txt"
alias mduck="/opt/homebrew/bin/duck"
alias rrm="/bin/rm"
alias p="pnpm"
# alias h="uhead"
# alias t="utail":q

# alias mods="mods --word-wrap (colwidth)"
alias b64="sttr base64-decode"
# alias shiki="node  ~/dev/shiki/packages/cli/bin.mjs"i
alias shiki="chroma"
alias ono="ionosctl"
alias extension="string match --groups-only -r '\\.(\\w+\$)' "
alias read_csv="read_duck csv"
alias read_json="read_duck json"
alias samplesize="shuf --head-count"
alias z="zellij"
# alias grun="go run"
alias sm="summarize"
alias fpip="parse_pip_search"
# alias csv="csvlens --delimiter auto"
alias clogs="shiki --lang make --theme night-owl"
alias newsqlite="sqlite-utils create-database"
# alias fx='fish_trace=3 fish --no-config'
# alias wcl='wc -l'
alias discover='gh discover'
alias pivot='csvchk'
alias smr="summarize"
alias table='xsv table'
alias cl="clickhouse local"
alias bbuild='bun build'
alias ffd="fd -I -H"
alias r='rclone'
alias tra="transmission-remote 127.0.0.1:9091"
alias pl='/opt/a/.cargo/bin/polars'
# alias funcis='funced -is'
alias s='s5cmd'
# alias btop="bpytop"
# alias copy='/opt/d/abel/dkp.ts'
alias pygz="pigz"

alias codi="/Applications/VisualStudioCode-Insiders.app/Contents/Resources/app/bin/code"
alias ld="lld"
alias llt="ll --sort type"
alias rrm="/bin/rm -fr"

alias ddb="duckdb"
alias kv="wrangler kv:key   --binding kv"
alias proxyman="/Applications/Proxyman.app/Contents/MacOS/proxyman-cli"
alias bottom="btm"
alias dxl="dx --strategy=live"
alias charm="gum"
alias datafusion="datafusion-cli"
# alias compfiles="fd  --type=file  .fish $fish_complete_path"
# alias compfind="compfiles |skp --query "
alias jsonll="jq . -s"
alias rev-lines tac
alias keyreadr "fish_key_reader -c"
alias speed cfspeedtest
alias simctl 'xcrun simctl'
alias lite="litecli"
alias bx "bunx --bun"
alias ccat /bin/cat
# alias chrome "open -a \"Google Chrome\""
alias co "git checkout"
alias code /opt/homebrew/bin/code
alias codepush "appcenter codepush"
alias comv "git commit --no-verify -m"
alias conflicts "git diff --name-only --diff-filter=U"

# alias crc "code $ZSH_HOME"
alias cu cursor
alias dc docker-compose
alias docx "textutil -convert txt -stdout"
alias emacs micro

alias int interpreter
alias ip "curl ipinfo.io"
alias ipinfo "ip -s | jq 'del(.postal, .timezone, .readme, .org, .loc, .region, .hostname)'"
# alias jh "/opt/d/jshell/src/cli.ts"
# alias join "tr '\n' ' '| sed 's/ $//'" 
# alias ll "~/dev/eza/target/release/eza --long  -F --total-size --no-user"

# alias lll "DX_STRATEGY=live ll "
alias llls "DX_STRATEGY=live lls"
alias llld "DX_STRATEGY=live lld"
alias lld "ll  --sort date "
alias lls "ll  --sort size "
alias ls "ls --color=auto -t"
# alias mi hx
alias mik "micro ~/.config/micro/bindings.json"

if type -q advcp
    alias cp "advcp -gir"
    # alias _mv "advmv -gi"
end

# function mv --wraps umv
#     if test (count $argv) -eq 1
#         ren $argv[1]
#     else
#         umv --interactive --progress --verbose $argv
#     end
# end
# alias cpc

alias mvs "gmv --backup=numbered"
alias ne /opt/homebrew/bin/emacs
# alias notify "osascript -e 'tell app \"System Events\" to display dialog \"FINISHED\"'"
alias pack pack_auto
alias pcp "rsync -r --progress"
alias plines "tr ' ' '\n'"
alias pline "sd '\s.+' ' '"
alias prev "qlmanage -p"
alias prv "qlmanage -p"
alias psh "git push"
alias psv "git push"
alias psvf "psv --force"
alias py python
alias pipx="pipx"
alias pyp "/usr/bin/python3 -m pip"
alias rc local="git checkout --theirs "
alias rc remote="git checkout --ours "
alias remain "git stash && git checkout main && git pull && git checkout - && git rebase main"

alias riff "python -m riffusion.cli"
# alias rm trash
alias rrg "rg --no-ignore"
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
alias tw the-way
alias unpack "tar -zxvf "
alias vd visidata
alias wrun "bun --watch run"
# alias y yazi

alias zcat zstdcat
