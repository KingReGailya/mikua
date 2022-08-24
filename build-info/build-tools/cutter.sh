#!/bin/bash

list=$2

name=$1

function confirmlist(){
    
    
    echo All data and logs will be removed use 
    echo $ mikub list clear date-type list-here
    echo "to only clear the spiffic data type wanted"
    echo "Are you sure you want to delete the list $list y/n ?"
    
    read answer
    case $answer in

        "y" )
        ;;
        "n" )
            exit
        ;;
        *  )
        confirmlist

    esac

}



function customframe(){
    type=custom
    confirm
    rm -r -v ../build-custom/$list/build-list/$name
    ./make.sh list list
}


function defaultframe(){

    rm -r -v ../../build-list/$name
    ./make.sh

}


function removecustomlist(){

    rm -r -v ../build-custom/$list
}

case $1 in

    "list" )

        case $2 in

            $nothing )

                echo "can not remove default list"

            ;;
            
            * )
                            
                confirmlist
                rm -r -v ../build-custom/$2

            ;;
        esac
    ;;
  


esac


echo 