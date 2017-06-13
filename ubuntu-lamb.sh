#!/bin/bash

# Adding python and ffmpeg external repository
sudo add-apt-repository ppa:jonathonf/ffmpeg-3
sudo add-apt-repository ppa:git-core/ppa
sudo add-apt-repository ppa:jonathonf/python-2.7

# Upgrade ubuntu with any patches and Installing necessary libraries
echo "*********************** Updating and Upgrading the System ***********************"
sudo apt-get -y update && sudo apt-get -y upgrade

echo "*********************** Installing the required libraries ***********************"
sudo apt-get install -y git curl python3 software-properties-common python-software-properties build-essential make ruby-dev python2.7 ffmpeg python-pip python-pyexiv2


# Installing RVM
echo "*********************** Installing RVM ***********************"
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable

exec $SHELL <<EOF1

# Installing Ruby and Jruby through RVM
echo "*********************** Installing jruby ***********************"
rvm install ruby
rvm install jruby 1.7.26

# Making Jruby as default language
echo "*********************** Make jruby as default ***********************"
rvm alias create default 1.7.26

# Installing GEM
echo "*********************** Installing GEMS ***********************"
gem install rest-client -v 1.8.0
gem install json -v 1.8.2
gem install jruby-openssl --platform java -v 0.9.7
gem install soap4r -v 1.5.8
gem install imagesize -v 0.1.1
gem install net-ssh -v 2.9.0
gem install xml-simple -v 1.1.5
gem install redis -v 3.3.0
gem install pr_geohash
gem install test-unit -v 2.5.5
gem install bouncy-castle-java -v 1.5.0147
gem install builder -v 3.2.2
gem install concurrent-ruby --platform java -v 1.0.2
gem install http-cookie -v 1.0.2
gem install httpclient -v 2.6
gem install imagesize -v 0.1.1
gem install jruby-jms --platform java -v 1.2
gem install mime-types -v 2.4.3
gem install minitest -v 5.8
gem install net-ssh-gateway -v 1.2
gem install netrc -v 0.10.2
gem install rake -v 11.1.2
gem install thread_safe --platform java -v 0.3.5
gem install jdbc-mysql -v 5.1.39
gem install cassandra-driver -v 2.1.0
gem install text-table -v 1.2.4

echo "*********************** ALL DONE ***********************"
