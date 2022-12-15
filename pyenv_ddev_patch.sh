#!/usr/bin/env bash

#install pip update
echo -e "Installing pip update"

/home/vagrant/.pyenv/versions/3.8-dev/bin/python3.8 -m pip install --upgrade pip
python -m pip install --user pipx
python3 -m pipx ensurepath
python3 -m pip install --user -U pipx

#installing memray modules
echo -e "Installing memray modules"

sudo apt-get install libunwind-dev
sudo apt-get install liblz4-dev
python3 -m pip install memray

#install ddev
echo -e "Attempting complete solve of ddev"
pip install ddev

#Ddev install confirmation
echo  -e "nConfirming Ddev  install"
ddev
