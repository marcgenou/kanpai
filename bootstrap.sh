#!/usr/bin/env bash

#apt-get install software-properties-common
apt-add-repository -y ppa:brightbox/ruby-ng
apt-get update

debconf-set-selections <<< 'mysql-server mysql-server/root_password password kanpai'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password kanpai'
apt-get install -y ruby2.2 ruby2.2-dev curl git libmysqlclient-dev mysql-server nodejs apache2 unoconv
gem install rails --version 4.2.0 --no-ri --no-rdoc
cd /vagrant/kanpai/db
./create_seeds
cd ..
gem pristine --all
bundle install
#mysql -u root -pkanpai -e "create database kanpai_development CHARACTER SET utf8 COLLATE utf8_general_ci;"
#mysql -u root -pkanpai -e "create database kanpai_test CHARACTER SET utf8 COLLATE utf8_general_ci;"
#mysql -u root -pkanpai -e "create database kanpai_production CHARACTER SET utf8 COLLATE utf8_general_ci;"
rake db:setup
rake geocode:all CLASS=Experience SLEEP=0.25 BATCH=100
#nohup rails server -b 0.0.0.0 &
