alias h="history 10"
alias hg="history | grep"
alias c="clear"
alias lg="ls | grep $1"
alias llg="ls -l | grep $1"

alias docker_logs="watch -n 1 'docker logs $1 | tail'"
alias watch_gpu="watch -n 5 nvidia-smi"

alias gs="git status"
alias gsu="git submodule update --recursive"
alias gl="git log"
alias gc="git checkout"
alias gp="git pull"
