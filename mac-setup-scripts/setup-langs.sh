#!/usr/bin/env zsh

figlet "Setting up Golang" | lolcat
go install golang.org/x/tools/gopls@v0.20.0
go install github.com/fatih/gomodifytags@latest
go install github.com/cweill/gotests/gotests@latest
go install github.com/x-motemen/gore/cmd/gore@v0.6.1 


figlet "Setting up Web" | lolcat
#npm create stylelint@latest
npm -g install js-beautify

figlet "Setting up Python" | lolcat
brew install pipenv
pip install isort
pip install pytest
