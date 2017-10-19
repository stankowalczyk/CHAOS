#!/bin/bash
me=`basename "$0"`
echo "RUNNING ${me}"

# MANAGE the path to include sources
  DIR="./CHAOS/"
  if [[ ! -d "${DIR}" ]]; then DIR="$PWD"; fi
  
  echo "Working directory is: ${DIR}"

# Sourcing configuration settings
  . "${DIR}/settings/config.sh"

# Sourcing configuration settings
  . "${DIR}/tools/docker_setup.sh"
  # . "${DIR}/tools/run.sh"

# Beginning this rude terra-forming process
  echo "Setting up *${CHAOS_PROJECT}*"

  # Setup the docker
  docker_setup 

  # run the service with env settings
  run_project
