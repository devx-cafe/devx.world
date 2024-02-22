#!/usr/bin/env bash

rvm use `cat .ruby-version`
bundle update && bundle install

npm install cspell --global

git config --local --get include.path | grep -e ../.gitconfig || git config --local --add include.path ../.gitconfig


