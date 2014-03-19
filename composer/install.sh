#!/bin/sh
#
# Composer
#
# Global installation of composer packages

packages=(
'phpunit/phpunit=3.7.*'
'phpmd/phpmd=1.4.*'
'squizlabs/php_codesniffer=*'
'phpdocumentor/phpdocumentor=2.*'
)

for package in ${packages[@]} ; do
  composer global require $package
done
