#!/bin/sh

if [ ! -d "playground" ]; then
  git clone https://github.com/bramk/playground
else
  cd playground
  git pull
  cd ..
fi

echo `pwd`
cp -v playground/coreos/user-data/`uname -n` /var/lib/coreos-vagrant/
