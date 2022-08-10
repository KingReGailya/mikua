#!/bin/bash

# WARING MODIFFING THE FILE MAY END UP BRAKING THE PROGRAM 
# Proceed with caiojsaobncs aiodhnas


#Argument 1 reffers to the name of the instance
#Argument 2 reffers to the name of the image
#Argument 3 reffers to the repo it builds from

echo >> $PWD/build-info/build-list/$1
echo >> $PWD/build-info/build-list/$1
echo "####" >> $PWD/build-info/build-list/$1
echo >> $PWD/build-info/build-list/$1
echo "#Builds the $1 / $2 image from the $3 repo" >> $PWD/build-info/build-list/$1
echo >> $PWD/build-info/build-list/$1
echo >> $PWD/build-info/build-list/$1
echo "mkdir $PWD/build-info/build-logs/$1" >> $PWD/build-info/build-list/$1
echo "sudo rm -r -v $PWD/builds/*" ">"">" "$PWD/build-info/build-logs/name/""$""date""1-rm.log'" >> $PWD/build-info/build-list/$1
echo "git clone $3 build-repos/$1-git-repo" ">"">" "$PWD/build-info/build-logs/name/""$""date""'2-clone.log'" >> $PWD/build-info/build-list/$1
echo "docker build -t $2 $PWD/builds/$1/" ">"">" "$PWD/build-logs/$1/""$""date""/'3-build.log'" >> $PWD/build-info/build-list/$1
echo "docker push $2" ">"">" "$PWD/build-logs/$1/""$""date""/'4-push.log'" >> $PWD/build-info/build-list/$1
echo >> $PWD/build-info/build-list/$1
echo "####" >> $PWD/build-info/build-list/$1