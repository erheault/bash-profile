# ~/.bashrc: executed by bash(1) for non-login shells.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\e[0;32m[\u@\h \e[1;33m\w\e[0;32m \e[0;91m\$(parse_git_branch)\e[0;32m]\e[0m\n\$ "

export LS_OPTIONS="--color=auto"
LS_COLORS=$LS_COLORS:'di=1;93:ow=1;31'
export LS_COLORS
alias ls="ls $LS_OPTIONS"
alias la="ls $LS_OPTIONS -a"
alias ll="ls $LS_OPTIONS -l"
alias l="ls $LS_OPTIONS -lA"
