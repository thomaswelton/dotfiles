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
  ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
fi

# Upgrade homebrew
brew update

# Tap repos
brew tap homebrew/dupes

# Install homebrew packages
brew install grc coreutils spark hub php55

exit 0
