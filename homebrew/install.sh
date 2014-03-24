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
brew tap josegonzalez/homebrew-php

packages=(
grc
coreutils
spark
hub
brew-cask
cabal-install
php55
php55-mcrypt
josegonzalez/php/composer
)

for package in ${packages[@]} ; do
  brew install $package
done

applications=(
google-chrome
firefox
spotify
sequel-pro
virtualbox
vagrant
tower
cyberduck
transmission
adobe-creative-cloud
qlcolorcode
qlstephen
qlmarkdown
quicklook-json
qlprettypatch
)

for application in ${applications[@]} ; do
  brew cask install $application
done

exit 0
