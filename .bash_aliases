alias ls='ls --color'
alias grep='grep --color'

alias vi="nvim"
alias vim="nvim"

# kubernetes-client
if [ -x "$(command -v kubectl)" ]; then
    source <(kubectl completion bash)
    complete -o default -F __start_kubectl k
fi
alias k="kubectl"
