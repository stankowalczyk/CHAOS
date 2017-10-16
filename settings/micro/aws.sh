#!/bin/bash

# AWS KEYS
# this will be overwritten by the Config Wizard (to implement)
# so by now update it manually

# AWS keys
  export CHAOS_aws_key="12345678901234567890"
  export CHAOS_aws_secret="1234567890qwertyuiop1234567890qwertyuiop" 
  export CHAOS_aws_region="ap-southeast-2"
  export CHAOS_aws_output="json"


# S3 bucket path settings
  export CHAOS_s3_bucket="dsas-demo"
  export CHAOS_s3_client="client_id"
  export CHAOS_s3_project="project_id"

  export CHAOS_s3_logs_folder="logs"
  export CHAOS_s3_models_folder="models"
  export CHAOS_s3_requests_folder="requests"
  export CHAOS_s3_responses_folder="responses"

# S3 models path
  export CHAOS_models_s3_path="s3://${CHAOS_s3_bucket}/${CHAOS_s3_client}/${CHAOS_s3_project}/${CHAOS_s3_models_folder}/"

# EC2 models path
  export CHAOS_models_ec2_path="../data/models/"
