#!/bin/bash

# MANAGE the path to include sources
  DIR="${BASH_SOURCE%/*}"
  if [[ ! -d "$DIR" ]]; then DIR="$PWD"; fi

# TO DO : implement a Wizard to store a valid configuration for CHAOS
# Right now just

# Import Settings
  . "${DIR}/settings/config.sh"
  echo ""
  echo -e "${Green}And NOW you can use all the CHAOS_* variables : ${!CHAOS_*}${Color_Off}"


# INCLUDE tools
  # clone all the DS projects into services/[ds_pj_name]
  # launch all services/dockers
    # form all docker settings/req    


# Clean your screen
  # clear
  echo ""
  echo -e "${BIGreen}Ready to Start.${Color_Off}"
