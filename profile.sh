which fortune &> /dev/null && (echo; fortune; echo)

export PATH="$PATH:$HOME/bin"

case "$(uname)" in
Darwin)
  alias "la"="ls -Gla"
  alias "ll"="ls -Gl"
  alias "ls"="ls -G"

  # netstat -l replacements:
  alias "tcp"="lsof -P -iTCP -sTCP:LISTEN"
  alias "udp"="lsof -P -iUDP"
  ;;
*)
  alias "la"="ls --color -la"
  alias "ll"="ls --color -l"
  alias "ls"="ls --color"
  ;;
esac

pwn() {
  docker run --rm -itv "$(cd "${2:-.}"; pwd):/mnt" -w "/mnt" "${1:-pwn}"
}

alias "awscp"="scp -o 'UserKnownHostsFile=/dev/null' -o 'StrictHostKeyChecking=no'"
alias "awssh"="ssh -o 'UserKnownHostsFile=/dev/null' -o 'StrictHostKeyChecking=no'"
alias "ag"="ag --color-path 34 --color-match 35 --color-line-number 36"
alias "be"="bundle exec"
alias "dc"="docker-compose"
alias "gb"="git branch"
alias "gd"="git diff"
alias "gds"="git diff --staged"
alias "gg"="git log --oneline --graph"
alias "gr"="git remote -v"
alias "gs"="git status"
alias "kc"="kubectl"
alias "tf"="terraform"
alias "tree"="tree -Chp"
alias "tssh"="ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null"

if [ -d "/opt/homebrew" ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if [ -d "$HOME/.rbenv" ]; then
  eval "$(rbenv init -)"
fi

if [ -d "$HOME/.pyenv" ]; then
  eval "$(pyenv init -)"
fi

if [ -d "$HOME/Code/go" ]; then
  export GOPATH="$HOME/Code/go"
fi
