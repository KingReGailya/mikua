#!/bin/bash

# WARING MODIFFING THE FILE MAY END UP BRAKING THE PROGRAM 
# Proceed with caution

list=$1

dir=$4 

link=$3

name=$2

type=`cat ../build-custom/$list/.config/type`

begin=`cat ../build-custom/$list/.config/name-begin`

end=`cat ../build-custom/$list/.config/name-end`

arguments=`cat ../build-custom/$list/.config/arguments`

envoirment=`cat ../build-custom/$list/.config/envoirment`

download=`cat ../build-custom/$list/.config/download`

namemethod="$dir/$begin$arguments$end.%(ext)s"

case $dir in

        $nothing )

                dir="/downloads/$list/$name"

        ;;

esac

function add(){

        echo "mkdir ../build-custom/$list/build-logs/$name" >> ../build-custom/$list/build-list/$name
        echo "mkdir ../build-custom/$list/build-logs/$name/""$""date" >> ../build-custom/$list/build-list/$name  
        echo >> ../build-custom/$list/build-list/$name
        echo  "yt-dlp $download $link -o '$namemethod'  $envoirment --download-archive ../build-custom/$list/build-logs/$name/$name.ark " ">"">" "../build-custom/$list/build-logs/$name/""$""date""/download.log" >> ../build-custom/$list/build-list/$name

}


add 

 