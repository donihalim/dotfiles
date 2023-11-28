export EDITOR="nvim"
export TERMINAL="st"

export CM_MAX_CLIPS=0
export CM_DIR="$HOME/tmp/clipmenu"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0"
export GOPATH="$XDG_DATA_HOME/go"
export GOMODCACHE="$XDG_CACHE_HOME/go/mod"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"

export _JAVA_AWT_WM_NONREPARENTING=1

PATH="$PATH:/sbin"
PATH="$PATH:$HOME/.local/bin"
PATH="$PATH:$HOME/.local/bin/statusbar"
export PATH

if [[ -f ~/.bashrc ]] ; then
    # shellcheck source=/dev/null
    . ~/.bashrc
fi
