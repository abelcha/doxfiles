# Function to generate a file preview
function generate_file_preview() {

  local file_path=$1

  local preview=""

  preview+="$(echo $file_path)"
  preview+="\n"
  preview+="$(file -b $file_path)"
  preview+="\n"
  preview+="$(echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=")"
  preview+="\n"

  if [[ -d $file_path ]]; then
    preview+="$(ls -A $file_path)"
  else
    preview+="$(head -n 10 $file_path)"
  fi

  echo "$preview"

}

# Call the function
xpreview=$(generate_file_preview "{}")
echo $xpreview
# Pass preview to fzf
# fzf --preview="$preview"

# fzf --color=16 --header=fzf --info=inline --preview='echo {}; file -b {}; echo =-=-=-=-=-=-=-=-=-=-=-=-=-=; if [ -d '{}' ]; then ls -A {}; else head -$LINES {}; fi'