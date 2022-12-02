#!/bin/bash


function confirmbasic(){
    
    echo "Are you sure you want to Proceed Y / N ?"

    read answer
    case $answer in

        "y" )

        ;;

        "n" )

            exit

        ;;
    
        *  )
    
            confirmbasic
    
        ;;
    
    esac

}

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

reqired=`ls ../temp/plugins/$plugin/reqgired`

case $type in

    "plugin" )
             
        reqired=`ls ../temp/plugins/$plugin/reqgired`

        case $reqired in

            "reqired" )

                echo "This plugin reqires programs that may not be availbe in the offial docker image and may need to be reinstalled upon restart"
                confirmbasic 

            ;;

        esac 

    ;;

esac 

cp ../temp/templates/$template ../build-custom/$object/$name

rm -rf ../temp
