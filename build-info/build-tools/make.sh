#!/bin/bash

list=$2

function default(){

    rm -r -v ../..builder.sh
    cat ../build-list/.opening build-info/build-list/* >> ../builder.sh
    chmod u+x ../..builder.sh
    echo yes
}

function custom(){
    rm -r -v ../build-custom/$list/$list-builder.sh
    cat ../build-custom/$list/build-list/.opening ../build-custom/$list/build-list/* >> ../build-custom/$list/$list-builder.sh
    chmod u+x ../build-custom/$list/$list-builder.sh

}


#not working RN :.(.....

case $1 in
    
    "list"  )
    custom
    exit
        ;;


esac

default