#!/bin/bash

list=$4
frame=$6

cat ../build-list/$list/.opening >> ../build-list/$list/temp.sh
cat ../build-list/$list/$frame >> ../build-list/$list/temp.sh
chmod u+x ../build-list/$list/temp.sh
../build-list/$list/temp.sh
rm -v ../build-list/$list/temp.sh
