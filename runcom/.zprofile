# Source the dotfiles (order matters)
# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
# for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
# for DOTFILE in "$DOTFILES_DIR"/system/.{function,function_*,path,env,alias,grep,prompt,nvm,completion,custom}; do
#echo "zprofile loaded correctly"
#for file in ~/.{alias,function,path,env}; do
	#echo $file
	#[ -r "$file" ] && [ -f "$file" ] && source "$file";
#done;
#unset file;
