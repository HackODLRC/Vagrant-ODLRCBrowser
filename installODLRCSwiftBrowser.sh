#!/usr/bin/env bash

echo "Updating apt..."
sudo apt-get update
echo "Done!"

echo "Installing git..."
sudo apt-get -y install git
echo "Done!"

echo "Installing pip..."
wget https://raw.github.com/pypa/pip/master/contrib/get-pip.py
sudo python get-pip.py
echo "Done!"
echo "Installing virtualenv..."
sudo pip install virtualenv 
echo "Done!"

virtualenv swiftbrowser-virtualenv
cd swiftbrowser-virtualenv
source bin/activate
echo "Making a virtualenv and installing ODLRC-SwiftBrowser..."
git clone https://github.com/HackODLRC/django-swiftbrowser.git
cd django-swiftbrowser
python setup.py install
echo "Done!"
