#!/bin/bash
echo "source rabbit.sh"

  export FIAT_rabbitMQ_user="rabbimq"
  export FIAT_rabbitMQ_password="rabbimq"
  export FIAT_rabbitMQ_host="rabbimq"

  # export FIAT_rabbitMQ_port="5672"
  # export FIAT_rabbitMQ_gui_port="15672"

# connection string to rabbitMQ 
  export FIAT_rabbit_connection_string="amqp://${rabbitMQ_user}:${rabbitMQ_password}@${rabbitMQ_host}"