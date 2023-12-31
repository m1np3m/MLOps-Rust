#!/usr/bin/env bash

# git config
git config --global user.name "m1np3m"
git config --global user.email "KendrickPh4m@gmail.com"

#some setup stuff for the dev environment
#install nodejs
curl -fsSL https://deb.nodesource.com/setup_19.x | sudo -E bash - &&\
sudo apt-get install -y nodejs

#install GitHub Copilot CLI
sudo npm install -g @githubnext/github-copilot-cli

#authenticate with GitHub Copilot
github-copilot-cli auth

