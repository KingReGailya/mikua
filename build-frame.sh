#!/bin/bash


echo "what is name"
read $name

echo "what is image"
read $image

echo "what is link"
read $link



echo "mkdir $PWD/build-logs/$name/$date" >> $PWD/$name.build

echo "sudo rm -r -v $PWD/builds/* >> $PWD/build-logs/$name/$date/'1-rm.log'" >> $PWD/$name.build

echo "git clone $link >> $PWD/build-logs/$name/$date/'2-clone.log'" >> $PWD/$name.build

echo "docker build -t $image $PWD/builds/YouTubeDownloader/. >> $PWD/build-logs/$name/$date/'3-build.log'" >> $PWD/$name.build

echo "docker push $image >> $PWD/build-logs/$name/$date/'4-push.log'" >> $PWD/$name.build


