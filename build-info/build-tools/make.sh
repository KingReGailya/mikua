#!/bin/bash


function default(){

    rm -r -v builder.sh
    cat ../build-info/build-list/.opening build-info/build-list/* >> builder.sh
    chmod u+x builder.sh
}

function custom(){


#not working RN :.(.....

case $1 in
        "new"  )
        ./newlist.sh 
        ;;
        "" )
        ;;
