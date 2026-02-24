#!/usr/bin/env bash

if ! [[ -d ~/.config ]]; then
 echo "creating .config dir"
 mkdir ~/.config
fi

cp ../.p10k.zsh ~
cp ../.zshrc ~
cp -r ../* ~/.config
