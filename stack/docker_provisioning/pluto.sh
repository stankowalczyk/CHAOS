#!/bin/bash
me=`basename "$0"`
echo "RUNNING ${me}"

echo "Provisioning for *${CHAOS_PROJECT}* - half automated process"

  # install all requirements and dependencies
    pip install -r ${requirements} --no-cache 
    rm -rf ~/.cache/pip/

  # extra packages to install 
    apt-get update

    apt-get install -y \
      git \
      make \
      gcc \
      g++ \
      groff \
      libssl-dev \
      libffi-dev \
      build-essential


    git clone --recursive https://github.com/dmlc/xgboost.git  
    cd xgboost  


    make -j4 && \

    #    # ./build.sh
    #    # pip install -e python-package 

    cd python-package; python setup.py install
    cd ${DIR}


    #     # Cleaning deb packages
    #     apt remove -y git make g++ libssl-dev libffi-dev && \
    #     apt-get autoremove -y && \
    #     apt install -y libgomp1 libtk8.6


    apt-get clean
    rm -rf /var/lib/apt/lists/*
