#!/bin/bash

list=$1
frame=$2
username=$3
password=$4

mv ../build-custom/$list/build-list/$frame ../build-custom/$list/temp.temp

echo auth = '-u' $username '-p' $password >> ../build-custom/$list/build-list/$frame
cat ../build-custom/$list/temp.temp >> ../build-custom/$list/build-list/$frame
echo auth = >> ../build-custom/$list/build-list/$frame

rm ../build-custom/$list/temp.temp

#mikua add auth LIST FRAME USERNAME PASSWORD