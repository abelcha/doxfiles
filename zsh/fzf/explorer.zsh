# ▄▀█ █ █ █ █▀▀ █▀ █▀█ █▀▄▀█ █▀▀ ▄▄ █▀▀ ▀█ █▀▀
# █▀█ ▀▄▀▄▀ ██▄ ▄█ █▄█ █ ▀ █ ██▄    █▀  █▄ █▀

if command -v fzf >/dev/null; then
    # if [ $USE_FUNCTION = "Yes" ]; then

			AWESOME_FZF_LOCATION="$ZSH_HOME/fzf/explorer.zsh"
			RED_FG=$(tput setaf 1)
			GREEN_BG=$(tput setab 2)
			RESET=$(tput sgr0)

			##--> List Awesome FZF Functions <--##
			function fzf-awesome-list() {
					if [ -r $AWESOME_FZF_LOCATION ]; then
							selected=$(grep -E "(function fzf-)(.*?)[^(]*" $AWESOME_FZF_LOCATION | sed -e "s/^[ \t]*function fzf-//" | sed -e "s/() {//" | grep -v "selected=" | fzf --prompt="Awesome-FZF functions > ")
							echo "SELECTED: $selected"
					else
							echo "${RED_FG}Awesome-FZF not found!!${RESET}"
					fi

					case "$selected" in
					"") ;; # Don't throw an exit error when we dont select anything
					*) "fzf-"$selected ;;
					esac
			}

			##--> Enhanced Uninstall <--##
			# function fzf-uninstall() {
			# 		clear
			# 		echo "${RED_FG}Uninstall Menu...${RESET}"

			# 		# Get a list of installed packages
			# 		installed_packages=$(pacman -Qe | awk '{print $1}')

			# 		# Prompt user to select packages to remove using fzf
			# 		selected_packages=$(echo "$installed_packages" | fzf --multi --preview '')

			# 		# Remove selected packages
			# 		if [[ -n "$selected_packages" ]]; then
			# 				echo "Removing selected packages:"
			# 				echo "$selected_packages"
			# 				sudo pacman -Rns $selected_packages
			# 				echo "${GREEN_BG}Uninstalled!${RESET}"
			# 		else
			# 				echo "No packages selected."
			# 		fi
			# }

			##--> Enhanced rm <--##
			# function fzf-rm() {
			# 		if [[ "$#" -eq 0 ]]; then
			# 				local files
			# 				files=$(find . -maxdepth 1 -type f | fzf --multi)
			# 				echo $files | xargs -I '{}' rm -rf {} #we use xargs so that filenames to capture filenames with spaces in them properly
			# 		else
			# 				command rm -rf "$@"
			# 		fi
			# }

			##--> Man without options will use fzf to select a page <--##
			function fzf-man() {
					MAN="/usr/bin/man"
					if [ -n "$1" ]; then
							$MAN "$@"
							return $?
					else
							$MAN -k . | fzf --reverse --preview="echo {1,2} | sed 's/ (/./' | sed -E 's/\)\s*$//' | xargs $MAN" | awk '{print $1 "." $2}' | tr -d '()' | xargs -r $MAN
							return $?
					fi
			}

			##--> fc-list with FZF <--##
			function fzf-fc() {
					fc-list |
							awk -F '[:,]' '{gsub("^ ", "", $2); print $2}' |
							sort |
							uniq |
							fzf |
							tr -d '\n' |
							echo
			}

			##--> Eval commands on the fly <--##
			function fzf-eval() {
					echo | fzf -q "$*" --preview-window=up:99% --preview="eval {q}"
			}

			##--> Search list of your aliases and functions <--##
 					CMD=$(
							(
									/bin/cat $ZSH_HOME/aliases.zsh | grep "alias"
									# (functions | grep "()" | cut -d ' ' -f1 | grep -v "^_")
							) | fzf | cut -d '=' -f1
					)

					eval $CMD
			}

			##--> File Finder (Open in $EDITOR) <--##
			function fzf-find-files() {
					local file=$(fzf --multi --reverse) # Get file from fzf
					if [[ $file ]]; then
							for prog in $( # Open all the selected files
									echo $file
							); do
									$EDITOR $prog
							done
					else
							echo "${RED_FG}Cancelled FZF${RESET}"
					fi
			}

			##--> Find Dirs <--##
			function fzf-cd() {
					local dir
					dir=$(find ${1:-.} -path '*/\.*' -prune -o -type d -print 2>/dev/null | fzf +m) && cd "$dir"
					if [ $(command -v exa) ]; then
							clear && exa -al --color=always --icons --git --group-directories-first
					else
							command ls -al
					fi
			}

			##--> Find Dirs (Hidden Included) <--##
			function fzf-cd-incl-hidden() {
					local dir
					dir=$(find ${1:-.} -type d 2>/dev/null | fzf +m) && cd "$dir"
					ls
			}

			##--> CD into the directory of the selected file <--##
			function fzf-cd-to-file() {
					local file
					local dir
					file=$(fzf +m -q "$1") && dir=$(dirname "$file") && cd "$dir"
					ls
			}

			##--> fdr - cd to selected parent directory <--##
			function fzf-cd-to-parent() {
					local declare dirs=()
					get_parent_dirs() {
							if [[ -d "${1}" ]]; then dirs+=("$1"); else return; fi
							if [[ "${1}" == '/' ]]; then
									for _dir in "${dirs[@]}"; do echo $_dir; done
							else
									get_parent_dirs $(dirname "$1")
							fi
					}
					local DIR=$(get_parent_dirs $(realpath "${1:-$PWD}") | fzf-tmux --tac)
					cd "$DIR"
					ls
			}

			##--> Search ENV variables <--##
			function fzf-env-vars() {
					local out
					out=$(env | fzf)
					echo $(echo $out | cut -d= -f2)
			}

			##--> Kill process using FZF <--##
			function fzf-kill-processes() {
					local pid
					pid=$(ps -ef | sed 1d | fzf -m | awk '{print $2}')

					if [ "x$pid" != "x" ]; then
							echo $pid | xargs kill -${1:-9}
					fi
			}

			##--> Enhanced Git Status (Open multiple files with tab + diff preview) <--##
			function fzf-git-status() {
					git rev-parse --git-dir >/dev/null 2>&1 || echo "You are not in a git repository" && return
					local selected
					selected=$(git -c color.status=always status --short |
							fzf --height 50% "$@" --border -m --ansi --nth 2..,.. \
									--preview '(git diff --color=always -- {-1} | sed 1,4d; cat {-1}) | head -500' |
							cut -c4- | sed 's/.* -> //')
					if [[ $selected ]]; then
							for prog in $(echo $selected); do $EDITOR $prog; done
					fi
			}

			##--> tldr selection un=sing FZF <--##
			function fzf-tldr() {
					tldr --list | fzf --preview "tldr {1} --color=always" --preview-window=right,70% | xargs tldr
			}

			# ##--> Checkout made more cool with fzf and tmux <--##
			# function fzf-checkout() {
			# 		if git rev-parse --git-dir >/dev/null 2>&1; then
			# 				if [[ "$#" -eq 0 ]]; then
			# 						local branches branch
			# 						branches=$(git branch -a) &&
			# 								branch=$(echo "$branches" |
			# 										fzf-tmux -d $((2 + $(wc -l <<<"$branches"))) +m) &&
			# 								git checkout $(echo "$branch" | sed "s/.* //" | sed "s#remotes/[^/]*/##")
			# 				elif [ $(git rev-parse --verify --quiet $*) ] ||
			# 						[ $(git branch --remotes | grep --extended-regexp "^[[:space:]]+origin/${*}$") ]; then
			# 						echo "Checking out to existing branch"
			# 						git checkout "$*"
			# 				else
			# 						echo "Creating new branch"
			# 						git checkout -b "$*"
			# 				fi
			# 		else
			# 				echo "${RED_FG}Can't check out or create branch.${RESET} Not in a git repo"
			# 		fi
			# }

			# ##--> Git Braches Selection <--##
			# function fzf-git-branches() {
			# 		if [ -d "./.git" ]; then
			# 				git fetch
			# 				selected_remote_branch=$(git branch -r | fzf | sed -e 's/^[[:space:]]*//')

			# 				if [ -n "$selected_remote_branch" ]; then
			# 						selected_branch=$(echo "$selected_remote_branch" | sed -e 's/origin\///')

			# 						if git rev-parse --verify "$selected_branch"; then
			# 								git checkout "$selected_branch"
			# 						else
			# 								git checkout --track "$selected_remote_branch"
			# 						fi
			# 				else
			# 						echo "Exit: You haven't selected a branch..."
			# 				fi
			# 		else
			# 				echo -e "${RED_FG}Error:${RESET} There's no .git dir..."
			# 				exit 1
			# 		fi
			# }

    # function _fzf_compgen_dir() {
    #     fd --type d --hidden --follow --color=always --exclude ".git" --exclude ".hg" --exclude "node_modules" . "$1"
    # }

    # function _fzf_compgen_unalias() {
    #     tmpfile=$(mktemp /tmp/zsh-complete.XXXXXX)
    #     alias >"$tmpfile"
    #     fzf "$@" --preview 'ESCAPED=$(printf "%s=" {} | sed -e '"'"'s/[]\/$*.^[]/\\&/g'"'"'); cat '"$tmpfile"' | grep "^$ESCAPED"'
    #     rm "$tmpfile"
    # }

    # function _fzf_comprun() {
    #     local command=$1
    #     shift

    #     case "$command" in
    #     cd) fzf "$@" --preview 'tree -C {} | head -200' ;;
    #     export | unset) fzf "$@" --preview "eval 'echo \$'{}" ;;
    #     ssh | telnet) fzf "$@" --preview 'echo {}' ;;
    #     unalias) _fzf_compgen_unalias "$@" ;;
    #     *) fzf "$@" ;;
    #     esac
    # }

    fzw() {
        local projects=$HOME/dev

        if [[ ! -d $projects ]]; then
            echo -e "$projects dir does not exist"
            return 1
        fi

        local project=$(fd -t d --max-depth 1 . $projects | awk -F/ '{print $(NF-1)}' | fzf)

        [[ -z $project ]] && return

        cd $projects/$project
    }

    fzenv () {
        local version=$(ll $HOME/.local/bin | grep python | awk '{print $11}' |
            fzf --delimiter='python' --with-nth=2
        )

        [[ -z $version ]] && return

        virtualenv .venv -p=$version
    }

    # fzdrc () {
    #     local containers=$(docker ps | tail -n +2 | awk '{print $1" "$NF}' | fzf -m | cut -d " " -f 1 | tr "\n" " ")

    #     [[ -z $containers ]] && return

    #     docker rm $(echo $containers) -f
    # }

    # fzdri () {
    #     local images=$(docker images | tail -n +2 | awk '{print $1" "$3}' | fzf -m |  cut -d " " -f 2 | tr "\n" " ")

    #     [[ -z $images ]] && return

    #     docker rmi $(echo $images) -f
    # }

    # fzc () {
    #     local languages=(
    #         python
    #         go
    #         lua
    #     )

    #     local utils=(
    #         tar
    #         xargs
    #         awk
    #     )

    #     local selected=$(printf "$(echo $languages | tr ' ' '\n')\n$(echo $utils | tr ' ' '\n')" | fzf)

    #     echo -n "query: "
    #     read query

    #     if printf $languages | grep -qs $selected; then
    #         curl cht.sh/$selected/$(echo $query | tr ' ' '+')\?Q
    #     else
    #         curl cht.sh/$selected~$query\?Q
    #     fi
    # }

    # # Helpers
    # is_in_git_repo() {
    #     git rev-parse --is-inside-work-tree > /dev/null 2>&1
    # }

    # fzzf-down() {
    #     fzf --ansi --height 50% --min-height 20 
    #         # --bind ctrl-f:preview-down,ctrl-b:preview-up \
    #         # --bind ctrl-p:toggle-preview $@
    # }
fi