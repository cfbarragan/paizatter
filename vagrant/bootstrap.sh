#!/usr/bin/env bash

sudo apt-get update

#GIT
sudo apt-get install -y git

#NODE
sudo apt-get install xz-utils 
cd /tmp
wget https://nodejs.org/dist/v6.11.0/node-v6.11.0-linux-x64.tar.xz
tar -C /usr/local --strip-components 1 -xJf node-v6.11.0-linux-x64.tar.xz

#YARN
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn

#SASS
sudo apt-get install ruby1.9.1-dev -y
sudo gem install compass

#MONGO
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list
sudo apt-get update
sudo apt-get install -y mongodb-org=3.2.4 mongodb-org-server=3.2.4 mongodb-org-shell=3.2.4 mongodb-org-mongos=3.2.4 mongodb-org-tools=3.2.4
sudo service mongod start

#SAMBA
sudo apt-get install samba -y
cd /home/vagrant
mkdir courseNodeJsShared
cp /vagrant/smb.conf /etc/samba/
(echo vagrant; echo vagrant; echo vagrant) |sudo smbpasswd -sa vagrant
sudo service smbd restart
sudo chmod 777 courseNodeJsShared

