#!/bin/bash
echo "source config.sh"

# PLEASE NOTE THAT if you want to source this file directly 
# it will consider you are doing from the CHAOS root!
if [[ ! $DIR ]]; then DIR="./"; fi



# Customize this to work on different Environments
export FIAT_LOCAL_ENV="development"



# sourcing from other files
. "${DIR}/settings/colors.sh"

. "${DIR}/settings/aws.sh"
. "${DIR}/settings/rabbit.sh"
. "${DIR}/settings/python.sh"
. "${DIR}/settings/docker.sh"




# Environment Override  
  . "${DIR}/settings/${FIAT_LOCAL_ENV}.sh"
