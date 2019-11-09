if [ -f "/.dockerenv" ]; then
  export PS1="[\[\e[37m\]\t \[\e[33m\]\u@\h\[\e[1m\e[34m\] \W\[\e[0m\]]\\$ "
elif [ -n "$SSH_CONNECTION" ]; then
  export PS1="[\[\e[37m\]\t \[\e[35m\]\u@\h\[\e[1m\e[34m\] \W\[\e[0m\]]\\$ "
else
  export PS1="[\[\e[37m\]\t \[\e[32m\]\u@\h\[\e[1m\e[34m\] \W\[\e[0m\]]\\$ "
fi

export HISTCONTROL="ignoreboth"

if [ -f "$HOME/.profile" ]; then
  . "$HOME/.profile"
fi
