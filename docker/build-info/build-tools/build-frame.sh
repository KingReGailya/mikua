#!/bin/bash

# WARING MODIFFING THE FILE MAY END UP BRAKING THE PROGRAM 
# Proceed with caution

list=$1

dir=$4 

link=$3

name=$2

type=`cat ../build-custom/$list/.config/type`

function add(){

        echo "mkdir ../build-custom/$list/build-logs/$name" >> ../build-custom/$list/build-list/$name
        echo name=$name >> ../build-custom/$list/build-list/$name
        echo link=$link
        echo "mkdir ../build-custom/$list/build-logs/$name/""$""date" >> ../build-custom/$list/build-list/$name  
        echo 'mkdir $dir/$list $dir/$list/$name' >> ../build-custom/$list/build-list/$name
        echo >> ../build-custom/$list/build-list/$name
        echo thing=""$""dir"/"$""begin""$""arguments""$""end""
        partone=`echo yt-dlp "$"download $link`
        parttwo=`echo -o $thing "$"envoirment --download-archive ../build-custom/"$"list/build-logs/"$"name/"$"name.ark ">>"`
        partthree=  ../build-custom/"$"list/build-logs/"$"name/"$"date/download.log
        echo 'echo $partone $parttwo $partthree >> ../build-custom/$list/temp/$name.temp' >> ../build-custom/$list/build-list/$name

#       echo $partone $parttwo $partthree
#       echo 'echo  ' "'-o "$""dir"/"$""begin""$"end"".%(ext)s'"  '$envoirment --download-archive ../build-custom/$list/build-logs/$name/$name.ark >> ../build-custom/$list/build-logs/$name/$date/download.log"' >> ../build-custom/$list/build-list/$name
#       echo  "yt-dlp ""$""download"" $link -o '""$""dir/""$""begin""$""end"".%(ext)s'  ""$""envoirment"" --download-archive ../build-custom/$list/build-logs/$name/$name.ark " ">"">" "../build-custom/$list/build-logs/$name/""$""date""/download.log" >> ../build-custom/$list/build-list/$name

}

add 

 