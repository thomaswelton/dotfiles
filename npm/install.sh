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

packages=(
bower
coffee-script
grunt-cli
nodeunit
)

for package in ${packages[@]} ; do
  npm install $package -g
done
