#!/bin/bash

# WARING MODIFFING THE FILE MAY END UP BRAKING THE PROGRAM 
# Proceed with caiojsaobncs aiodhnas


#Argument 1 reffers to the name of the instance
#Argument 2 reffers to the name of the image
#Argument 3 reffers to the repo it builds from
#Argument 4 tell's it weather is a directory or a repo
#Agrument 5 tell's it weather to use the default or custom list        


function folderb(){   $4

        echo >> ../build-info/build-list/$1
        echo >> ../build-info/build-list/$1
        echo "####" >> ../build-info/build-list/$1
        echo >> ../build-info/build-list/$1
        echo "#Builds the $1 / $2 image from Directory $3 " >> ../build-info/build-list/$1
        echo >> ../build-info/build-list/$1
        echo >> ../build-info/build-list/$1
        echo "mkdir ../build-info/build-logs/$1" >> ../build-info/build-list/$1
        echo "mkdir ../build-info/build-logs/$1/""$""date" >> ../build-info/build-list/$1
        echo "sudo rm -r -v ../build-info/build-repos/$1" ">"">" "../build-info/build-logs/$1/""$""date""/1-rm.log" >> ../build-info/build-list/$1
        echo "sudo cp -r -v $3 ../build-info/build-repos/$1-folder-copy" ">"">" "../build-info/build-logs/$1/""$""date""/2-copy.log" >> ../build-info/build-list/$1
        echo "docker build -t $2 ../build-info/build-repos/$1/" ">"">" "../build-info/build-logs/$1/""$""date""/3-build.log" >> ../build-info/build-list/$1
        echo "docker push $2" ">"">" "../build-info/build-logs/$1/""$""date""/4-push.log" >> ../build-info/build-list/$1
        echo >> ../build-info/build-list/$1
        echo >> ../build-info/build-list/$1
        echo "####" >> ../build-info/build-list/$1
}


function gitb(){

        echo >> ../build-info/build-list/$1
        echo >> ../build-info/build-list/$1
        echo "####" >> ../build-info/build-list/$1
        echo >> ../build-info/build-list/$1
        echo "#Builds the $1 / $2 image from the $3 repo" >> ../build-info/build-list/$1
        echo >> ../build-info/build-list/$1
        echo >> ../build-info/build-list/$1
        echo "mkdir ../build-info/build-logs/$1" >> ../build-info/build-list/$1
        echo "mkdir ../build-info/build-logs/$1/""$""date" >> ../build-info/build-list/$1
        echo "sudo rm -r -v ../build-info/build-repos/*" ">"">" "../build-info/build-logs/$1/""$""date""/1-rm.log" >> ../build-info/build-list/$1
        echo "git clone $3 ../build-info/build-repos/$1-git-repo" ">"">" "../build-info/build-logs/$1/""$""date""/2-clone.log" >> ../build-info/build-list/$1
        echo "docker build -t $2 ../build-info/build-repos/$1/" ">"">" "../build-info/build-logs/$1/""$""date""/3-build.log" >> ../build-info/build-list/$1
        echo "docker push $2" ">"">" "../build-info/build-logs/$1/""$""date""/4-push.log" >> ../build-info/build-list/$1
        echo >> ../build-info/build-list/$1
        echo >> ../build-info/build-list/$1
        echo "####" >> ../build-info/build-list/$1

}


function cusgit(){

        echo >> ../build-custom/$5/build-info/build-list/$1       
        echo >> ../build-custom/$5/build-list/$1

        echo "####" >> ../build-custom/$5/build-list/$1
        
        echo >> ../build-custom/$5/build-list/$1
        
        echo "#Builds the $1 / $2 image from the $3 repo" >> ../build-custom/$5/build-list/$1
        
        echo >> ../build-custom/$5/build-list/$1
        
        echo >> ../build-custom/$5/build-list/$1
        
        echo "mkdir ../build-custom/$5/build-logs/$1" >> ../build-custom/$5/build-list/$1
        
        echo "mkdir ../build-custom/$5/build-logs/$1/""$""date" >> ../build-custom/$5/build-list/$1
        
        echo "sudo rm -r -v ../build-custom/$5/build-repos/*" ">"">" "../build-custom/$5/build-logs/$1/""$""date""/1-rm.log" >> ../build-custom/$5/build-list/$1
        
        echo "git clone $3 ../build-custom/$5/build-repos/$1-git-repo" ">"">" "../build-custom/$5/build-logs/$1/""$""date""/2-clone.log" >> ../build-custom/$5/build-list/$1
        
        echo "docker build -t $2 ../build-custom/$5/build-repos/$1/" ">"">" "../build-custom/$5/build-logs/$1/""$""date""/3-build.log" >> ../build-custom/$5/build-list/$1
        
        echo "docker push $2" ">"">" "../build-custom/$5/build-logs/$1/""$""date""/4-push.log" >> ../build-custom/$5/build-list/$1
        
        echo >> ../build-custom/$5/build-list/$1
        
        echo >> ../build-custom/$5/build-list/$1
        
        echo "####" >> ../build-custom/$5/build-list/$1

}

function cusfol(){








}



















case $4 in 

        "dir"  )
        folderb ;;

        "git"  )
        gitb ;;

esac
