
function ftorrent -a torrentfile
    aria2c -S $torrentfile | rg -v "^-+" | sd '\n\s+' '' | rg '^\d' | grep -v "\.pad" | ccat | xsv fixlengths -l 3 -d '|' | xsv table | fzf
end

alias fcode "gh find-code"
# alias fchrome "dump-browser|fzf  --tac  --print0 |tr -d '\0$' |pbcopy"
alias fclip "dump-clipboard|fzf  --tac  --print0 |tr -d '\0' |pbcopy"
alias fbins "echo \$PATH |rush -D ':' -k 'find {} -d 1 -perm +111 -type f' 2>/dev/null |fzf| tr -d '\0' |pbcopy"
alias fz "fd|fzf"
alias rge 'rgf --iglob "js\$"'

alias devices "xcrun simctl list devices |grep -v unavailable |grep -E 'Shutdown|Booted'"
alias udid 'devices|fzf|plog "e => e.match(/\(([\w-]+)\)/)?.[1]"'
alias rgg="/opt/homebrew/bin/rg"

set -x SKIM_DEFAULT_OPTIONS "--ansi --reverse --color=16 --delimiter=: --preview-window='up:65%:+{2}-/2' --preview='bat --style=numbers --color=always --highlight-line {2}:+0 {1}' --bind='ctrl-d:half-page-down,ctrl-u:half-page-up,?:toggle-preview,alt-/:execute-silent(ql {}),alt-space:execute-silent(ql {})+down,alt-j:preview-down,alt-k:preview-up,alt-h:preview-left,alt-l:preview-right,alt-d:preview-page-down,alt-u:preview-page-up,"

# alias list bundle="osascript -e 'tell application \"System Events\" to get bundle identifier of every process whose background only is false'"


function ng --wraps rg
    find ../../node_modules | rgf $argv
end

function _rg_maxwidth
    set -l wlen (string length "[... XX more match]")
    /opt/homebrew/bin/rg --max-columns-preview -M (math (colwidth) - $wlen - 3) $argv
end

function rg --wraps /opt/homebrew/bin/rg
    if not isatty 1
        /opt/homebrew/bin/rg $argv
    else
        _rg_maxwidth $argv
    end

end
alias skp="sk --algo clangd --preview='bat --style=numbers --color=always --highlight-line {2}:+0 {1}' --preview-window='up:65%:+{2}-/2' --bind='ctrl-d:half-page-down,ctrl-u:half-page-up,?:toggle-preview,alt-/:execute-silent(ql {}),alt-space:execute-silent(ql {})+down,alt-j:preview-down,alt-k:preview-up,alt-h:preview-left,alt-l:preview-right,alt-d:preview-page-down,alt-u:preview-page-up,' --bind 'ctrl-e:execute(hx {})'  --bind 'ctrl-o:execute(code {})'"


function fzf_env
    env | column -t -s = | fzf --print0 --tac --layout=reverse --info=right
end

function fenv
    fzf_env | awk '{ print "$" $1 }' | tr -d '\n\0' | pbcopy
end

function fenval
    fzf_env | awk '{ print $2 }' | tr -d '\n\0' | pbcopy
end


function fexec --wraps fzf
    #set temp_file (mktemp) $rr    #/bin/cat > $temp_file
    #set cmd "bat $temp_file | gawk $argv {q}"
    # echo $cmd
    # return
    set resp (echo '' | fzf --query "echo 'lol'" --print0 --print-query --preview "eval {q}" $argv)

    echo "gawk $resp" | tr -d \\n | pbcopy
end

function fawk --wraps awk
    set temp_file (mktemp)
    /bin/cat >$temp_file
    set cmd "bat $temp_file | gawk $argv {q}"
    # echo $cmd
    # return
    set resp (echo '' | fzf --query "// { print \$0 }" --print0 --print-query --preview "$cmd")

    echo "gawk $resp" | tr -d \\n | pbcopy
end


function flogcat --wraps fzf
    set temp_file (mktemp)
    /bin/cat >$temp_file
    set cmd "/bin/cat $temp_file | gawk {q}"
    # echo $cmd
    # return
    set resp (echo '' | fzf --query "// { print \$0 }" --print0 --print-query --preview-window="down,95%" --preview "$cmd" )

    echo "gawk $resp" | tr -d \\n | pbcopy
end


function list-bundle
    osascript -e 'tell application "System Events" to get bundle identifier of every process whose background only is false'
end



function rg --wraps=/opt/homebrew/bin/rg

    set -l wlen (string length "[... XX more match]")
    #echo (colwidth) ddd $wlen
    /opt/homebrew/bin/rg --max-columns-preview -M (math (colwidth) - $wlen - 3) $argv
    # /opt/homebrew/bin/rg
end

function rgz --wraps=rg
    rg --text --pre zstdcat $argv
end

function fzf-preview-file
    rg --files | fzf --reverse --preview 'bat --color=always {}'
end




function fsearch
    src search $argv
end

function fcargo
    from /opt/a/datasets/cargo.final.parquet SELECT name, description, dl WHERE slug LIKE \'command%\' AND description like \'%$argv[1]%\' ORDER BY dl DESC

end


function fgit
    if not git rev-parse --git-dir >/dev/null 2>&1
        echo '_fzf_search_git_log: Not in a git repository.' >&2
    else
        if not set --query fzf_git_log_format
            # %h gives you the abbreviated commit hash, which is useful for saving screen space, but we will have to expand it later below
            set -f fzf_git_log_format '%C(bold blue)%h%C(reset) - %C(cyan)%ad%C(reset) %C(yellow)%d%C(reset) %C(normal)%s%C(reset)  %C(dim normal)[%an]%C(reset)'
        end

        set -f preview_cmd 'git show --color=always --stat --patch {1}'
        if set --query fzf_diff_highlighter
            set preview_cmd "$preview_cmd | $fzf_diff_highlighter"
        end

        set -f selected_log_lines (
            git log --no-show-signature --color=always --format=format:$fzf_git_log_format --date=short | \
              rg --line-number --with-filename . --color=always --field-match-separator ' ' |fzf --ansi \
                --multi \
                --scheme=history \
                --prompt="Git Log> " \
                --preview=$preview_cmd \
                --query=(commandline --current-token) \
                $fzf_git_log_opts
        )
        if test $status -eq 0
            for line in $selected_log_lines
                set -f abbreviated_commit_hash (string split --field 1 " " $line)
                set -f full_commit_hash (git rev-parse $abbreviated_commit_hash)
                set -f --append commit_hashes $full_commit_hash
            end
            commandline --current-token --replace (string join ' ' $commit_hashes)
        end
    end

    commandline --function repaint
end
