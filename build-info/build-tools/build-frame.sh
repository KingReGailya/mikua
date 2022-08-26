#!/bin/bash

# WARING MODIFFING THE FILE MAY END UP BRAKING THE PROGRAM 
# Proceed with caiojsaobncs aiodhnas


#Argument 1 reffers to the name of the instance
#Argument 2 reffers to the name of the image
#Argument 3 reffers to the repo it builds from
#Argument 4 tell's it weather is a directory or a repo
#Agrument 5 tell's it weather to use the default or custom list        


list=$5

repo=$3

image=$2

name=$1


function folderb(){

        echo >> ../../build-info/build-list/$name
        echo >> ../../build-info/build-list/$name
        echo "####" >> ../../build-info/build-list/$name
        echo >> ../../build-info/build-list/$name
        echo "#Builds the $name / $image image from Directory $repo " >> ../../build-info/build-list/$name
        echo >> ../../build-info/build-list/$name
        echo >> ../../build-info/build-list/$name
        echo "mkdir ../../build-info/build-logs/$name" >> ../../build-info/build-list/$name
        echo "mkdir ../../build-info/build-logs/$name/""$""date" >> ../../build-info/build-list/$name
        echo "sudo rm -r -v ../../build-info/build-repos/$name" ">"">" "../../build-info/build-logs/$name/""$""date""/1-rm.log" >> ../../build-info/build-list/$name
        echo "sudo cp -r -v $repo ../../build-info/build-repos/$name" ">"">" "../../build-info/build-logs/$name/""$""date""/2-copy.log" >> ../../build-info/build-list/$name
        echo "docker build -t $image ../../build-info/build-repos/$name/" ">"">" "../../build-info/build-logs/$name/""$""date""/3-build.log" >> ../../build-info/build-list/$name
        echo "docker push $image" ">"">" "../../build-info/build-logs/$name/""$""date""/4-push.log" >> ../../build-info/build-list/$name
        echo >> ../../build-info/build-list/$name
        echo >> ../../build-info/build-list/$name
        echo "####" >> ../../build-info/build-list/$name

}



function gitb(){ 

        echo >> ../../build-info/build-list/$name
        echo >> ../../build-info/build-list/$name
        echo "####" >> ../../build-info/build-list/$name
        echo >> ../../build-info/build-list/$name
        echo "#Builds the $name / $image image from the $repo repo" >> ../../build-info/build-list/$name
        echo >> ../../build-info/build-list/$name
        echo >> ../../build-info/build-list/$name
        echo "mkdir ../../build-info/build-logs/$name" >> ../../build-info/build-list/$name
        echo "mkdir ../../build-info/build-logs/$name/""$""date" >> ../../build-info/build-list/$name
        echo "sudo rm -r -v ../../build-info/build-repos/$name" ">"">" "../../build-info/build-logs/$name/""$""date""/1-rm.log" >> ../../build-info/build-list/$name
        echo "git clone $repo ../../build-info/build-repos/$name" ">"">" "../../build-info/build-logs/$name/""$""date""/2-clone.log" >> ../../build-info/build-list/$name
        echo "docker build -t $image ../../build-info/build-repos/$name/" ">"">" "../../build-info/build-logs/$name/""$""date""/3-build.log" >> ../../build-info/build-list/$name
        echo "docker push $image" ">"">" "../../build-info/build-logs/$name/""$""date""/4-push.log" >> ../../build-info/build-list/$name
        echo >> ../../build-info/build-list/$name
        echo >> ../../build-info/build-list/$name
        echo "####" >> ../../build-info/build-list/$name
        echo $name $image $repo

}

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
        echo "docker build -t $image ../build-custom/$list/build-repos/$name/" ">"">" "../build-custom/$list/build-logs/$name/""$""date""/3-build.log" >> ../build-custom/$list/build-list/$name
        echo "docker push $image" ">"">" "../build-custom/$list/build-logs/$name/""$""date""/4-push.log" >> ../build-custom/$list/build-list/$name
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
        echo "docker build -t $image ../build-custom/$list/build-repos/$name/" ">"">" "../build-custom/$list/build-logs/$name/""$""date""/3-build.log" >> ../build-custom/$list/build-list/$name
        echo "docker push $image" ">"">" "../build-custom/$list/build-logs/$name/""$""date""/4-push.log" >> ../build-custom/$list/build-list/$name
        echo >> ../build-custom/$list/build-list/$name
        echo >> ../build-custom/$list/build-list/$name
        echo "####" >> ../build-custom/$list/build-list/$name

}

case $4 in 

        "dir"  )
        folderb ;;

        "git"  )
        gitb ;;

        "cusgit" )
        cusgit ;;

        "cusfol" )
        cusfol ;;

esac
