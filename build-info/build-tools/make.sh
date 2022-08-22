#!/bin/bash

list=$1

function default(){

    rm -r -v ../../builder.sh
    cat ../build-list/.opening ../build-list/* >> ../../builder.sh
    chmod u+x ../../builder.sh

}

function custom(){

    rm -r -v ../build-custom/$list/$list-builder.sh
    cat ../build-custom/$list/build-list/.opening ../build-custom/$list/build-list/* >> ../build-custom/$list/$list-builder.sh
    chmod u+x ../build-custom/$list/$list-builder.sh

}


#working

case $1 in

    $nothing )
    default
    ;;
    
    *  )
    custom
    ;;

esac
