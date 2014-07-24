#!/bin/bash

set -e
export DEBIAN_FRONTEND=noninteractive
set -x

apt-get update

apt-get install -y apache2
apt-get install -y php5
apt-get install -y mysql-server
apt-get install -y libapache2-mod-php5

# PHP extension
apt-get install -y php5-mysql
apt-get install -y php-apc
apt-get install -y php5-gd

# runit
mkdir /etc/service/apache
mkdir /etc/service/mysql

cp /build/runit/apache.sh /etc/service/apache/run
cp /build/runit/mysql.sh /etc/service/mysql/run