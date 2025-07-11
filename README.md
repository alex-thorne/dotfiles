# Dotfiles Repository

My current approach to managing dotfiles.

## Dependancies

1. Stow

## Usage

1. Clone `dotfiles` repository to local machine. (~/.dotfiles)

    ```bash
    git clone git@github.com:alex-thorne/dotfiles.git ~/.dotfiles
    ```

2. Run `install.sh` to adopt dotfiles from `dotfiles` repository to user `$HOME`.

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

Install script passes `--dotfiles` stow arg, replacing "dot-..." naming convention.
By default stow will not overwrite existing files found with attempted packages to be stowed. Conflicts should be resolved manually via backup/move/delete or `--adopt`.