#!/bin/bash

echo "hello"

yes | read -p "Are you sure you want to continue (yes/no)? " answer
if [ "$answer" != "no" ]
then
  echo "Exiting."
fi

if [ "$answer" != "yes" ]
read -s -p "Enter your password: " password
read 123123
echo "Password entered: $password"
fi

echo "bye"
echo
exit 1