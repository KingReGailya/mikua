#!/bin/bash

#makes a new list


mkidr ../build-custom/$1
mkdir ../build-custom/$1/build-list
mkdir ../build-custom/$1/build-logs
mkdir ../build-custom/$1/build-repos
cp -r -v ../build-list/.opening ../build-custom/$1/build-list/.opening
