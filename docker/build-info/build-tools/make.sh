#!/bin/bash

list=$1

function custom(){

    rm -r -v ../build-custom/$list/$list-builder.sh
    cat ../build-custom/$list/.config/.opening ../build-custom/$list/build-list/* >> ../build-custom/$list/$list-builder.sh
    echo list=$list  >> ../build-custom/$list/$list-builder.sh
    cat ../build-custom/$list/.config/varibles ../build-custom/$list/build-list/* >> ../build-custom/$list/$list-builder.sh
    chmod u+x ../build-custom/$list/$list-builder.sh

}


#working

case $1 in

    "help" )

        cat ../build-help/help-make
    
    ;;

    *  )
    
        custom
    
    ;;

esac
