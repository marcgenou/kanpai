#!/usr/bin/env bash

#apt-get install software-properties-common
apt-add-repository -y ppa:brightbox/ruby-ng
apt-get update

debconf-set-selections <<< 'mysql-server mysql-server/root_password password kanpai'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password kanpai'
apt-get install -y ruby2.2 ruby2.2-dev curl git libmysqlclient-dev mysql-server nodejs apache2
gem install rails --version 4.2.0 --no-ri --no-rdoc
cd /vagrant/kanpai
bundle install
mysql -u root -pkanpai -e "create database kanpai_development"
mysql -u root -pkanpai -e "create database kanpai_test"
mysql -u root -pkanpai -e "create database kanpai_production"
rake db:migrate
nohup rails server -b 0.0.0.0 &
