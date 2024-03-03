function edit
    /usr/bin/which  $argv[1]; or return 
    micro (/usr/bin/which  $argv[1])
end

function fawk
    set temp_file (mktemp)
    /bin/cat > $temp_file
    set cmd "bat $temp_file | gawk {q}"
    set resp (echo '' | fzf --query "// { print \$0 }" --print0 --print-query --preview "$cmd" $argv)

    echo "gawk $resp"|tr -d \\n | pbcopy
end

function clib
    if test $argv[1] = "install"
         /opt/homebrew/bin/clib $argv --prefix ~/.clib
    else
        /opt/homebrew/bin/clib $argv
    end
end

function ghdoc
    readme $argv|mdcat -p
end

function fzf_env
  env | column -t -s = |fzf --print0 --tac --layout=reverse --info=right
end

function fenv
  fzf_env | awk '{ print "$" $1 }' |tr -d '\n\0'|pbcopy
end

function fenval
  fzf_env| awk '{ print $2 }' |tr -d '\n\0'|pbcopy
end

function lk
  set source $argv[1]
  set dest $argv[2]
  set namesource (basename $source)
  set namedest (basename $dest)
  echo "source: $source vs  dest: $dest"
  # if not test -e "$dest"
  #   set destdir (dirname $dest)
  #   echo "ln -s  "(realpath $source)" "(realpath $destdir)"
  # end
end

function abin
  if test -z "$argv[1]"
      echo "Usage: abin <path/to/bin>"
      return 1
  end
  set cmd "ln -s (realpath $argv[1]) (realpath ~/abin)/(basename $argv[1])"
  echo $cmd
  eval $cmd
end

function fzf-preview-file
  rg --files | fzf --reverse --preview 'bat --color=always {}'
end

function cat
  switch $argv[1]
      case '*".jpg"' '*".png"' '*".gif"'
          imgcat -width="33c" $argv[1]
      case '*".txt"'
          bat $argv[1]
      case '*".md"'
          mdcat -p $argv[1]
      case '*".DS_Store"'
          dstore $argv[1]
      case '*'
          zat $argv
  end
end

# function pick
#   set command (echo $argv[1] | tr ':' '\n' | fzf  --with-nth=1 -d ":" --height 10 --layout=reverse --disabled --print0)
#   eval "$command" $argv[2..-1]
# end