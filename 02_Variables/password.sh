#!/bin/bash

echo "Enter Password:"
read pass

if [ "$pass" = "admin123" ]
then
    echo "Login Successful"
else
    echo "Wrong Password"
fi
