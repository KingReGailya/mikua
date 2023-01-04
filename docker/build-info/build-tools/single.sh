#!/bin/bash

#Runs a link once from either a template or a list
# mikua tmp TEMPLATE LINK 
#If using a one of your list as a template use put the list argument at the end 
# mikua temp LIST LINK list

mkdir ../build-custom/temp 

link=$2

template=$1

case $3 in 

    "list" )

        cat ../build-custom/$template/.config/.opening >> ../build-custom/temp/builder.sh
        cat ../build-custom/$template/.config/varibles >> ../build-custom/temp/builder.sh
        list=$template
        echo 'down=$dir/$list/' >> ../build-custom/temp/builder.sh
        echo link=$link >> ../build-custom/temp/builder.sh
        thing=`echo "$"q"$"down/"$"begin"$"arguments"$"end"$"q`
        partone=`echo yt-dlp "$"download "$"auth "$"link`
        parttwo=`echo "-o" $thing "$"envoirment`
        all=`echo 'echo ' $partone $parttwo '>> ../build-custom/temp/compiled.sh' >> ../build-custom/temp/builder.sh`        
        echo list=temp >> ../build-custom/temp/builder.sh
        cat ../build-custom/$template/.config/.ending >> ../build-custom/temp/builder.sh
 
    ;; 

    * )

        cat  ../build-custom/.config-templates/$template/.opening >> ../build-custom/temp/builder.sh
        cat  ../build-custom/.config-templates/$template/varibles >> ../build-custom/temp/builder.sh
        echo arrow='#' >> ../build-custom/temp/builder.sh
        echo list=temp >> ../build-custom/temp/builder.sh
        echo 'down=$dir/$list/' >> ../build-custom/temp/builder.sh
        echo link=$link >> ../build-custom/temp/builder.sh
        thing=`echo "$"q"$"down/"$"begin"$"arguments"$"end"$"q`
        partone=`echo yt-dlp "$"download "$"auth "$"link`
        parttwo=`echo "-o" $thing "$"envoirment`
        all=`echo 'echo ' $partone $parttwo '>> ../build-custom/temp/compiled.sh' >> ../build-custom/temp/builder.sh`        
        cat  ../build-custom/.config-templates/$template/.ending  >> ../build-custom/temp/builder.sh
        
    ;;

esac  

chmod u+x ../build-custom/temp/builder.sh
../build-custom/temp/builder.sh
rm -rf ../build-custom/temp
