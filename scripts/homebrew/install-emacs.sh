# Install emacs
figlet "Installing Emacs" | lolcat
brew tap railwaycat/emacsmacport
brew trust railwaycat/emacsmacport
brew install emacs-mac --with-starter
ln -s /usr/local/opt/emacs-mac/Emacs.app /Applications/Emacs.app

figlet "Installing DOOM Emacs" | lolcat
git clone https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install
