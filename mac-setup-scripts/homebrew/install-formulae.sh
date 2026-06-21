#!/usr/bin/env zsh

# Install my needed forumlae
Formulae=('figlet' 'lolcat' 'fzf' 'ripgrep' 'docker' 'docker-compose' 'mise')

for i in "${Formulae[@]}"; do
  brew install "$i"
done
