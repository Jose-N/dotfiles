#!/usr/bin/env bash

selected=$(find $HOME/code/ -mindepth 1 -maxdepth 1 -type d | fzf)

if [[ -z "$selected" ]]; then
  exit 0
fi

selected_name=$(basename $selected | tr ":,. " "____")

switch_to() {
  if [[ -z "$TUMX" ]]; then
    tmux attach-session -t $selected_name
  else
    tmux switch-client -t $selected_name
  fi
}

if tmux has-session -t=$selected_name 2>/dev/null; then
  switch_to
  exit 0
fi

tmux new-session -ds $selected_name -c $selected
tmux send-keys -t $selected_name "ready-tmux" ^M
switch_to
