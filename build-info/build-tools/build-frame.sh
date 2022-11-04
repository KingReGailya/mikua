#!/bin/bash

# WARING MODIFFING THE FILE MAY END UP BRAKING THE PROGRAM 
# Proceed with caution


#Argument 1 reffers to the name of the instance
#Argument 2 reffers to the name of the image
#Argument 3 reffers to the repo it builds from
#Argument 4 tell's it weather is a directory or a repo
#Agrument 5 tell's it weather to use the default or custom list        


list=$1

dir=$4 

link=$3

name=$2


case $dir in

        $nothing )

                dir="/downloads/$list/$name"

        ;;

esac



function add(){

        echo "mkdir ../build-custom/$list/build-logs/$name" >> ../build-custom/$list/build-list/$name
        echo "mkdir ../build-custom/$list/build-logs/$name/""$""date" >> ../build-custom/$list/build-list/$name  
        echo >> ../build-custom/$list/build-list/$name
        echo  "yt-dlp -f 'ba' -u -p -x --audio-format mp3 $link -o '$dir/track-%(playlist_index)02d - %(title)s.%(ext)s'  --geo-bypass --download-archive ../build-custom/$list/build-logs/$name/$name.ark " ">"">" "../build-custom/$list/build-logs/$name/""$""date""/download.log" >> ../build-custom/$list/build-list/$name

}


add 

 