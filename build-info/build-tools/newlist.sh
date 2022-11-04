#!/bin/bash

#makes a new list

name=$2
type=$1

function yesnt(){

    echo Are you sure you want to proceed y / n ?
    read answer

   case $answer in 

        "y" )

            mkdir ../build-custom/$name
            mkdir ../build-custom/$name/build-list
            echo $type >> ../build-custom/$name/.type
            cp -r -v ../.opening ../build-custom/$name/build-list/.opening

        ;;

        "n" )

            exit

        ;;

        * )

            yesnt
        
        ;;
    
    esac

}

function confirm (){
 
  echo "the list name $name can cause confilcts with commands"
  yesnt 

}


case $type in 

    "song" )
    
    ;;

    "video" )
    
    ;;
    
    * )
        echo "invaild list type"
        exit
    ;;
esac


case $name in

    $nothing )

        echo "can not make an unammed list"

    ;;

    "help" )

        confirm
    
    ;;

    * )
 
        name=$name
        mkdir ../build-custom/$name
        mkdir ../build-custom/$name/build-list
        mkdir ../build-custom/$name/build-logs
        cp -rv ../build-custom/.config-templates/$type ../build-custom/$name/.config
        echo $type >> ../build-custom/$name/.config/type
        cp -rv ../../.opening ../build-custom/$name/build-list/.opening 

    ;;

esac

