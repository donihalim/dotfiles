alias grep='grep --color=auto'

alias ls='ls --color=auto'
alias l="ls --group-directories-first"
alias ll="ls -lh --group-directories-first"
alias lll="ls -alh --group-directories-first"

alias vi="nvim"
alias vim="nvim"

# kubernetes-client
if [ -x "$(command -v kubectl)" ]; then
    # https://www.shellcheck.net/wiki/SC1090
    # shellcheck source=/dev/null
    source <(kubectl completion bash)
    complete -o default -F __start_kubectl k
    alias k="kubectl"
fi
