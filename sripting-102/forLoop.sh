#!/bin/bash

# Define for loop in C-style format
for (( number=1; number<=5; number++ ))
do  
    # Check the number is even or not
    if (( $number%2==0 ))
    then
        echo "$number is even"
    else
        echo "$number is odd"
    fi  
done
