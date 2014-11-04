#!/bin/sh
cd /tmp
curl -O https://downloads-packages.s3.amazonaws.com/centos-7.0.1406/gitlab-7.4.3_omnibus.1-1.el7.x86_64.rpm
sudo yum install openssh-server
sudo systemctl enable sshd
sudo systemctl start sshd
sudo yum install postfix
sudo systemctl enable postfix
sudo systemctl start postfix
sudo rpm -i gitlab-7.4.3_omnibus.1-1.el7.x86_64.rpm
sudo gitlab-ctl reconfigure
sudo firewall-cmd --permanent --add-service=http # open up the firewall for HTTP and SSH requests
sudo systemctl reload firewalld
exit
