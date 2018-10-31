#!/bin/bash
echo "---------- MY LOCAL SETTINGS! ----------"

echo "<<<<<<<<<<<<<<<<<<<< INSTALLING XCODE LINE TOOLS >>>>>>>>>>>>>>>>>>>>"
xcode-select --install

#sudo spctl --master-disable

# Install Homebrew
echo "<<<<<<<<<<<<<<<<<<<< INSTALLING HOMEBREW >>>>>>>>>>>>>>>>>>>>"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#Install zsh
echo "<<<<<<<<<<<<<<<<<<<< INSTALLING SOFTWARE >>>>>>>>>>>>>>>>>>>>"
brew tap caskroom/fonts
brew tap caskroom/cask
brew tap caskroom/versions 
brew install python
brew install node
brew install git
brew install asciinema
brew install yarn --without-node
brew install htop
brew cask install font-source-code-pro
brew cask install font-fira-code
brew cask install visual-studio-code
brew cask install docker
brew cask install iterm2
brew cask install hyper
brew cask install google-chrome
hyper i verminal
hyper i hyper-tabs-enhanced
npm i -g gitmoji-cli
npm install -g spaceship-prompt
npm install -g hyperlayout hpm-cli
hpm install hyperlayout

#Install oh-my-zsh
echo "<<<<<<<<<<<<<<<<<<<< INSTALL AND CONFIGURE ZSH AND OH-MY-ZSH >>>>>>>>>>>>>>>>>>>>"
brew install zsh zsh-completions
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#Setting zsh as default SHELL
echo "<<<<<<<<<<<<<<<<<<<< SETTING A DEFAULT SHELL >>>>>>>>>>>>>>>>>>>>"
# Note
# Add the line `/usr/local/bin/zsh` at the end of the file shells, it's located at etc folder
# Default Shell ZSH
chsh -s $(which zsh)
chsh -s /usr/local/bin/zsh
# Default Shell Bash
#chsh -s /bin/bash

#Remove any existing configuration 
#rm -rf ~/.vim ~/.vimrc ~/.zshrc 2> /dev/null
rm -f ~/.bash_profile 2> /dev/null
rm -f ~/.zshrc 2> /dev/null
rm -f ~/.function 2> /dev/null
rm -f ~/.path 2> /dev/null
rm -f ~/.env 2> /dev/null
rm -f ~/.alias 2> /dev/null

#Creating Necessary Directories
# mkdir -p ~/.config ~/.config/nvim

echo "<<<<<<<<<<<<<<<<<<<< LINKING CONFIG FILES >>>>>>>>>>>>>>>>>>>>"
#Link the bash_profile file for use of Bash Shell
ln -s ~/dotfiles/runcom/.bashrc ~/.bashrc
ln -s ~/dotfiles/runcom/.bash_profile ~/.bash_profile
#Link the bash_profile file for use of Zsh Shell
ln -s ~/dotfiles/runcom/.zshrc ~/.zshrc
ln -s ~/dotfiles/runcom/.zprofile ~/.zprofile

#Linking Config Files
ln -s ~/dotfiles/config/.hyper.js ~/.hyper.js
ln -s ~/dotfiles/config/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/config/.gitignore_global ~/.gitignore_global

#Linkin Environment Files
ln -s ~/dotfiles/system/.function ~/.function
ln -s ~/dotfiles/system/.path ~/.path
ln -s ~/dotfiles/system/.env ~/.env
ln -s ~/dotfiles/system/.alias ~/.alias

echo
echo
echo "Set up completed. Restart the shell to start rocking this."


