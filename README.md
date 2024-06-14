# Dotfiles Repository
My current approach to managing dotfiles. Compliments my ansible based development environment setup automation.

## Dependancies
1. Stow 

    [Stow](https://www.gnu.org/software/stow/) is a popular tool for managing dotfiles. It helps you symlink your dotfiles to the appropriate locations in your home directory. 

    For more information on how to use Stow, refer to its [official documentation](https://www.gnu.org/software/stow/manual/stow.html).


## Usage
1. Clone `dotfiles` repository to local machine. (~/.dotfiles)
```bash
git clone git@github.com:alex-thorne/dotfiles.git ~/.dotfiles
```
2. Run `install.sh` to adopt dotfiles from `dotfiles` repository to user `$HOME`. (`stow --adopt` overwrites any existing files! Move/backup existing dotfiles in your user `$HOME` first if needed)
```bash
cd ~/.dotfiles
chmod +x ./install.sh
./install.sh
```

## Notes

Stow tree structure (`->` indicates created symlink)
```noformat
/Users/alex
├── .dotfiles
│   ├── vim
│   │   └── .vimrc
├── .vimrc -> .dotfiles/vim/.vimrc
```
