#!/bin/bash

echo "hello"

read -p "Are you sure you want to continue (yes/no)? " answer
if [ "$answer" != "no" ]; then
if [ "$answer" != "yes" ]; then
read -s -p "Enter your password: " password
echo "Password entered: $password"
fi
else
echo "Exiting."
exit 1
fi

echo "bye"