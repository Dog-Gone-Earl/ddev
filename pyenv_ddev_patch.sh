  #!/usr/bin/env bash
  YELLOW="\033[1;33m"

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
  
  echo -e "Install of Docker"
  curl -fsSL https://get.docker.com -o get-docker.sh
  sudo sh ./get-docker.sh
  sudo usermod -aG docker $USER
  
  #Ddev install confirmation
  echo  -e "\nConfirming Ddev  install"
  ddev
