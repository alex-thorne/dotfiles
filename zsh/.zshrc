export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
#ZSH_THEME="gruvbox"
#ZSH_THEME="agnoster"
#SOLARIZED_THEME="dark"

plugins=(git)

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi
