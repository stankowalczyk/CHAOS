#!/bin/bash
me=`basename "$0"`
echo "source ${me}"

# PLEASE NOTE THAT if you want to source this file directly 
# it will consider you are doing from the CHAOS root!
if [[ ! $DIR ]]; then DIR="./"; fi


# The Project name
  export CHAOS_PROJECT="template"

# Customize this to work on different Environments
  export CHAOS_LOCAL_ENV="development"


# sourcing from other files
  # servos
    . "${DIR}/settings/servo/colors.sh"

  # micro settings
    . "${DIR}/settings/micro/aws.sh"
    . "${DIR}/settings/micro/rabbit.sh"
    . "${DIR}/settings/micro/python.sh"
    . "${DIR}/settings/micro/docker.sh"


# Environment Override  
  . "${DIR}/settings/${CHAOS_LOCAL_ENV}.sh"
