#! /bin/bash
set -e

cd "$(dirname "$0")"

install -Cv -m 644 "profile.sh"      "$HOME/.profile"
install -Cv -m 644 "bashrc.sh"       "$HOME/.bashrc"
install -Cv -m 644 "bash_profile.sh" "$HOME/.bash_profile"
install -Cv -m 644 "zshrc.sh"        "$HOME/.zshrc"
