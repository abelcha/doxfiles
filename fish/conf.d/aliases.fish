alias funcis='funced -is'
function acp
    adb shell am broadcast -a clipper.get | string match -r 'data="(.*)"' -g | pbcopy
end
function apv
    adb shell am broadcast -a clipper.set -e text $argv
end
alias yarn="bun"
alias duck="duckdb"
alias ddb="duckdb"
# alias sqb="sqlitebiter"
alias kv="wrangler kv:key   --binding kv"
# alias run="run_bun"
alias proxyman="/Applications/Proxyman.app/Contents/MacOS/proxyman-cli"
alias pygz="pigz"
alias bottom="btm"
alias dxl="dx --strategy=live"
alias charm="gum"
alias datafusion="datafusion-cli"
alias compfiles="fd  --type=file  .fish $fish_complete_path"
alias compfind="compfiles |skp --query "
alias skp="sk --algo clangd --preview='bat --style=numbers --color=always --highlight-line {2}:+0 {1}' --preview-window='up:65%:+{2}-/2' --bind='ctrl-d:half-page-down,ctrl-u:half-page-up,?:toggle-preview,alt-/:execute-silent(ql {}),alt-space:execute-silent(ql {})+down,alt-j:preview-down,alt-k:preview-up,alt-h:preview-left,alt-l:preview-right,alt-d:preview-page-down,alt-u:preview-page-up,' --bind 'ctrl-e:execute(hx {})'  --bind 'ctrl-o:execute(code {})'"
alias jsonll="jq . -s"
# x="xh -b"
#alias x="xh -b"
# alias lastdl="last-downloaded | nohome"
alias rev-lines tac
alias keyreadr "fish_key_reader -c"
alias speed=cfspeedtest
#alias ai "bun run ~/dev/ai-shell/dist/cli.mjs"
alias pbat prettybat
alias pat prettybat
alias ai aichat
#alias expo ../../node_modules/.bin/expo
#alias next ../../node_modules/.bin/next
alias simctl 'xcrun simctl'
alias rge 'rgf --iglob "js\$"'
#alias rge 'rgf -w --iglob "js\$"'
alias bx "bunx --bun"
alias ccat /bin/cat
# alias chrome "open -a \"Google Chrome\""
alias co "git checkout"
alias code /opt/homebrew/bin/code
alias codepush "appcenter codepush"
alias comv "git commit --no-verify -m"
alias conflicts "git diff --name-only --diff-filter=U"
alias conv "bun run convex"

# alias crc "code $ZSH_HOME"
alias cu cursor
alias dc docker-compose
# alias devices "xcrun simctl list devices |grep -v unavailable |grep -E 'Shutdown|Booted'"
alias docx "textutil -convert txt -stdout"
alias emacs micro
alias fcode "gh find-code"
# alias fchrome "dump-browser|fzf  --tac  --print0 |tr -d '\0$' |pbcopy"
alias fclip "dump-clipboard|fzf  --tac  --print0 |tr -d '\0' |pbcopy"
alias fbins "echo \$PATH |rush -D ':' -k 'find {} -d 1 -perm +111 -type f' 2>/dev/null |fzf| tr -d '\0' |pbcopy"
alias fz "fd|fzf"
alias g3 "gpt dev --model gpt-4"
alias g4 "gpt bash --model gpt-4"
alias gd "gpt dev --model gpt-4"
alias gll "gls -lhF --color=auto --numeric-uid-gid"
# alias hexclean "hexdump -v -e '/1 \"%_p\"'"
alias int interpreter
alias ip "curl ipinfo.io"
alias ipinfo "ip -s | jq 'del(.postal, .timezone, .readme, .org, .loc, .region, .hostname)'"
alias jh "/opt/d/jshell/src/cli.ts"
# alias join "tr '\n' ' '| sed 's/ $//'" 
# alias list bundle="osascript -e 'tell application \"System Events\" to get bundle identifier of every process whose background only is false'"
# alias ll "~/dev/eza/target/release/eza --long  -F --total-size --no-user"
function ll --wraps eza
    command eza --long -F --total-size --no-user $argv
end

function ng --wraps rg
    find ../../node_modules | rgf $argv
end

alias lla "ll -a"
alias lld "ll --sort date "
alias lls "ll --sort size "
alias ls "ls --color=auto -t"
alias mi hx
alias mik "micro ~/.config/micro/bindings.json"

if type -q advcp
    alias cp "advcp -gir"
    alias mv "advmv -gi"
end
alias mvs "gmv --backup=numbered"
alias ne /opt/homebrew/bin/emacs
# alias notify "osascript -e 'tell app \"System Events\" to display dialog \"FINISHED\"'"
alias pack pack_auto
alias pcp "rsync -r --progress"
alias plines "tr ' ' '\n'"
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
alias rc "micro $ZSH_HOME/.zshrc && zsh"
alias rca "micro $ZSH_HOME/aliases zsh && zsh"
alias rcf "micro $ZSH_HOME/functions.zsh && zsh"
alias rcv "micro $ZSH_HOME/variables.zsh && zsh"
alias remain "git stash && git checkout main && git pull && git checkout - && git rebase main"
alias rg "rg --max-columns-preview -M 80"
alias riff "python -m riffusion.cli"
alias rm trash
alias rrg "rg --no-ignore"
alias runw "bun --watch run"
alias s180 'displayplacer "id:37D8832A-2D66-02CA-B9F7-8F30A301B230 res:1512x982 hz:120 color_depth:8 enabled:true scaling:on origin:(0,0) degree:0" "id:F4976B4A-2BFE-4497-81AB-1FBDA9F8C847 res:1280x720 hz:60 color_depth:8 enabled:true scaling:off origin:(1512,131) degree:180"'
alias s90 'displayplacer "id:37D8832A-2D66-02CA-B9F7-8F30A301B230 res:1512x982 hz:120 color_depth:8 enabled:true scaling:on origin:(0,0) degree:0" "id:F4976B4A-2BFE-4497-81AB-1FBDA9F8C847 res:720x1280 hz:60 color_depth:8 enabled:true scaling:off origin:(1512,-243) degree:90"'
alias screen_ls 'system_profiler SPDisplaysDataType'
# alias screen 'if displayplacer list | grep degree:90; then screen180; else screen90; fi'
alias sentry sentry-cli
alias st "git status"
alias timecurl curltime
alias ts "tsx --no-warnings"
alias tw the-way
alias udid 'devices|fzf|plog "e => e.match(/\(([\w-]+)\)/)?.[1]"'
# alias unmerged "git diff --name-only --diff-filter=U | xargs"
alias unpack "tar -zxvf "
alias vd visidata
alias wrun "bun --watch run"
alias y yazi
alias yazi /Users/abelchalier/dev/yazi/target/release/yazi
alias zcat "gunzip  --to-stdout"
# alias zd "$HOME/dev/zed/target/release/Zed"
