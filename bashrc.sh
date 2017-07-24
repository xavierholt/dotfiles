export HISTCONTROL="ignoreboth"
export PATH="$PATH:$HOME/bin"

case "$(uname)" in
Darwin)
  alias "la"="ls -Gla"
  alias "ll"="ls -Gl"
  alias "ls"="ls -G"
  ;;
*)
  alias "la"="ls --color -la"
  alias "ll"="ls --color -l"
  alias "ls"="ls --color"
  ;;
esac

alias "tree"="tree -Chp"
alias "gb"="git branch"
alias "gs"="git status"
alias "gd"="git diff"

if [ -d "~/.rbenv" ]; then
  eval "$(rbenv init -)"
fi

if [ -n "$PS1" ]; then
  export PS1="[\[\e[37m\]\t \[\e[32m\]\u@\h\[\e[1m\e[34m\] \W\[\e[0m\]]\$ "
  which -s fortune && (echo; fortune; echo)
fi
