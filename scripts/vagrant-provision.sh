#! /usr/bin/env bash

apt-get update
apt-get install -y curl
curl -sL https://deb.nodesource.com/setup_10.x | bash -
apt-get install -y nodejs
wget -qO - https://www.mongodb.org/static/pgp/server-4.0.asc | apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.0.list
apt-get update
apt-get install -y mongodb-org
