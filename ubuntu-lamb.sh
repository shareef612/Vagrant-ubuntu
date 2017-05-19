#!/bin/bash

# Upgrade ubuntu with any patches
sudo apt-get -y upgrade

# Installing git, curl, Java JDK, Python3,
sudo apt-get install -y git curl openjdk-7-jre-headless python3 software-properties-common python-software-properties

# Installing RVM
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable

exec $SHELL -l

# Installing Python2.7 through ppa
sudo add-apt-repository ppa:git-core/ppa
sudo add-apt-repository ppa:fkrull/deadsnakes-python2.7
sudo apt-get update
sudo apt-get install python2.7
sudo apt-get install -y python-pip requests python-pyexiv2 urllib3 ffmpeg ffmpy subprocess.run

# Installing Ruby and Jruby through RVM
rvm install ruby
rvm install jruby 1.7.26

# Making Jruby as default language
rvm alias create default 1.7.26

# Installing GEMS
sudo gem install net-ssh -v 2.9.2
sudo gem install xml-simple -v 1.1.5
sudo gem install redis -v 3.3.0
sudo gem install test-unit -v 2.5.5
sudo gem install rest-client -v 1.8.0
sudo gem install json -v 1.8.2
sudo gem install jruby-openssl --platform java -v 0.9.17
sudo gem install imagesize -v 0.1.1
sudo gem install net-scp -v 1.2.1
sudo gem install http-cookie -v 1.0.3
sudo gem install httpclient -v 2.8.2.4
sudo gem install jruby-jms --platform java -v 1.2
sudo gem install mime-types -v 2.99.3
sudo gem install net-ssh-gateway -v 1.2.0
sudo gem install netrc -v 0.11.0
sudo gem install thread_safe --platform java -v 0.3.5
sudo gem install jdbc-mysql -v 5.1.38

echo ”************************** Set-up Completed **************************”
echo ”************************** THANK YOU **************************”
