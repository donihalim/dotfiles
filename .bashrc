[[ $- != *i* ]] && return

[[ -f "$HOME"/.bash_aliases ]] && source "$HOME"/.bash_aliases
[[ -d "$HOME"/.bash_history ]] || mkdir "$HOME"/.bash_history

set -o vi
bind -m vi-insert '\c-l':clear-screen
bind -m vi-insert '\c-e':end-of-line
bind -m vi-insert '\c-a':beginning-of-line
bind -m vi-insert '\c-h':backward-kill-word
bind -m vi-insert '\c-k':kill-line

shopt -s checkwinsize
shopt -s cmdhist
shopt -s cdspell
shopt -s cdable_vars
shopt -s histappend

umask 002

# bash history
export HISTFILESIZE=-1
export HISTSIZE=-1
export HISTCONTROL=ignoredups
HISTFILE=$HOME/.bash_history/$(date +%Y-%m)

# pipx completion
if [ -x "$(command -v pipx)" ]; then
    eval "$(register-python-argcomplete pipx)"
fi

# kubectl completion
if [ -x "$(command -v kubectl)" ]; then
    # shellcheck source=/dev/null
    source <(kubectl completion bash)
    complete -o default -F __start_kubectl k
    alias k="kubectl"
fi

# helm completion
if [ -x "$(command -v helm)" ]; then
    # shellcheck source=/dev/null
    source <(helm completion bash)
    complete -o default -F __start_helm h
    alias h="helm"
fi
