#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)" > /tmp/homebrew-install.log
fi

# Upgrade homebrew
brew update

# Tap repos
brew tap phinze/cask

packages=(
grc
coreutils
spark
hub
brew-cask
cabal-install
)

for package in ${packages[@]} ; do
  brew install $package
done

exit 0
