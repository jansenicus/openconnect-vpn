#!/bin/bash
if [[ $UID != 0 ]]; then
    echo "Please run this executable with sudo:"
    eval "sudo $0 $*"
    exit 1
fi
banner="
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
OPENCONNECT VPN CONNECTION
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
"

clear
echo "$banner"
BASEDIR=$(dirname "$0")
FILE='.credential'
if [ -f $BASEDIR/$FILE ] ; then

  json=$(echo $(cat .credential | base64 --decode))
  url=$(echo $json | jq '.url' | tr -d \")
  user=$(echo $json | jq '.user' | tr -d \")
  pass=$(echo $json | jq '.pass' | tr -d \")
  echo $pass | sudo openconnect --protocol=gp $url --user=$user --passwd-on-stdin --csd-wrapper="hipreport.sh"
else
  ./credential-maker.sh
  $0
fi
