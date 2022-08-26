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

function confirmframe(){

    type=confirmframe



}


function confirmbasic(){
    
    type=confirmbasic
    echo "Are you sure you want to Proceed Y / N ?"
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
        ;;
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

                confirmbasic
                rm -r -v ../build-logs/*
                rm -r -v ../build-repos/*
                rm -r -v ../build-list/*

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
                
                    "frame" )
                        case $5 in

                            "date" )
                            confirmbasic
                            rm -r -v ../build-logs/$4/$6
                            ;;

                        esac

                    ;;

                    * ) 

                        confirmbasic
                        rm -r -v ../build-custom/$4/build-logs/*

                    ;;

                    $nothing ) 

                        confirmbasic
                        rm -r -v ../build-logs/*
                        
                    ;;
                   
                    "list" )

                        case $4 in

                            $nothing )
                               confirmbasic 
                               rm -r -v ../build-list/*
                               
                            ;;

                            * )

                                case $5 in
                                
                                    "frame" )
                                        case $7 in

                                            "date" )
                                            confirmbasic
                                            rm -r -v ../build-custom/$4/build-logs/$6/$8
                                            ;;
                                        esac
                                    ;;
                                    * ) 
                                        confirmbasic
                                        rm -r -v ../build-custom/$4/build-logs/*
                                    ;;

                                esac

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

            "repo" )
                
                case $3 in 
                    
                    $nothing )
                                                
                    ;;

                    "list" )
                        
                        case $5 in 

                            "frame" )

                                confirmbasic
                                rm -r -v ../build-custom/$4/build-repo/$6
                                
                            ;;

                        esac
                    
                    ;;


                esac
            ;;




        esac
    ;;

    "Miku" )
        echo "Do you really want to delete me?"
        confirmbasic
        rm -r -v $0/*
    ;;
    "all" )
        echo "WARING THIS WILL DELETE ALL THE DATA OF ALL LISTS INCULDING THE DEFAULT"
        confirmbasic echo "delete all"
        rm -r -v ../build-custom/*
        rm -r -v ../build-list/*
        rm -r -v ../build-logs/*
        rm -r -v ../build-repos/*
        echo
        echo "All lists removed"
        echo
    ;;
esac


