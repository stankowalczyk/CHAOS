#!/bin/bash
me=`basename "$0"`
echo "source ${me}"


## Development Environment
## Values in THIS file are used to override other previous values

# python requirements
py_req_path="/${CHAOS_PROJECT}/requirements/"
py_req_file="${py_req_path}${CHAOS_LOCAL_ENV}.txt"
