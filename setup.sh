#!/bin/bash

# Author: baichen318@foxmail.com

set -ex
cur=$(cd "$(dirname -- "$0")"; pwd)
cd $cur

# copy .vimrc & bundle
mkdir -p ~/.vim/bundle
cp -rf Vundle.vim ~/.vim/bundle
cp -rf .vimrc ~
user=`whoami`
sudo chown ${user}:${user} ~/.viminfo
