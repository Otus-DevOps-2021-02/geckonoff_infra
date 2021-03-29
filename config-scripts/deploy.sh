#!/bin/bash

sudo apt-get update -y
sudo apt-get install git -y

git clone -b monolith https://github.com/express42/reddit.git /home/ash/reddit

cd /home/ash/reddit && bundle install

puma -d &
