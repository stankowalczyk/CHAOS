#!/bin/bash

# MANAGE the path to include sources
  DIR="${BASH_SOURCE%/*}"
  if [[ ! -d "$DIR" ]]; then DIR="$PWD"; fi
  
# TO DO : implement a Wizard to store a valid configuration for CHAOS
# Right now just

  # Import Settings
    . "${DIR}/settings/config.sh"

  echo "NOW you can use all the FIAT_* variables : ${!FIAT_*}"



# # INCLUDE tools
#   . "${DIR}/tools/kube_helper.sh"
#   . "${DIR}/tools/dns_helper.sh"
#   . "${DIR}/tools/bucket_helper.sh"
#   . "${DIR}/tools/cluster_helper.sh"



# Clean your screen
  # clear
  echo "Ready to Start."
