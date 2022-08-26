#!/bin/bash

#makes a new list

invaild=help

case $1 in

    $invalid )
  
        echo "The name $1 is and invaild name as it confilcts with commands"
  
    ;;




    $nothing )

        echo "can not make an unammed list"

    ;;

    * )
 
        mkdir ../build-custom/$1
        mkdir ../build-custom/$1/build-list
        mkdir ../build-custom/$1/build-logs
        mkdir ../build-custom/$1/build-repos
        cp -r -v ../build-list/.opening ../build-custom/$1/build-list/.opening 

    ;;
esac

