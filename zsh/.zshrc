
#zmodload zsh/zprof
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

export HOME="/Users/abelchalier"
export ZSH_HOME="$HOME/.config/zsh"
export ZPLUG_HOME="$ZSH_HOME/.zplug"
# export ZSH_DISABLE_COMPFIX=true
export LS_COLORS=true
# export FZF_DEFAULT_OPTS=""
export FZF_COMPLETION_OPTS="--height 40% --reverse --border"
export FZF_DEFAULT_COMMAND="rg --files --hidden --follow --glob '!{.git,node_modules}/*'"

# export ZSH_EXTEND_HISTORY_FILE="$ZSH_HOME/.zsh_extended_history"

source "$ZSH_HOME/variables.zsh"

source "$ZSH_HOME/.zplug/init.zsh"


# zplug "zsh-users/zsh-autosuggestions"
# zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zdharma-continuum/fast-syntax-highlighting", defer:2
zplug 'wfxr/forgit'

# zplug  "junegunn/fzf/completion"
# zplug  "junegunn/fzf"

# zplug "xav-b/zsh-extend-history"

# export ZSH_THEME="amuse"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Load Powerlevel10k theme
zplug "romkatv/powerlevel10k", depth:1, as:theme

zplug "robbyrussell/oh-my-zsh"

# zplug 'plugins/fzf', from:oh-my-zsh
# zplug 'plugins/vi-mode', from:oh-my-zsh

# zplug 'zsh-users/zsh-autosuggestions', defer:2
# zplug 'zsh-users/zsh-completions'
# zplug 'marlonrichert/zsh-edit'

# zplug 'zsh-users/zsh-history-substring-search', defer:2
# zplug 'zsh-users/zsh-syntax-highlighting', defer:2
setopt extended_history
setopt inc_append_history



# Install plugins if there are plugins that have not been installed

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
# Then, source plugins and add commands to $PATH
zplug load #--verbose



# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
# [ -f ~/.fzf.zsh ] &&
# source ~/.fzf.zsh

# function addPath(p) {
#     export PATH="$PATH:$path"
# }


# [ -f ~/.fzf.zsh ] &&
# plugins=(ripgrep)
# plugins=(... ripgrep)

# source "$ZSH_HOME/.zplug/repos/robbyrussell/oh-my-zsh/oh-my-zsh.sh"



# source "$ZSH_HOME/.zplug/repos/robbyrussell/oh-my-zsh/lib/diagnostics.zsh"
# source "$ZSH_HOME/.zplug/repos/robbyrussell/oh-my-zsh/lib/compfix.zsh"
# source "$ZSH_HOME/.zplug/repos/robbyrussell/oh-my-zsh/lib/history.zsh"
# source "$ZSH_HOME/.zplug/repos/robbyrussell/oh-my-zsh/lib/spectrum.zsh"
# source "$ZSH_HOME/.zplug/repos/robbyrussell/oh-my-zsh/lib/misc.zsh"

# source "$ZSH_HOME/.zplug/repos/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh"
# source "$ZSH_HOME/.zplug/repos/robbyrussell/oh-my-zsh/lib/termsupport.zsh"
# source "$ZSH_HOME/.zplug/repos/robbyrussell/oh-my-zsh/lib/correction.zsh"


######
source  "$ZSH_HOME/.zplug/repos/robbyrussell/oh-my-zsh/lib/completion.zsh"
source  "$ZSH_HOME/.zplug/repos/robbyrussell/oh-my-zsh/lib/key-bindings.zsh"

source  "$ZSH_HOME/.zplug/repos/robbyrussell/oh-my-zsh/lib/clipboard.zsh"
# source  "$ZSH_HOME/.zplug/repos/robbyrussell/oh-my-zsh/plugins/"
######



# source "$ZSH_HOME/.zplug/repos/robbyrussell/oh-my-zsh/lib/git.zsh"


# source "$ZSH_HOME/.zplug/repos/robbyrussell/oh-my-zsh/lib/bzr.zsh"
# source "$ZSH_HOME/.zplug/repos/robbyrussell/oh-my-zsh/lib/directories.zsh"
# source "$ZSH_HOME/.zplug/repos/robbyrussell/oh-my-zsh/lib/key-bindings.zsh"
# source "$ZSH_HOME/.zplug/repos/robbyrussell/oh-my-zsh/lib/vcs_info.zsh"
# source "$ZSH_HOME/.zplug/repos/robbyrussell/oh-my-zsh/lib/functions.zsh"
# source "$ZSH_HOME/.zplug/repos/robbyrussell/oh-my-zsh/lib/nvm.zsh"
# source "$ZSH_HOME/.zplug/repos/robbyrussell/oh-my-zsh/lib/cli.zsh"
# source "$ZSH_HOME/.zplug/repos/robbyrussell/oh-my-zsh/lib/grep.zsh"
# source "$ZSH_HOME/.zplug/repos/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh"



# source ""

 source "$ZSH_HOME/fzf/shell/completion.zsh"
 source "$ZSH_HOME/fzf/shell/key-bindings.zsh"

source "$ZSH_HOME/aliases.zsh"
source "$ZSH_HOME/functions.zsh"

source "$HOME/dev/zeno/zeno.zsh"
source "$HOME/dev/zeno/zeno-config.zsh"


source "$ZSH_HOME/zoxide.zsh"
# eval "$(zoxide init zsh)"

# # Custom completion function
# _lastdl_path_replacement() {
#     # Only proceed if the current word matches "lastdl"
#     if [[ $CURRENT -gt 1 && ${words[CURRENT]} == *"lastdl"* ]]; then
#         # Find the most recently downloaded file
#         local last_file=$(ls -t ~/Downloads/*(N) 2>/dev/null | head -1)
#         if [[ -n $last_file ]]; then
#             # Replace "lastdl" with the path to the last downloaded file
#             compadd -U -V lastdl_replacement -- "$last_file"
#             compstate[insert]=menu # Ensure the replacement is inserted directly
#             return 0
#         fi
#     fi
#     # Fallback to default completion if not matching "lastdl"
#     _files
# }

# # Register the custom completion function for certain commands
# compdef _lastdl_path_replacement cp mv



# zplug list
# clear

# bun completions



#zprof
