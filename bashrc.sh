if [ -n "$PS1" ]; then
  export PS1="[\[\e[37m\]\t \[\e[32m\]\u@\h\[\e[1m\e[34m\] \W\[\e[0m\]]\$ "
  which -s fortune && (echo; fortune; echo)
fi

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

alias "ag"="ag --color-path 34 --color-match 32 --color-line-number 36"
alias "tree"="tree -Chp"
alias "be"="bundle exec"
alias "gr"="git remote -v"
alias "gb"="git branch"
alias "gs"="git status"
alias "gd"="git diff"

if [ -d "$HOME/.rbenv" ]; then
  eval "$(rbenv init -)"
fi

if [ -f "$HOME/.bash_local" ]; then
  source "$HOME/.bash_local"
fi
