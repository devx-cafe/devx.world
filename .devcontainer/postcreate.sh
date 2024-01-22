#!/usr/bin/env bash

git config --local --get include.path | grep -e ../.gitconfig || git config --local --add include.path ../.gitconfig

bundle update && bundle install

npm install cspell --global


