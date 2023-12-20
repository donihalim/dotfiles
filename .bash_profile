PATH="$PATH:/sbin"
PATH="$PATH:$HOME/.local/bin"
PATH="$PATH:$HOME/.local/bin/statusbar"
export PATH

export EDITOR="nvim"
export TERMINAL="alacritty"

# XDG base directory
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"

# xinitrc
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"

# GTK 2
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0"

# clipmenu
export CM_MAX_CLIPS=0
export CM_DIR="$XDG_DATA_HOME/clipmenu"

# go
export GOPATH="$XDG_DATA_HOME/go"
export GOMODCACHE="$XDG_CACHE_HOME/go/mod"

# npm
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"

# Rust#Cargo
export CARGO_HOME="$XDG_DATA_HOME/cargo"

# Kubernetes
export KUBECONFIG="$XDG_CONFIG_HOME/kube" 
export KUBECACHEDIR="$XDG_CACHE_HOME/kube"

# https://wiki.archlinux.org/title/dwm#Fixing_misbehaving_Java_applications
export _JAVA_AWT_WM_NONREPARENTING=1

if [[ -f "$HOME"/.bashrc ]] ; then
    . "$HOME"/.bashrc
fi
