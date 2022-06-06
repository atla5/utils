#!/bin/bash

# initialize hot corners
defaults write ~/Library/Preferences/com.apple.dock.plist wvous-bl-corner 4
defaults write ~/Library/Preferences/com.apple.dock.plist wvous-bl-corner 2

# increase the mouse speed
defaults write -g com.apple.mouse.scaling  2.5
defaults read -g com.apple.swipescrolldirection

# dock preferences
defaults write com.apple.Dock autohide 1
defaults write com.apple.Dock mineffect scale
defaults write com.apple.Dock largesize 70

# git projects
mkdir ~/projects
mkdir ~/projects/personal
git config --global user.name "atla5"
git config --global user.email "aidan.keefe.s@gmail.com"
git clone https://github.com/atla5/personal-site.git ~/projects/personal/personal-site
git clone https://github.com/atla5/resume.git ~/projects/personal/resume
git clone https://github.com/atla5/utils.git ~/projects/personal/utils

# copy some basic aliases into the bash_profile
cat >> ~/.bash_profile <<EOL
# general
alias l="ls"
alias ls!="ls -alrt"

# git
alias glog="git log --oneline"
alias glog-me="git log --oneline --author='Aidan Sawyer'"
EOL
source ~/.bash_profile

# install dependencies/software
xcode -select -- install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install node

# reset and say goodbye
echo "initialization script complete. resetting..."
reset 
