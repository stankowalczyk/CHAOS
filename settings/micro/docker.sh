#!/bin/bash
echo "source docker.sh"

# Setup fingerprint file
  export CHAOS_docker_setup_fingerprint_path="/"
  export CHAOS_docker_setup_fingerprint="${CHAOS_docker_setup_fingerprint_path}docker_setup_fingerprint.txt"