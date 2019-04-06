#!/usr/bin/env bash
BASEDIR=$(dirname "$0")
FILE=$1
if [ "$FILE" == "" ] ;
  then
  FILE=".credential";
fi
if [ -f $BASEDIR/$FILE ] ; then
  echo "File '$FILE' already exists."
  read -p "Do you wish to overwrite? [Y/N] " -n 1 -r REPLY
  echo    # (optional) move to a new line
  if [[ $REPLY =~ ^[Yy]$ ]]
  then
      sudo rm -f $FILE
      $0 $FILE
  fi
else
  read -p "Enter VPN URL: " URL
  read -p "Enter USER ID: " USER
  read -p "Enter your PASSWORD: " -s PASS
  LINE='{"url":"'$URL'", "user":"'$USER'", "pass":"'$PASS'"'}
  echo
  echo $LINE
  echo $LINE | base64 > $FILE
  echo
  echo "Credentials saved to '$FILE'"
fi
sudo chmod 600 $FILE
sudo chown root $FILE