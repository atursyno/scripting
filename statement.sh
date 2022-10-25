#!/bin/bash

user=$(whoami)

read -p "Is this your user $user ? : " answer

if [ $answer == "yes" ]; then 
    echo "Good, this laptop belongs to $user"

else
    echo "Oh... you don't belong here"
fi