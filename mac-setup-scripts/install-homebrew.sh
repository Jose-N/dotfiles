#!/usr/bin/env bash

# Install homebrew if needed
if command -v -- brew &>/dev/null; then
  echo "homebrew is already installed"
else
  echo "installing homebrew"
  bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo 'eval $(/opt/homebrew/bin/brew shellenv)' >> $HOME/.zprofile
  eval "$(/opt/homebrew/bin/brew)"
fi
