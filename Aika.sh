#!/bin/bash

    day=$("monday" "tuesday" "wednesday" "thursday" "friday" "saturday" "sunday")

read -p "What day is it today ? : " day

if [ $day == "monday" ]; then 
    echo "Today is a + $day + which is weekday"

elif [ $day == "saturday" ]; then
   echo "Hooray today is a $day which is weekend"

else
   echo "Oh... date is not recognized"
fi


