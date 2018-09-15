#!/bin/bash

yum install -y vim

curl -s https://packagecloud.io/install/repositories/linyows/octopass/script.rpm.sh | bash
yum install -y octopass
# curl https://raw.githubusercontent.com/linyows/octopass/master/octopass.conf.example -sS -o /etc/octopass.conf
ln -fs /vagrant/settings/etc/octopass.conf /etc/octopass.conf

ln -fs /vagrant/settings/etc/ssh/sshd_config /etc/ssh/sshd_config
ln -fs /vagrant/settings/etc/pam.d/sshd /etc/pam.d/sshd
ln -fs /vagrant/settings/etc/pam.d/system-auth-ac /etc/pam.d/system-auth-ac
ln -fs /vagrant/settings/etc/nsswitch.conf /etc/nsswitch.conf

systemctl reload sshd
