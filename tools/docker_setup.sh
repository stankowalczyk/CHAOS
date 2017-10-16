#!/bin/bash

docker_setup(){

  echo "Searching for ${docker_setup_fingerprint} ..."
  echo ""

  [[ -f ${docker_setup_fingerprint} ]] || docker_requirements
      
  echo "File ${docker_setup_fingerprint} exists. Setup is Complete."
  echo ""

  echo "Cat Fingerprint =>"
  cat ${docker_setup_fingerprint}
  echo "<= Cat Fingerprint"

}

docker_requirements(){
  
  echo "File ${docker_setup_fingerprint} does not exist "
  echo ""
  echo ""

  echo "Setup will now install #${environment_type}# environment requirements"
  echo ""

  # install all requirements and dependencies
    pip install -r ${requirements} --no-cache 
    rm -rf ~/.cache/pip/

  # extra packages to install 
    apt-get update
    apt-get install -y make gcc g++ git groff 
    apt-get install -y make git 
    apt-get clean
    rm -rf /var/lib/apt/lists/*
    git clone --recursive https://github.com/dmlc/xgboost.git  
    cd xgboost  
    ./build.sh
    pip install -e python-package 
    cd python-package
    python setup.py install
    cd ../../

    touch ${docker_setup_fingerprint}
    echo -e "$(date)" > ${docker_setup_fingerprint}

}
