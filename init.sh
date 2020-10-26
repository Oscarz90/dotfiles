echo "<<<<<<<<<<<<<<<<<<<< LINKING CONFIG FILES >>>>>>>>>>>>>>>>>>>>"
#Link the zshrc file for use of Zsh Shell
ln -s ~/dotfiles/runcom/.zshrc ~/.zshrc

#Linking Config Files
# ln -s ~/dotfiles/config/.gitconfig ~/.gitconfig
# ln -s ~/dotfiles/config/.gitignore_global ~/.gitignore_global

#Linkin Environment Files
ln -s ~/dotfiles/system/.function ~/.function
ln -s ~/dotfiles/system/.path ~/.path
ln -s ~/dotfiles/system/.environment ~/.environment
ln -s ~/dotfiles/system/.alias ~/.alias

echo
echo
echo "Set up completed. Restart the shell to start rocking this."