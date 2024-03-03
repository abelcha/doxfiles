. ~/.config/fish/aliases.fish
. ~/.config/fish/functions/ports.fish


if status is-interactive
    # Commands to run in interactive sessions can go here
    # source ./atuin.fish
end


function fenv
    fzf_env | awk '{ print "$" $1 }' | tr -d '\n\0' | pbcopy
end
#   
# fish_add_path 


# Hishtory Config:
export PATH="$PATH:/Users/abelchalier/.hishtory"
source /Users/abelchalier/.hishtory/config.fish
