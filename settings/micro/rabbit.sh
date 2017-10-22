#!/bin/bash
echo "source rabbit.sh"

  export CHAOS_rabbitMQ_user="rabbitmq"
  export CHAOS_rabbitMQ_password="rabbitmq"
  export CHAOS_rabbitMQ_host="rabbitmq"

  # To implement in the Docker 
    # export CHAOS_rabbitMQ_port="5672" 
    # export CHAOS_rabbitMQ_gui_port="15672"

# connection string to rabbitMQ 
  export CHAOS_rabbit_connection_string="amqp://${CHAOS_rabbitMQ_user}:${CHAOS_rabbitMQ_password}@${CHAOS_rabbitMQ_host}"