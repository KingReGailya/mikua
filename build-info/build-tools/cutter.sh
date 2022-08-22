#!/bin/bash

list=$2

name=$1

function custom(){

    rm -r -v ../build-custom/$list/build-list/$name
    ./make.sh list $list
}


function default(){

    rm -r -v ../../build-list/$name
    ./make.sh

}


function remove(){

    rm -r -v ../build-custom/$list
}


case $1 in
    "remove"  )
    remove
    exit
    ;;
esac

case $2 in

    "default"  )
        
    default

    ;;

    *  )
    custom
    ;;

esac


echo 