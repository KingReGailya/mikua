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


git clone $link ../temp

case $type in

    "plugin" )
             
        required=`ls ../temp/plugins/$plugin/required`

        case $required in

            "required" )

                echo "This plugin reqires programs that may not be availbe in the offial docker image and may need to be reinstalled upon restart"
                confirmbasic 
                cp ../temp/$type/$template ../build-custom/$object/$name

            ;;

        esac 

    ;;

    ;;
    "template" )
    ;;

    * )
    echo 
    echo "Unknown object $object"
    echo "This object type may not be supported"
    echo
    exit
    ;;

esac 

cp ../temp/templates/$template ../build-custom/$object/$name

rm -rf ../temp

case $type in

    "plugin" )
    
        object='.config-templates'


esac 
