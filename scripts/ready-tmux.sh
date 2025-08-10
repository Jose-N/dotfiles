#!/usr/bin/env bash

tmux rename-window editor
tmux send-keys "nvim" ^M

# Reference the below for opening a new window
# Maybe want to open a new window and split 50/50 top bottom to open for godotenv and go mod tidy
# One more window for starting docker containers
#tmux neww -n editor
#tmux split-window -h -p 25
#tmux send-keys "godotenv "
#tmux split-window -v -p 25
#tmux send-keys "go mod tidy"
