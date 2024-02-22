#!/usr/bin/env bash

bundle update
bash -l -c "rvm use `cat .ruby-version`"
bundle install

npm install cspell --global

git config --local --get include.path | grep -e ../.gitconfig || git config --local --add include.path ../.gitconfig


