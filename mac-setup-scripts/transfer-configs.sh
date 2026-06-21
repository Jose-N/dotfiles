#!/usr/bin/env bash

if ! [[ -d ~/.config ]]; then
  echo "creating .config dir"
  mkdir ~/.config
fi

# cp ~/Code/dotfiles/.config/.p10k.zsh ~
cp ~/dotfiles/.config/.zshrc ~
cp -r ~/dotfiles/.config/* ~/.config
