#! /bin/bash
set -ex

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p ~/bin
cp "$DIR"/bin/* ~/bin
cp "$DIR/bashrc.sh" ~/.bashrc
