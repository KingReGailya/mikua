#!/bin/bash


echo "what is name"
read name

echo "what is image"
read image

echo "what is link"
read link



echo "mkdir $PWD/build-info/build-logs/$name" >> $PWD/build-info/build-list/$name'.build'

echo "sudo rm -r -v $PWD/builds/* >> $PWD/build-info/build-logs/name/'1-rm.log'" >> $PWD/build-info/build-list/$name'.build'

echo "git clone $link build-repos/$name-git-repo >> $PWD/build-info/build-logs/name/'2-clone.log'" >> $PWD/build-info/build-list/$name'.build'