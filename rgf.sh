#!/usr/bin/env bash

# skim
export SKIM_DEFAULT_COMMAND="fd --type file --follow --hidden --exclude .git --color=always || find ."
export SKIM_DEFAULT_OPTIONS="
--ansi \
--reverse \
--color=16 \
--delimiter=: \
--preview-window='up:65%:+{2}-/2' \
--preview='bat --style=numbers --color=always --highlight-line {2}:+0 {1}' \
--bind='\
ctrl-d:half-page-down,\
ctrl-u:half-page-up,\
?:toggle-preview,\
alt-/:execute-silent(ql {}),\
alt-space:execute-silent(ql {})+down,\
alt-j:preview-down,\
alt-k:preview-up,\
alt-h:preview-left,\
alt-l:preview-right,\
alt-d:preview-page-down,\
alt-u:preview-page-up,'\
"

# alias v="$EDITOR"
# alias c="`command -v bat >/dev/null 2>&1 && echo bat || echo cat`"
# alias n="[ -n "$NNNLVL" ] && [ "${NNNLVL:-0}" -ge 1 ] && exit || nnn"
# alias l="ls -alFh `ls --color >/dev/null 2>&1 && echo --color || echo -G`"

# alias waa="wa --mirror"
# alias srv="python3 -m http.server 8080"
# alias tmp='cd `mktemp -d /tmp/tXXXXXXX`'
# alias tac="`tac -h >/dev/null 2>&1 && echo tac || echo tail -r`"

# alias skim="command sk"

mkcd() {
  mkdir -p "$1"
  cd "$1"
}

sk() {
  # stdin is not a tty means data has been piped into skim
  if [ ! -t 0 ]; then
    command sk "$@"
    return $?
  fi

  # 1. esc | ctrl-c
  #    $?=0
  #
  # 2. Open selected file when query is empty:
  #    qry=
  #    key=ctrl-j | enter
  #    sel=first_item
  #
  # 3. Open fuzzy mathced file
  #    qry=asdf
  #    key=ctrl-j | enter
  #    sel=am-sa-do-fi.md
  #
  # 4. Use query as a new filename
  #    qry='newfile.md
  #    key=ctrl-j | enter
  #    sel=
  #
  # 5. Ripgrep through files' content
  #    qry=
  #    key=tab
  #    sel=
  #

  local qry key sel mod res

  __fd() {
    command sk \
      --prompt="Fls> " \
      --header=" " \
      --no-multi \
      --cmd='fd --color=always --type file --follow' \
      --expect=enter,alt-enter,ctrl-m,alt-m,alt-o,ctrl-c,esc,tab \
      --print-query \
      --query="$1"
  }

  __rg() {
    command sk \
      --prompt="Rgp> " \
      --header=" " \
      --no-multi \
      --cmd='rg --color=always --line-number "{}"' \
      --delimiter=: \
      --nth="3.." \
      --expect=enter,alt-enter,ctrl-m,alt-m,alt-o,ctrl-c,esc,tab \
      --print-query \
      --query="" \
      $@
  }

  mod="__rg"
  qry="$@"

  while true; do
    res=$(eval '$mod' '$qry')
    qry=$(echo "$res" | sed -n 1p)
    key=$(echo "$res" | sed -n 2p)
    sel=$(echo "$res" | sed -n 3p)

    [ "$key" != "tab" ] && break

    if [ "$mod" = "__rg" ]; then
      mod="__fd"
    else
      mod="__rg"
    fi
  done

  case "$key" in
    ctrl-m | enter)
      if [ -z "$sel" ]; then
        $EDITOR "${qry#\'}"
      elif [ "$mod" = "__fd" ]; then
        $EDITOR "$sel"
      else
        $EDITOR $(echo "$sel" | cut -f1,2 -d':' | sed 's/:/ \+/g')
      fi
      ;;
      
    alt-o)
      open $(echo "$sel"| gawk -F: '{ print $1 }' |sd '.+/(.+)__(.+).md' 'https://github.com/$1/$2')
      ;;
    alt-m | alt-enter)
      echo "$sel"
      ;;
    ctrl-c | esc | *)
      return 0
      ;;
  esac
}

m() {
  trap "cd `pwd`" EXIT
  cd $HOME/mem
  sk "$@"
}

wa() {
  trap "cd `pwd`" EXIT
  cd $HOME/warc

  if [ -z "$1" ]; then
    EDITOR="open" sk "$@"
    return $?
  fi

  wget \
    --page-requisites \
    --convert-links \
    --adjust-extension \
    --compression=auto \
    --reject-regex='/search|/rss' \
    --no-if-modified-since \
    --no-check-certificate \
    --user-agent='Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36' \
    "$@"
}

sk
