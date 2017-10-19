#!/bin/bash
me=`basename "$0"`
echo "source ${me}"

run_project(){

  echo "Running *${CHAOS_PROJECT}* - half automated process"

  ### ### ### ### ### ### ### ### ### ### ### ###
  ## We are starting the endless loop 
  ### ### ### ### ### ### ### ### ### ### ### ###
  tail -f /dev/null

  # python3 ${DIR}/infer_service.py --aws_key ${aws_key} --aws_secret ${aws_secret} --mq_uri ${rabbit_connection_string}

}