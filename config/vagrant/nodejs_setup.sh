#!/usr/bin/env bash

echo "=== Begin Vagrant Provisioning using 'config/vagrant/nodejs_setup.sh'"

if [ -z `which nodejs` ]; then
  apt-get -y update
  apt-get -y install node npm
fi

echo "=== End Vagrant Provisioning using 'config/vagrant/nodejs_setup.sh'"
