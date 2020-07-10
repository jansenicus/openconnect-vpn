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
FILE=$BASEDIR/.ocvpn
if [ -f $FILE ] ; then

  json=$(echo $(cat $FILE | base64 --decode))
  url=$(echo $json | jq '.url' | tr -d \")
  user=$(echo $json | jq '.user' | tr -d \")
  pass=$(echo $json | jq '.pass' | tr -d \")
  echo Please enter OTP token
  read token
  echo $pass$token | sudo openconnect --protocol=gp $url --user=$user --passwd-on-stdin --csd-wrapper="$BASEDIR/ovreport"
else
  $BASEDIR/ovcredential
  $0
fi
