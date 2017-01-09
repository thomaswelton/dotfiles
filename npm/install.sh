#!/bin/sh
#
# Npm
#
# This installs some of the common dependencies needed (or at least desired)
# using npm.

# Check for NPM
if test ! $(which npm)
then
  echo "  Installing NPM for you."
  brew install npm
fi

## Install packages from package.json
## npm --prefix $HOME/.dotfiles/npm install $HOME/.dotfiles/npm
