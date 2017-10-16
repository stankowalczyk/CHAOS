#!/bin/bash
echo "source python.sh"

# python env settings
  export CHAOS_req_path="${DIR}/requirements/"
  export CHAOS_req_file="${CHAOS_LOCAL_ENV}.txt"
  export CHAOS_requirements=${CHAOS_req_path}${CHAOS_req_file}