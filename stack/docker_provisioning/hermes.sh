#!/bin/bash
me=`basename "$0"`
echo "RUNNING ${me}"

echo "Provisioning for *${CHAOS_PROJECT}* - half automated process"

  #Darknet
    cd /hermes/resources 
    rm -rf darknet/
    git clone https://github.com/pjreddie/darknet.git
    cd darknet 
    make
    # ./darknet imtest data/eagle.jpg
              
  # Tessaract
    apt-get install -y software-properties-common python-software-properties
    add-apt-repository -y ppa:alex-p/tesseract-ocr
    apt-get update
    apt-get install -y tesseract-ocr

  # Python ENV
    pip install -r /hermes/requirements.txt --no-cache

  # pyyolo
    cd ../
    git clone https://github.com/pastorenick/pyyolo
    cd pyyolo
    make 
    python setup.py build 
    python setup.py install
    # python example.py

  # git lfs
    apt-get install -y curl
    curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh >> gitltf.sh
    chmod 755 gitltf.sh
    ./gitltf.sh
    apt-get install -y git-lfs
    git lfs install

    git fecth 
    git pull
