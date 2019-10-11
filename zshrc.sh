if [ -n "$SSH_CONNECTION" ]; then
  export PROMPT="[%7F%D{%H:%M:%S} %5F%n@%m %B%4F%1/%b%f]$ "
else
  export PROMPT="[%7F%D{%H:%M:%S} %2F%n@%m %B%4F%1/%b%f]$ "
fi

if [ -f "$HOME/.profile" ]; then
  . "$HOME/.profile"
fi
