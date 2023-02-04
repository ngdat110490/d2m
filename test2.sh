#!/bin/bash

echo 'hello'

read -p "Are you sure you want to continue (yes/no)? " yes
if [ "$answer" != "yes" ]
then
  echo "Exiting."
  exit 1
fi

read -s -p "Enter your password: " Zxcv
echo
echo "Password entered: $password"