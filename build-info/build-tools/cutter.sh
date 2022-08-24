#!/bin/bash

list=$2

name=$1

function confirmlist(){
    
    
    echo All data and logs will be removed use 
    echo $ mikub list clear date-type list-here
    echo "to only clear the spiffic data type wanted"
    echo "Are you sure you want to delete the list $list y/n ?"
    
    type=confirmlist

    confirm

}

function confirm(){

    read answer
    case $answer in

        "y" )
        ;;
        "n" )
            exit
        ;;
        *  )
        $type

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
  
    "clear" )
        case $2 in
            
            "logs" )

                case $3 in
                
                    $nothing ) 
                        rm -r -v ../build-logs/*
                    ;;
                   
                    "list" )

                        case $4 in

                            $nothing )
                               echo please specffiy list
                            ;;

            


                            * )
                                rm -r -v ../build-custom/$4/build-logs/*
                            ;;
                        esac
                        
                    ;;

                esac
            ;;
            "list" )
                case $3 in

                    $nothing )
                        rm -r -v ../build-list/*
                    ;;

                    * )
                        case $4 in

                            $nothing )
                                    rm -r -v ../build-custom/$3/build-list/*
                            ;;

                            * )


                                case $4 in

                                    "frame" )
                                        rm -r -v ../build-custom/$3/build-list/$5
                                    ;;
                                esac
                                
                            ;;


                        esac
                    ;;

                esac
            ;;


        esac
    ;;

esac


