#!/bin/bash

# WARING MODIFFING THE FILE MAY END UP BRAKING THE PROGRAM 
# Proceed with caution

list=$1

dir=$4 

link=$3

name=$2

type=`cat ../build-custom/$list/.config/type`

function add(){

        echo >> ../build-custom/$list/build-list/$name
        echo '###' >> ../build-custom/$list/build-list/$name
        echo >> ../build-custom/$list/build-list/$name
        echo "mkdir ../build-custom/$list/build-logs/$name" >> ../build-custom/$list/build-list/$name
        echo name=$name >> ../build-custom/$list/build-list/$name
        echo link=$link >> ../build-custom/$list/build-list/$name
        echo "mkdir ../build-custom/$list/build-logs/$name/""$""date" >> ../build-custom/$list/build-list/$name
        echo 'mkdir ''$dir/$list $dir/$list/$name''' >> ../build-custom/$list/build-list/$name
        echo >> ../build-custom/$list/build-list/$name
        thing=`echo "$"q"$"dir/"$"begin"$"arguments"$"end"$"q`
        partone=`echo yt-dlp "$"download $link`
        parttwo=`echo "-o" $thing "$"envoirment --download-archive ../build-custom/"$"list/build-logs/"$"name/"$"name.ark`
        partthree=`echo  ../build-custom/"$"list/build-logs/"$"name/"$"date/download.log`
        all=`echo 'echo' $partone $parttwo ">>" $partthree '>> ../build-custom/$list/temp/$name.temp'`
        echo $all >> ../build-custom/$list/build-list/$name
        echo >> ../build-custom/$list/build-list/$name
        echo ../build-custom/$list/complied.sh >> ../build-custom/$list/build-list/$name
        echo '###' >> ../build-custom/$list/build-list/$name

}

add 

 