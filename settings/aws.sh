#!/bin/bash

# AWS KEYS
# this will be overwritten by the Config Wizard (to implement)
# so by now update it manually

# AWS keys
  export FIAT_aws_key="12345678901234567890"
  export FIAT_aws_secret="1234567890qwertyuiop1234567890qwertyuiop" 
  export FIAT_aws_region="ap-southeast-2"
  export FIAT_aws_output="json"


# S3 bucket path settings
  export FIAT_s3_bucket="dsas-demo"
  export FIAT_s3_client="client_id"
  export FIAT_s3_project="project_id"

  export FIAT_s3_logs_folder="logs"
  export FIAT_s3_models_folder="models"
  export FIAT_s3_requests_folder="requests"
  export FIAT_s3_responses_folder="responses"

# S3 models path
  export FIAT_models_s3_path="s3://${s3_bucket}/${s3_client}/${s3_project}/${s3_models_folder}/"

# EC2 models path
  export FIAT_models_ec2_path="../data/models/"
