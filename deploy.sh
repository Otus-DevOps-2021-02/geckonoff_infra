#!/bin/bash

sudo apt-get update -y
sudo apt-get install git -y

git clone -b monolith https://github.com/express42/reddit.git /home/yc-user/

cd reddit && bundle install

puma -d &
