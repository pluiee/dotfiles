# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="typewritten/typewritten"
# export TYPEWRITTEN_SYMBOL="$"
export TYPEWRITTEN_ARROW_SYMBOL="➜"
export TYPEWRITTEN_PROMPT_LAYOUT="pure_verbose"

plugins=(
	git 
	H-S-MW
#	git-prompt
)

source $ZSH/oh-my-zsh.sh

alias zshc="nvim ~/.zshrc"

rebasei() {
	if [[ -z $1 ]]; then
		echo "Please provide a number for n."
	else
		git rebase -i HEAD~$1
	fi
}

alias gri=rebasei

# opam configuration
[[ ! -r /Users/pluie/.opam/opam-init/init.zsh ]] || source /Users/pluie/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(zoxide init zsh)"

export EDITOR='nvim'
export VISUAL='nvim'

