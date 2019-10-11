#! /bin/bash
cd $(dirname "${BASH_SOURCE[0]}")

if [ "$1" = "" ]; then
  CP="cp -i"
elif [ "$1" = "-f" ]; then
  CP="cp"
  set -x
elif [ "$1" = "--force" ]; then
  CP="cp"
  set -x
else
  echo "Unknown option: $1" >&2
  exit 1
fi

$CP profile.sh ~/.profile
$CP bashrc.sh ~/.bashrc
$CP bash_profile.sh ~/.bash_profile
$CP zshrc.sh ~/.zshrc
