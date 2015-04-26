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
	  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" > /tmp/homebrew-install.log
	else
		# Upgrade homebrew
		brew update
	fi

	repos=(
	'josegonzalez/homebrew-php'
	)

	for repo in ${repos[@]} ; do
	  brew tap $repo
	done

	packages=(
	'ant'
	'grc'
	'coreutils'
	'spark'
	'git-flow'
	'git-extras'
	'cabal-install'
	'php55'
	'php55-mcrypt'
	'ctags'
	'autojump'
	'phantomjs'
	'casperjs --devel'
	'boot2docker'
	)

	for package in ${packages[@]} ; do
	  brew install $package
	done


	exit 0
fi
