#! /usr/bin/env bash

apt-get update
# curl
apt-get install -y curl

# nodejs
curl -sL https://deb.nodesource.com/setup_10.x | bash -
apt-get install -y nodejs

# yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
apt-get update && apt-get install -y yarn

# mongodb community
wget -qO - https://www.mongodb.org/static/pgp/server-4.0.asc | apt-key add -
echo "deb http://mirrors.aliyun.com/mongodb/apt/ubuntu xenial/mongodb-org/4.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.0.list
apt-get update && apt-get install -y mongodb-org

# redis
apt-get install -y redis-server
