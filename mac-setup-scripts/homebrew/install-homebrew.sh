#!/usr/bin/env bash

# Install homebrew if needed
if command -v -- brew &>/dev/null; then
  echo "homebrew is already installed"
else
  echo "installing homebrew"
  bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

Formulae=('figlet' 'lolcat' 'jq' 'yq' 'bat' 'eza' 'fd' 'fzf' 'ripgrep' 'lazygit' 'lazydocker' 'lazysql' 'docker' 'docker-compose' 'powerlevel10k' 'tmux' 'neovim' 'zsh-autocomplete' 'zsh-autosuggestions' 'zsh-syntax-highlighting' 'try-rs' 'mise' 'zoxide' 'azure-cli')

for i in "${Formulae[@]}"; do
  brew install "$i"
done
