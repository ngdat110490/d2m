#!/bin/bash

echo "hello"

read -p "Are you sure you want to continue (yes/no)? " answer
if [ "$answer" != "no" ]
then
  echo "Exiting."
  exit 1
fi

read -s -p "Enter your password: " password
echo
echo "Password entered: $password"

read yes
read 123123

echo "bye"
echo
