#!/bin/bash


#!/bin/bash

type=$1

link=$2

template=$3

case $4 in 
    $nothing )
        name=$3
    ;;
    * )
        name=$4
    ;;
esac 


case $type in

    "plugin" )
        object='.config-templates'
    ;;
    "template" )
        object='.config-templates'
    ;;
    * )
    echo 
    echo "Unknown object $object"
    echo "This object type may not be supported"
    echo
    exit
    ;;
esac 

git clone $link ../temp

cp ../temp/templates/$template ../build-custom/$object/$name

rm -rf ../temp
