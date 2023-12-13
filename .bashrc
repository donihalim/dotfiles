[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

test -f "$HOME"/.bash_aliases && . "$HOME"/.bash_aliases
test -d "$HOME"/.bash_history/ || mkdir "$HOME"/.bash_history/

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

export HISTFILESIZE=-1
export HISTSIZE=-1
export HISTCONTROL=ignoredups
HISTFILE=$HOME/.bash_history/$(date +%Y-%m)

if [ -x "$(command -v pipx)" ]; then
    eval "$(register-python-argcomplete pipx)"
fi

case ${TERM} in
  alacritty*|tmux*)
    PROMPT_COMMAND+=("history -a; history -n; printf \"\033]0;%s@%s:%s\007\" \"${USER}\" \"${HOSTNAME%%.*}\" \"${PWD/#$HOME/\~}\"")
    ;;
  screen*)
    PROMPT_COMMAND+=("history -a; history -n; printf \"\033_%s@%s:%s\033\\\" \"${USER}\" \"${HOSTNAME%%.*}\" \"${PWD/#$HOME/\~}\"")
    ;;
esac
