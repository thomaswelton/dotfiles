#!/bin/bash

if ! [ "$(type -t rvm)" = "file" ]
then
  echo "  Installing rvm for you."
  \curl -sSL https://get.rvm.io | bash -s stable --ignore-dotfiles > /tmp/rvm-install.log
fi

source ~/.rvm/scripts/rvm

rvm install ruby-2.0.0-p451
rvm use ruby-2.0.0-p451 --default

gems=(
scss-lint
)

gem install ${gems[@]}