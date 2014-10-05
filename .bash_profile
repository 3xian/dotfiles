export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias l='ls -lhFG'
alias ll='ls -lhFG'
alias la='ls -lhFGA'
alias ..='cd ..'
alias grep='grep --color'
alias pg='ps -ef | grep'
alias listen='lsof -i -P | grep LISTEN'
