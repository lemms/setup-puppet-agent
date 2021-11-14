#!/bin/bash

wget https://apt.puppet.com/puppet7-release-focal.deb
dpkg -i puppet7-release-focal.deb
apt-get update
apt-get install puppet-agent -y

echo "$1 puppet" >> /etc/hosts

/opt/puppetlabs/bin/puppet config set server $1 --section main

puppet ssl bootstrap
