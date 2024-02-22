#!/usr/bin/env bash

bundle update && bundle install
bash --login -c "rvm use `cat .ruby-version`"

npm install cspell --global

git config --local --get include.path | grep -e ../.gitconfig || git config --local --add include.path ../.gitconfig


