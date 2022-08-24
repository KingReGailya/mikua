#!/bin/bash

case $1 in

    $nothing )

            cat ../build-list/*
                
        ;;
        
    * )
        case $2 in

            $nothing )

                cat ../build-custom/$1/build-list/*

                ;;

            "list" )

                case $2 in

                    $nothing )
                        
                        ls ../build-list  
                      
                    ;;

                    * )
                        case $3 in 

                        $nothing )
                            
                            ls ../build-custom/$/build-list

                        ;;



                        
                        * )

                            cat ../build-custom/$2/build-list/$3

                        ;;

                        esac
                    ;;

                esac
            
            ;;
        
        
        
        esac
        ;;

esac
            





