# Install dependencies
figlet "Installing Emacs Dependencies" | lolcat
Formulae=('coreutils' 'fontconfig' 'cmake' 'shellcheck')

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
git clone https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install
