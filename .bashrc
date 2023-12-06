test -z "$PS1" && return
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

umask 002

shopt -s histappend
HISTCONTROL=ignoredups
PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/\~}\007"'
PROMPT_COMMAND="history -a; history -n; $PROMPT_COMMAND"
export HISTFILESIZE=-1
export HISTSIZE=-1
HISTFILE=$HOME/.bash_history/$(date +%Y-%m)

# fast node manager (fnm)
# https://github.com/Schniz/fnm
export FNM_DIR="$XDG_DATA_HOME/fnm"
export FNM_BIN="$FNM_DIR/bin"
export PATH=$PATH:$FNM_BIN
eval "$(fnm env --use-on-cd)"

# enable bash completion in interactive shells
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
