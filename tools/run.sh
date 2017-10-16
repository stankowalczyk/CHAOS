#!/bin/bash

run_pluto(){

  echo "$(date) Launching Pluto:"
  python3 ${DIR}/infer_service.py --aws_key ${aws_key} --aws_secret ${aws_secret} --mq_uri ${rabbit_connection_string}

}
