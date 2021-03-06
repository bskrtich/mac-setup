#!/bin/bash
set -euo pipefail

# Change to script dir
cd "${0%/*}"

source ../_common.sh

####
## Atom
## Setup git
####

green "Setup git config"
mkdir -p ~/.git

# Move to app dir so PWD will give the correct folder
cd ../../app/git

green "Symlink config.cson"
rm -f ~/.gitconfig
ln -s `pwd`/gitconfig ~/.gitconfig
