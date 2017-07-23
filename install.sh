#! /bin/bash
cd $(dirname "${BASH_SOURCE[0]}")
set -ex

mkdir -p ~/bin
cp bin/* ~/bin
cp bashrc.sh ~/.bashrc
cp bash_profile.sh ~/.bash_profile
