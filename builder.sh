#!/bin/bash

# WARING MODIFFING THE FILE MAY END UP BRAKING THE PROGRAM 
# Proceed with caiojsaobncs aiodhnas

date=`date +%y-%m-%d`




####

#Builds the name / image image from the repo repo


mkdir ../../build-info/build-logs/name
mkdir ../../build-info/build-logs/name/$date
sudo rm -r -v ../../build-info/build-repos/name >> ../../build-info/build-logs/name/$date/1-rm.log
git clone repo ../../build-info/build-repos/name >> ../../build-info/build-logs/name/$date/2-clone.log
docker build -t image ../../build-info/build-repos/name/ >> ../../build-info/build-logs/name/$date/3-build.log
docker push image >> ../../build-info/build-logs/name/$date/4-push.log


####


####

#Builds the nrame / image image from the repo repo


mkdir ../../build-info/build-logs/nrame
mkdir ../../build-info/build-logs/nrame/$date
sudo rm -r -v ../../build-info/build-repos/nrame >> ../../build-info/build-logs/nrame/$date/1-rm.log
git clone repo ../../build-info/build-repos/nrame >> ../../build-info/build-logs/nrame/$date/2-clone.log
docker build -t image ../../build-info/build-repos/nrame/ >> ../../build-info/build-logs/nrame/$date/3-build.log
docker push image >> ../../build-info/build-logs/nrame/$date/4-push.log


####


####

#Builds the nrhhfame / image image from the repo repo


mkdir ../../build-info/build-logs/nrhhfame
mkdir ../../build-info/build-logs/nrhhfame/$date
sudo rm -r -v ../../build-info/build-repos/nrhhfame >> ../../build-info/build-logs/nrhhfame/$date/1-rm.log
git clone repo ../../build-info/build-repos/nrhhfame >> ../../build-info/build-logs/nrhhfame/$date/2-clone.log
docker build -t image ../../build-info/build-repos/nrhhfame/ >> ../../build-info/build-logs/nrhhfame/$date/3-build.log
docker push image >> ../../build-info/build-logs/nrhhfame/$date/4-push.log


####
