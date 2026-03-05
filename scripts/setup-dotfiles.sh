#!/usr/bin/env bash

if ! [[ -d ~/.config ]]; then
  echo "creating .config dir"
  mkdir ~/.config
fi

cp ~/code/dotfiles/.p10k.zsh ~
cp ~/code/dotfiles/.zshrc ~
cp -r ~/code/dotfiles/* ~/.config
