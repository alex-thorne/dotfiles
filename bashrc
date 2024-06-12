# General
{% if is_wsl %}
export EDITOR="code --wait"
export VISUAL="$EDITOR"
export BROWSER='/mnt/c/Program Files/Google/Chrome/Application/chrome.exe'
{% endif %}
export PATH="${HOME}/.local/bin:/usr/local/go/bin:${HOME}/go/bin:${PATH}"

# GPG
export GPG_TTY="$(tty)"

# Autocompletion for Hashicorp tools
complete -C /usr/bin/terraform terraform
complete -C /usr/bin/vault vault

# Pyenv
export PYENV_ROOT="{{ pyenv_root }}"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# NVM
export NVM_DIR="{{ nvm_root }}"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi