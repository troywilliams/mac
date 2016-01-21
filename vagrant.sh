#!/bin/bash

# Vagrant plugins list.
# - https://github.com/mitchellh/vagrant/wiki/Available-Vagrant-Plugins

# Ask for the administrator password upfront.
sudo -v

# Local domain resolution.
vagrant plugin install landrush

# Providers.
vagrant plugin install vagrant-aws
vagrant plugin install vagrant-digitalocean
vagrant plugin install vagrant-google

# Other
vagrant plugin install vagrant-aws-dns # Vagrant plugin that allows you to set up route53 records for instances created using vagrant-aws provider.
