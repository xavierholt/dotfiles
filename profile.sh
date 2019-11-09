which fortune &> /dev/null && (echo; fortune; echo)

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

pwn() {
  docker run --rm -itv "$(cd "${1:-.}"; pwd):/mnt" -w "/mnt" pwn
}

alias "ag"="ag --color-path 34 --color-match 32 --color-line-number 36"
alias "tree"="tree -Chp"
alias "be"="bundle exec"
alias "gr"="git remote -v"
alias "gb"="git branch"
alias "gs"="git status"
alias "gd"="git diff"
alias "kc"="kubectl"

if [ -d "$HOME/.rbenv" ]; then
  eval "$(rbenv init -)"
fi

if [ -d "$HOME/.pyenv" ]; then
  eval "$(pyenv init -)"
fi

if [ -d "$HOME/Code/go" ]; then
  export GOPATH="$HOME/Code/go"
fi