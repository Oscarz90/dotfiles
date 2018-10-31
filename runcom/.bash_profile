# Source the dotfiles (order matters)
# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
# for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
# for DOTFILE in "$DOTFILES_DIR"/system/.{function,function_*,path,env,alias,grep,prompt,nvm,completion,custom}; do
for file in ~/.{function,env,path,alias}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;
