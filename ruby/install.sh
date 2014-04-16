#!/bin/bash

if ! [ "$(type -t rvm)" = "file" ]
then
  echo "  Installing rvm for you."
  \curl -sSL https://get.rvm.io | bash -s stable --ignore-dotfiles > /tmp/rvm-install.log
fi
