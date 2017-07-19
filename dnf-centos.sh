#!/bin/bash
cat <<EOF > /etc/yum.repos.d/dnf-centos.repo
[dnf-centos]
name=Copr repo for dnf-centos owned by @rpm-software-management
baseurl=https://copr-be.cloud.fedoraproject.org/results/@rpm-software-management/dnf-centos/epel-7-x86_64/
skip_if_unavailable=True
gpgcheck=1
gpgkey=https://copr-be.cloud.fedoraproject.org/results/@rpm-software-management/dnf-centos/pubkey.gpg
enabled=1
enabled_metadata=1
EOF
yum -y install dnf
