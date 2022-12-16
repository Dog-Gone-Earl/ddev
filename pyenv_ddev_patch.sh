  #!/usr/bin/env bash

  #install pip update
  echo -e "\nInstalling pip update"

  /home/vagrant/.pyenv/versions/3.8-dev/bin/python3.8 -m pip install --upgrade pip
  python -m pip install --user pipx
  python3 -m pipx ensurepath
  python3 -m pip install --user -U pipx

  #installing memray modules
  echo -e "\nInstalling memray modules"

  sudo apt-get -y install libunwind-dev
  sudo apt-get -y install liblz4-dev
  python3 -m pip install memray

  #install ddev
  echo -e "\nAttempting complete solve of ddev"
  pip install "datadog-checks-dev[cli]"

  #Ddev install confirmation
  echo  -e "\nConfirming Ddev  install"
  ddev
