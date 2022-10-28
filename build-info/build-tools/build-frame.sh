#!/bin/bash

# WARING MODIFFING THE FILE MAY END UP BRAKING THE PROGRAM 
# Proceed with caution


#Argument 1 reffers to the name of the instance
#Argument 2 reffers to the name of the image
#Argument 3 reffers to the repo it builds from
#Argument 4 tell's it weather is a directory or a repo
#Agrument 5 tell's it weather to use the default or custom list        


list=$5

repo=$3

image=$2

name=$1

function cusgit(){

        echo >> ../build-custom/$list/build-list/$name   
        echo >> ../build-custom/$list/build-list/$name
        echo "####" >> ../build-custom/$list/build-list/$name
        echo >> ../build-custom/$list/build-list/$name
        echo "#Builds the $name / $image image from the $repo repo" >> ../build-custom/$list/build-list/$name
        echo >> ../build-custom/$list/build-list/$name
        echo >> ../build-custom/$list/build-list/$name
        echo "mkdir ../build-custom/$list/build-logs/$name" >> ../build-custom/$list/build-list/$name
        echo "mkdir ../build-custom/$list/build-logs/$name/""$""date" >> ../build-custom/$list/build-list/$name
        echo "sudo rm -r -v ../build-custom/$list/build-repos/$name" ">"">" "../build-custom/$list/build-logs/$name/""$""date""/1-rm.log" >> ../build-custom/$list/build-list/$name
        echo "git clone $repo ../build-custom/$list/build-repos/$name" ">"">" "../build-custom/$list/build-logs/$name/""$""date""/2-clone.log" >> ../build-custom/$list/build-list/$name
        echo "sudo docker build -t $image ../build-custom/$list/build-repos/$name/" ">"">" "../build-custom/$list/build-logs/$name/""$""date""/3-build.log" >> ../build-custom/$list/build-list/$name
        echo "sudo docker push $image" ">"">" "../build-custom/$list/build-logs/$name/""$""date""/4-push.log" >> ../build-custom/$list/build-list/$name
        echo >> ../build-custom/$list/build-list/$name
        echo >> ../build-custom/$list/build-list/$name
        echo "####" >> ../build-custom/$list/build-list/$name
        echo $name $image $repo $list

}

function cusfol(){

        echo >> ../build-custom/$list/build-list/$name   
        echo >> ../build-custom/$list/build-list/$name
        echo "####" >> ../build-custom/$list/build-list/$name
        echo >> ../build-custom/$list/build-list/$name
        echo "#Builds the $name / $image image from the $repo Directory" >> ../build-custom/$list/build-list/$name
        echo >> ../build-custom/$list/build-list/$name
        echo >> ../build-custom/$list/build-list/$name
        echo "mkdir ../build-custom/$list/build-logs/$name" >> ../build-custom/$list/build-list/$name
        echo "mkdir ../build-custom/$list/build-logs/$name/""$""date" >> ../build-custom/$list/build-list/$name
        echo "sudo rm -r -v ../../build-info/build-repos/$name" ">"">" "../build-custom/$list/build-logs/$name/""$""date""/1-rm.log" >> ../build-custom/$list/build-list/$name
        echo "sudo cp -r -v $repo ../../build-info/build-repos/$name" ">"">" "../build-custom/$list/build-logs/$name/""$""date""/2-copy.log" >> ../build-custom/$list/build-list/$name
        echo "sudo docker build -t $image ../build-custom/$list/build-repos/$name/" ">"">" "../build-custom/$list/build-logs/$name/""$""date""/3-build.log" >> ../build-custom/$list/build-list/$name
        echo "suod docker push $image" ">"">" "../build-custom/$list/build-logs/$name/""$""date""/4-push.log" >> ../build-custom/$list/build-list/$name
        echo >> ../build-custom/$list/build-list/$name
        echo >> ../build-custom/$list/build-list/$name
        echo "####" >> ../build-custom/$list/build-list/$name

}

case $4 in 

        "cusgit" )
        cusgit ;;

        "cusfol" )
        cusfol ;;

esac
