#!/bin/bash

list = $1
frame = $2
username = $3
password = $4

mv ../build-custom/$list/$frame ../build-custom/$list/temp.temp

echo auth = '-u' $username '-p' $password >> ../build-custom/$list/$frame
cat ../build-custom/$list/temp.temp >> ../build-custom/$list/$frame
echo auth = >> ../build-custom/$list/$frame

#mikua add auth LIST FRAME USERNAME PASSWORD