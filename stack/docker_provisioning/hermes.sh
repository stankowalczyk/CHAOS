#!/bin/bash

echo "Setting up MANUALLY things for HERMES"

# source env vars
  # if [[ ! $DIR ]]; then DIR="/CHAOS/"; fi
  # . ${DIR}settings/config.sh

# Done

    cd /hermes/resources 
    git clone https://github.com/pjreddie/darknet.git
    cd darknet
    make

    # ./darknet imtest data/eagle.jpg
  
  # Tessaract
    add-apt-repository ppa:alex-p/tesseract-ocr
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
    python example.py




  # gitltf
  #  temporary managment of the models/versioning

    apt-get install -y software-properties-common
    curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh >> gitltf.sh
    chmod 755 gitltf.sh
    ./gitltf.sh
    apt-get install -y git-lfs
    git lfs install





## pending

  python test/test_detection.py


# clean caches and save some space
#   apt-get clean && \
#   rm -rf /var/lib/apt/lists/* && \
#   rm -rf ~/.cache/pip/ 



# apt-get update && \
# apt-get install -y tesseract-ocr && \
# apt-get install -y make gcc git 

# pip install -r hermes/requirements.txt --no-cache

# apt-get clean && \
# rm -rf ~/.cache/pip/ && \
# rm -rf /var/lib/apt/lists/* 

# git clone https://github.com/pastorenick/pyyolo
# cd pyyolo && make && python setup.py build && python setup.py install

# NON SERVE

  # ls -la

  # CUDA (toolkit) for Darknet
    # dpkg --configure -a
    # apt-get install -yq nvidia-cuda-toolkit 
    # export PATH=/usr/local/cuda-8.0/bin${PATH:+:${PATH}}
    # export LD_LIBRARY_PATH=/usr/local/cuda8.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}


    # sudo apt-get install linux-headers-`uname -r`
    # curl -O "http://developer.download.nvidia.com/compute/cuda/6_5/rel/installers/cuda_6.5.14_linux_64.run"
    # chmod +x cuda_6.5.14_linux_64.run
    # sudo ./cuda_6.5.14_linux_64.run --kernel-source-path=/usr/src/linux-headers-`uname -r`/
    #   # apt-get purge -y nvidia-cuda-toolkit


  # Darknet
    # mkdir -p /hermes/


  # Tessaract 
    # apt-get update


  # python env


  # pyyolo
    # rm -rf pyyolo





  # copy from S3 the models files
    # pip install awscli 
    # mkdir -p ~/.aws
    # touch ~/.aws/config

    # echo "#Amazon Web Services Configuration" > ~/.aws/config && \
    # echo "[default]" >> ~/.aws/config && \
    # echo "aws_access_key_id=${aws_access_key_id}" >> ~/.aws/config && \
    # echo "aws_secret_access_key=${aws_secret_access_key}" >> ~/.aws/config && \
    # echo "region=${region}" >> ~/.aws/config && \
    # echo "output=${output}" >> ~/.aws/config && \
    # echo ""

    # rm -rf ${models_ec2_path}
    # mkdir ${models_ec2_path}
    # aws s3 cp ${models_s3_path} ${models_ec2_path} --recursive


## PRIN PRIN PRIN 
## We are starting the endless loop 

  echo "PRIN PRIN PRIN"
  tail -f /dev/null
