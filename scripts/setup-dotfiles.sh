#!/usr/bin/env bash

if ! [[ -d ~/.config ]]; then
  echo "creating .config dir"
  mkdir ~/.config
fi

cp ~/Code/dotfiles/.p10k.zsh ~
cp ~/Code/dotfiles/.zshrc ~
cp -r ~/Code/dotfiles/* ~/.config
