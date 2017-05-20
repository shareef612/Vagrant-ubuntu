#!/bin/bash

# Upgrade ubuntu with any patches
sudo apt-get -y update && sudo apt-get -y upgrade

# Installing git, curl, Python3
sudo apt-get install -y git curl python3 software-properties-common python-software-properties build-essential make ruby-dev gnupg2


# Installing RVM
gpg2 --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable

exec $SHELL <<EOF1

# Installing Python2.7 through ppa
sudo add-apt-repository ppa:jonathonf/ffmpeg-3
sudo add-apt-repository ppa:git-core/ppa
sudo add-apt-repository ppa:fkrull/deadsnakes-python2.7
sudo apt-get -y update
sudo apt-get install -y python2.7 ffmpeg
sudo apt-get install -y python-pip python-pyexiv2
sudo pip install requests urllib3

# Installing Ruby and Jruby through RVM
rvm install ruby
rvm install jruby 1.7.26

# Making Jruby as default language
rvm alias create default 1.7.26

#Installing GEM
sudo gem install rest-client -v 1.8.0
sudo gem install json -v 1.8.2
sudo gem install jruby-openssl --platform java -v 0.9.7
sudo gem install soap4r -v 1.5.8
sudo gem install imagesize -v 0.1.1
sudo gem install net-ssh -v 2.9.0
sudo gem install xml-simple -v 1.1.5
sudo gem install redis -v 3.3.0
sudo gem install pr_geohash
sudo gem install test-unit -v 2.5.5
sudo gem install bouncy-castle-java -v 1.5.0147
sudo gem install builder -v 3.2.2
sudo gem install concurrent-ruby --platform java -v 1.0.2
sudo gem install http-cookie -v 1.0.2
sudo gem install httpclient -v 2.6
sudo gem install imagesize -v 0.1.1
sudo gem install jruby-jms --platform java -v 1.2
sudo gem install mime-types -v 2.4.3
sudo gem install minitest -v 5.8
sudo gem install net-ssh-gateway -v 1.2
sudo gem install netrc -v 0.10.2
sudo gem install rake -v 11.1.2
gem install thread_safe --platform java -v 0.3.5
sudo gem install jdbc-mysql -v 5.1.39

echo ”************************** Set-up Completed **************************”
echo ”************************** THANK YOU **************************”
