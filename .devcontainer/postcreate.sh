#!/bin/bash --login

bundle update
rvm use 3.2.3
bundle install

npm install cspell --global

git config --global --add safe.directory /workspaces/thetechcollective.dev

git config --local --get include.path | grep -e ../.gitconfig || git config --local --add include.path ../.gitconfig



