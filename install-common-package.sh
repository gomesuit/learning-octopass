#!/bin/bash

curl -s https://packagecloud.io/install/repositories/linyows/octopass/script.rpm.sh | bash
yum install -y octopass
# curl https://raw.githubusercontent.com/linyows/octopass/master/octopass.conf.example -sS -o /etc/octopass.conf
cp /vagrant/octopass.conf /etc/octopass.conf
