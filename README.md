# Dotfiles Repository

My current approach to managing dotfiles. Compliments my ansible based development environment setup automation.

## Dependancies
1. Stow 

[Stow](https://www.gnu.org/software/stow/) is a popular tool for managing dotfiles. It helps you symlink your dotfiles to the appropriate locations in your home directory. To install Stow, you can use the following commands:

For more information on how to use Stow, you can refer to its [official documentation](https://www.gnu.org/software/stow/manual/stow.html).


## Usage

1. Clone `dotfiles` repository to local machine. (~/.dotfiles)
```bash
git clone git@github.com:alex-thorne/dotfiles.git ~/.dotfiles
```
2. Symlink files from `dotfiles` repository to user `$HOME` using Stow* 
```bash
stow git
stow vim
stow zsh
```


## Notes
#### Stowing a file:
```bash
alex@computer:~/.dotfiles$ stow vim

/Users/alex
├── .dotfiles
│   ├── vim
│   │   └── .vimrc
├── .vimrc -> .dotfiles/vim/.vimrc
```