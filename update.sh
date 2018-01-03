#!/usr/bash 
## referencing https://scotch.io/tutorials/how-to-create-a-vagrant-base-box-from-an-existing-one

## update VM packages
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install vim
sudo apt-get install apache2
sudo apt-get install mysql-server libapache2-mod-auth-mysql php5-mysql
sudo mysql_install_db
sudo /usr/bin/mysql_secure_installation
sudo apt-get install php5 libapache2-mod-php5 php5-mcrypt
sudo apt-get install php5-cgi php5-cli php5-curl php5-common php5-gd php5-mysql
sudo service apache2 restart

## make the box as small as possible
sudo apt-get clean

## zero out rest of drive
sudo dd if=/dev/zero of=/EMPTY bs=1M
sudo rm -f /EMPTY

## clear bash history and exit VM
cat /dev/null > ~/.bash_history && history -c && exit
