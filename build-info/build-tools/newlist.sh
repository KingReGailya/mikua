#!/bin/bash

#makes a new list

name=$1


function yesnt(){

    echo Are you sure you want to proceed y / n ?
    read answer

   case $answer in 

        "y" )

            mkdir ../build-custom/$name
            mkdir ../build-custom/$name/build-list
            mkdir ../build-custom/$name/build-logs
            mkdir ../build-custom/$name/build-repos
            cp -r -v ../build-list/.opening ../build-custom/$name/build-list/.opening

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
        mkdir ../build-custom/$name/build-repos
        cp -r -v ../build-list/.opening ../build-custom/$name/build-list/.opening 

    ;;

esac

