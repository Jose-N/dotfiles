#!/usr/bin/env zsh

# Install dependencies
figlet "Installing Emacs Dependencies" | lolcat
Formulae=('ripgrep' 'fd' 'coreutils' 'fontconfig' 'cmake' 'shellcheck' 'mu' 'offlineimap' 'imagemagick' 'feh')

for i in "${Formulae[@]}"; do
  brew install "$i"
done

# Install emacs
figlet "Installing Emacs" | lolcat
brew tap railwaycat/emacsmacport
brew trust railwaycat/emacsmacport
brew install emacs-mac --with-starter
cp -a /opt/homebrew/Cellar/emacs-mac@29/emacs-29.4-mac-10.1/Emacs.app /Applications

figlet "Installing DOOM Emacs" | lolcat
git clone --depth 1 https://github.com/doomemacs/core ~/.config/emacs
~/.config/emacs/bin/doom install
