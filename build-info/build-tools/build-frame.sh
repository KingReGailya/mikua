#!/bin/bash

# WARING MODIFFING THE FILE MAY END UP BRAKING THE PROGRAM 
# Proceed with caution

list=$1

dir=$4 

link=$3

name=$2

type=`cat ../build-custom/$list/.config/type`

case $dir in

        $nothing )

                dir="/downloads/$list/$name"

        ;;

esac

case $type in 

        "song" )

                namemethod="$dir/track-%(playlist_index)02d - %(title)s.%(ext)s"
                download="-f 'ba' ""$""auth"" -x --audio-format mp3 "

        ;;

        "video")
                
                namemethod="$dir/%(playlist_index)02d - %(title)s.%(ext)s"
                download='-f $auth "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best"'
        
        ;;

        * )
                echo "invailed list type"
        ;;
esac






function add(){

        echo "mkdir ../build-custom/$list/build-logs/$name" >> ../build-custom/$list/build-list/$name
        echo "mkdir ../build-custom/$list/build-logs/$name/""$""date" >> ../build-custom/$list/build-list/$name  
        echo >> ../build-custom/$list/build-list/$name
        echo  "yt-dlp $download $link -o '$namemethod'  --geo-bypass --download-archive ../build-custom/$list/build-logs/$name/$name.ark " ">"">" "../build-custom/$list/build-logs/$name/""$""date""/download.log" >> ../build-custom/$list/build-list/$name

}


add 

 