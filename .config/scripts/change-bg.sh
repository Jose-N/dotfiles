#!/bin/bash

bg=$(find $HOME/anime-bg -mindepth 1 -maxdepth 1 -type f | fzf)
if [[ -z "$bg" ]]; then
  exit 0
fi

echo "${bg}"

osascript -e 'tell application "System Events" to tell every desktop to set picture to POSIX file "'"${bg}"'"'
