  #!/usr/bin/env bash
  sudo apt-get update -y && sudo apt-get upgrade -y
  eval "$(curl https://raw.githubusercontent.com/ian28223/Datadog-ian/master/ddev/pyenv_ddev_setup.sh)"

  #install pip update
  echo "\nInstalling pip update"

  /home/vagrant/.pyenv/versions/3.8-dev/bin/python3.8 -m pip install --upgrade pip
  python -m pip install --user pipx
  python3 -m pipx ensurepath
  python3 -m pip install --user -U pipx

  #installing memray modules
  echo "\nInstalling memray modules"

  sudo apt-get -y install libunwind-dev
  sudo apt-get -y install liblz4-dev
  python3 -m pip install memray

  #install ddev
  echo "\nAttempting complete solve of ddev"
  pip install ddev
  
  echo "Install of Docker"
  curl -fsSL https://get.docker.com -o get-docker.sh
  sudo sh ./get-docker.sh
  sudo groupadd docker
  sudo usermod -aG docker $USER
  
  #Ddev install confirmation
  echo "\nConfirming Ddev  install"
  ddev
