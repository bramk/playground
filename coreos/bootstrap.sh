#!/bin/sh

if [ ! -d "playground" ]; then
  git clone https://github.com/bramk/playground
else
  cd playground
  git pull
fi

cp -v user-data-`uname -n` /var/lib/coreos-vagrant/
