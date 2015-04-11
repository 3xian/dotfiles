export PS1="\[\e[36m\]\u@\h:\[\e[33m\]\w \[\e[36m\]~>\[\e[m\] "
export CLICOLOR=1

alias l='ls -lhFG'
alias ll='ls -lhFG'
alias la='ls -lhFGA'
alias ..='cd ..'
alias grep='grep --color'
alias fgrep='fgrep --color'
alias pg='ps -ef | grep'
alias listen='lsof -i -P | grep LISTEN'
alias net='netstat -tap'
