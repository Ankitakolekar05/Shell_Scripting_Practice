#!/bin/bash

echo "Enter Marks:"
read marks

if [ $marks -ge 90 ]
then
    echo "Grade A"

elif [ $marks -ge 75 ]
then
    echo "Grade B"

elif [ $marks -ge 60 ]
then
    echo "Grade C"

else
    echo "Fail"

fi
