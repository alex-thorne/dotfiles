#generic ui stuff
alias la='ls -A'
alias ll='ls -l'
alias vi='vim'
alias cp='cp -v'
alias home="cd ~ && echo '$PWD'"

#root vim: use user's vimrc when editing as root
alias rvim='sudoedit'

#dotfile editing
alias vimrc='vim ~/.vimrc'
alias bashrc='vim ~/.bashrc'
alias zshrc='vim ~/.zshrc'
alias aliases='vim ~/.bash_aliases'

#Custom Functions
mkdircd() {
  mkdir -p -- "$1" && cd -P -- "$1"
  }

installpackage () {
  sudo apt-get update
  sudo apt-get -y upgrade
  sudo apt-get install $1
  installdate=$(date +"%Y-%m-%d")
  echo -e "$installdate Installed package $1" >> /path/to/changelog.txt
  sudo apt-get autoremove
  }

removepackage () {
  sudo apt-get remove $1
  removedate=$(date +"%Y-%m-%d")
  echo -e "$removedate Removed package $1" >> /path/to/changelog.txt
  sudo apt-get autoremove
  }

extract () {
  if [ -f $1 ] ; then
    case $1 in
        *.tar.bz2)   tar xvjf $1    ;;
        *.tar.gz)    tar xvzf $1    ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       rar x $1       ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xvf $1     ;;
        *.tbz2)      tar xvjf $1    ;;
        *.tgz)       tar xvzf $1    ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)           echo "don't know how to extract '$1'..." ;;
    esac
  else
    echo "'$1' is not a valid file!"
  fi
}

# launch app and immediately disown, allowing terminal to be closed
function daemonize() { nohup $@ >/dev/null 2>&1 & }



