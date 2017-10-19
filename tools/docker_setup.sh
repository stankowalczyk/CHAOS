#!/bin/bash
me=`basename "$0"`
echo "source ${me}"

docker_setup(){

  echo "Searching for ${CHAOS_docker_setup_fingerprint} ..."
  echo ""

  [[ -f ${CHAOS_docker_setup_fingerprint} ]] || docker_requirements
      
  echo "File ${CHAOS_docker_setup_fingerprint} exists. Setup is Complete."
  echo ""

  echo "Cat Fingerprint =>"
  cat ${CHAOS_docker_setup_fingerprint}
  echo "<= Cat Fingerprint"

}

docker_requirements(){
  
  echo "File ${CHAOS_docker_setup_fingerprint} does not exist "
  echo ""
  echo ""

  echo "Setup will now provision the docker with *${CHAOS_LOCAL_ENV}* environment requirements"
  echo ""

  . ./${DIR}/stack/docker_provisioning/${CHAOS_PROJECT}.sh

  docker_fingerprint
}


docker_fingerprint(){

  touch ${docker_setup_fingerprint}
  echo -e "$(date)" > ${docker_setup_fingerprint}

}