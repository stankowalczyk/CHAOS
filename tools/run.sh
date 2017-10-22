#!/bin/bash
me=`basename "$0"`
echo "source ${me}"

run_project(){

  echo "Running *${CHAOS_PROJECT}* - half automated process"


  echo "CHAOS_aws_key is *${CHAOS_aws_key}*"
  echo "CHAOS_aws_secret is *${CHAOS_aws_secret}*"
  echo "CHAOS_rabbit_connection_string is *${CHAOS_rabbit_connection_string}*"


  python3 /pluto/modules/infer_service.py --aws_key ${CHAOS_aws_key} --aws_secret ${CHAOS_aws_secret} --mq_uri ${CHAOS_rabbit_connection_string}

  ### ### ### ### ### ### ### ### ### ### ### ###
  ## We are starting the endless loop 
  ### ### ### ### ### ### ### ### ### ### ### ###

  # tail -f /dev/null

}
