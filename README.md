# Twitterhx  - open source Twitter-like web service with MEAN stack

Bootstrap commands:

### NODE
sudo apt-get install xz-utils 
cd /tmp
wget https://nodejs.org/dist/v6.11.0/node-v6.11.0-linux-x64.tar.xz
tar -C /usr/local --strip-components 1 -xJf node-v6.11.0-linux-x64.tar.xz

### YARN
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn

### SASS
sudo apt-get install ruby1.9.1-dev -y
sudo gem install compass

### MONGODB
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update
sudo apt-get install -y mongodb-org

## Setup
* yarn install
* yarn run bower
* yarn run build

## Run locally
yarn run start
