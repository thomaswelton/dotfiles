#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# If we're on a Mac lets set our defaults
if [ "$(uname -s)" == "Darwin" ]
then
	# Check for Homebrew
	if test ! $(which brew)
	then
	  echo "  Installing Homebrew for you."
	  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)" > /tmp/homebrew-install.log
	else
		# Upgrade homebrew
		brew update
	fi

	brew bundle $HOME/.dotfiles/homebrew/Brewfile
	exit 0
fi
