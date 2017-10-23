#!/bin/bash
me=`basename "$0"`
echo "source ${me}"


## Staging Environment
## Values in THIS file are used to override other previous values

# python requirements
  py_req_path="/${CHAOS_PROJECT}/requirements/"
  py_req_file="${py_req_path}${CHAOS_LOCAL_ENV}.txt"

# rabbitMQ overriding
  CHAOS_rabbitMQ_user="rabbitmq"
  CHAOS_rabbitMQ_password="rabbitmq"
  CHAOS_rabbitMQ_host="plutomq"
  CHAOS_rabbit_connection_string="amqp://${CHAOS_rabbitMQ_user}:${CHAOS_rabbitMQ_password}@${CHAOS_rabbitMQ_host}"

# AWS overriding
  CHAOS_aws_key="12345678901234567890"
  CHAOS_aws_secret="1234567890123456789012345678901234567890" 

# Project Environment
  # in full automation secure this on the Docker itself
  export schemas_folder="/pluto/settings/config/"
  export services_schema="service.yaml"
