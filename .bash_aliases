alias grep='grep --color=auto'
alias diff='diff --color=auto'

alias ls='ls --color=auto'
alias l="ls --group-directories-first"
alias ll="ls -lh --group-directories-first"
alias lll="ls -alh --group-directories-first"

alias vi="nvim"
alias vim="nvim"

if [ -x "$(command -v kubectl)" ]; then
    # shellcheck source=/dev/null
    source <(kubectl completion bash)
    complete -o default -F __start_kubectl k
    alias k="kubectl"
fi

if [ -x "$(command -v helm)" ]; then
    # shellcheck source=/dev/null
    source <(helm completion bash)
    complete -o default -F __start_helm h
    alias h="helm"
fi
