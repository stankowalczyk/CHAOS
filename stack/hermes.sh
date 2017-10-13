#!/bin/bash
# hermes.sh
echo "Setting up things for HERMES"


# source env vars
  if [[ ! $DIR ]]; then DIR="/CHAOS/"; fi
  . ${DIR}settings/config.sh


# CUDA (toolkit) for Darknet
  dpkg --configure -a
  apt-get install -yq nvidia-cuda-toolkit 
  export PATH=/usr/local/cuda-8.0/bin${PATH:+:${PATH}}
  export LD_LIBRARY_PATH=/usr/local/cuda8.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}



  # apt-get purge -y nvidia-cuda-toolkit


  # mkdir -p /hermes/requirements
  # cd /hermes/requirements && git clone https://github.com/pjreddie/darknet.git
  # cd darknet && make
  
  # ./darknet imtest data/eagle.jpg



# Tessaract 
  # apt-get update
  # apt-get install -y tesseract-ocr



# python env
  # pip install -r /hermes/requirements.txt --no-cache


  # ls -la



# pyyolo
  # cd ../
  # rm -rf pyyolo
  # git clone https://github.com/pastorenick/pyyolo
  # cd pyyolo
  # && make && python setup.py build && python setup.py install
  # python example.py



# # apt-get install -y software-properties-common
# # curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash*

# curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh -o gitltf.sh
# chmod 755 gitltf.sh
# chmod 755 ./gitltf.sh
# # | bash

# apt-get install -y git-lfs
# git lfs install



# # clean caches and save some space
#   apt-get clean && \
#   rm -rf /var/lib/apt/lists/* && \
#   rm -rf ~/.cache/pip/ 



#   pip install -e python-package 
#   cd python-package
#   python setup.py install
#   cd ../../


# # copy from S3 the models files
#   pip install awscli 
#   mkdir -p ~/.aws
#   touch ~/.aws/config

#   echo "#Amazon Web Services Configuration" > ~/.aws/config && \
#   echo "[default]" >> ~/.aws/config && \
#   echo "aws_access_key_id=${aws_access_key_id}" >> ~/.aws/config && \
#   echo "aws_secret_access_key=${aws_secret_access_key}" >> ~/.aws/config && \
#   echo "region=${region}" >> ~/.aws/config && \
#   echo "output=${output}" >> ~/.aws/config && \
#   echo ""

#   rm -rf ${models_ec2_path}
#   mkdir ${models_ec2_path}
#   aws s3 cp ${models_s3_path} ${models_ec2_path} --recursive



echo "PRIN PRIN PRIN"
tail -f /dev/null
