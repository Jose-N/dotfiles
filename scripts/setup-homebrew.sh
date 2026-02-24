#!/usr/bin/env bash

# Install homebrew if needed
if command -v -- homebrew &> /dev/null; then
  echo "homebrew is already installed"
else
  echo "installing homebrew"
  bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

Formulae=('jq' 'yq' 'bat' 'eza' 'fd' 'fzf' 'ripgrep' 'lazygit' 'lazydocker' 'lazysql' 'docker' 'docker-compose' 'powerlevel10k' 'tmux' 'neovim' 'zsh-autocomplete' 'zsh-autosuggestions' 'zsh-syntax-highlighting' 'try-rs' 'mise' 'zoxide')
Casks=('1password' 'zen' 'font-hack-nerd-font' 'ghostty' 'raycast')

for i in "${Formulae[@]}"; do
  brew install "$i"
done

for i in "${Casks[@]}"; do
  brew install "$i"
done

