#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# If we're on a Mac lets set our defaults
if [ "$(uname -s)" == "Darwin" ]
then
  echo "  Installing Homebrew for you."

  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
  fi

fi

repos=(
	'josegonzalez/homebrew-php'
)

for repo in ${repos[@]} ; do
  brew tap $repo
done

packages=(
	'git-flow'
	'git-extras'
	'php55'
	'autojump'
)

for package in ${packages[@]} ; do
  brew install $package
done


exit 0
fi
