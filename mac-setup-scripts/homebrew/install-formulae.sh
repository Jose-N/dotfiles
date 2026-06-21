#!/usr/bin/env bash

# Install my needed forumlae
Formulae=('figlet' 'lolcat' 'jq' 'yq' 'bat' 'eza' 'fd' 'fzf' 'ripgrep' 'lazygit' 'lazydocker' 'lazysql' 'docker' 'docker-compose' 'powerlevel10k' 'tmux' 'neovim' 'zsh-autocomplete' 'zsh-autosuggestions' 'zsh-syntax-highlighting' 'try-rs' 'mise' 'zoxide' 'azure-cli')

for i in "${Formulae[@]}"; do
  brew install "$i"
done
