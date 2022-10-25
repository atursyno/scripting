#!/bin/bash

echo "Guess between 0..100"
sleep 1
read Guess
number=$(( $RANDOM % 100 ))
while [ $Guess -ne $number ]; do
    read Guess
    if [ $Guess -gt $number ]; then
        echo "Too high"
    elif [ $Guess -lt $number ]; then
        echo "Too low"
    fi
done
echo "You got it right"
exit 1
