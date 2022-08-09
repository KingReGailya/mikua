#!/bin/bash

# WARING MODIFFING THE FILE MAY END UP BRAKING THE PROGRAM 
# Proceed with caiojsaobncs aiodhnas


echo "what is name"
read name

echo "what is image"
read image

echo "what is link"
read link


echo "mkdir $PWD/build-info/build-logs/$name" >> $PWD/build-info/build-list/$name'.build'
echo "sudo rm -r -v $PWD/builds/*" ">"">" "$PWD/build-info/build-logs/name/""$""date""1-rm.log'" >> $PWD/build-info/build-list/$name'.build'
echo "git clone $link build-repos/$name-git-repo" ">"">" "$PWD/build-info/build-logs/name/""$""date""'2-clone.log'" >> $PWD/build-info/build-list/$name'.build'
echo "docker build -t $image $PWD/builds/$name/" ">"">" "$PWD/build-logs/$name/""$""date""/'3-build.log'" >> $PWD/build-info/build-list/$name'.build'
echo "docker push $image" ">"">" "$PWD/build-logs/$name/""$""date""/'4-push.log'" >> $PWD/build-info/build-list/$name'.build'

