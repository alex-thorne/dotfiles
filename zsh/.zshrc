export ZSH="$HOME/.oh-my-zsh"
export GEM_HOME=~/.ruby
export PATH="$PATH:$HOME/.ruby/bin:$HOME/gems/bin"

ZSH_THEME="robbyrussell"
#ZSH_THEME="gruvbox"
#ZSH_THEME="agnoster"
#SOLARIZED_THEME="dark"

plugins=(git git-extras command-not-found compleat dirhistory history lol mvn pip python screen sudo web-search wd asdf)

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

if [ =f ~/.secrets/.private_aliases ]; then
    . ~/.secrets/.private_aliases
fi