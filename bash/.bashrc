# General
export EDITOR="code --wait"
export VISUAL="$EDITOR"
export BROWSER='/mnt/c/Program Files/Google/Chrome/Application/chrome.exe'
export PATH="${HOME}/.local/bin:/usr/local/go/bin:${HOME}/go/bin:${PATH}"
export NO_PROXY=localhost,127.0.0.1,10.96.0.0/12,192.168.59.0/24,192.168.49.0/24,192.168.39.0/24


if [ -f ~/.aliases ]; then
    . ~/.aliases
fi