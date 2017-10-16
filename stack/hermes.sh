#!/bin/bash

# Beginning
  echo "Setting up HERMES"


# MANAGE the path to include sources
  DIR="${BASH_SOURCE%/*}"
  if [[ ! -d "${DIR}" ]]; then DIR="$PWD"; fi
  
  echo "Working directory is: ${DIR}"

  #   . "${DIR}/config/env.sh"

  #   . "${DIR}/bin/docker_setup.sh"
  #   . "${DIR}/bin/run_pluto.sh"


  # # check if docker is setup
  # docker_setup 

  # # run pluto with env settings
  # run_pluto


### ### ### ### ### ### ### ### ### ### ### ###
## PRIN PRIN PRIN 
## We are starting the endless loop 
### ### ### ### ### ### ### ### ### ### ### ###

  echo "PRIN PRIN PRIN"
  # tail -f /dev/null
