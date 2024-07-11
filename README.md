# Dotfiles Repository

My current approach to managing dotfiles.

## Dependancies

1. Stow

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
