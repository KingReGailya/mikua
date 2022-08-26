#!/bin/bash

loc=$1


case $2 in

    "export" )
       
        case $3 in 

            $nothing )

                name=mikub-export

            ;;

            * )

                name=$3

            ;;

        esac 

        mkdir ../export ../export/build-list
        cp -r -v ../build-custom ../export
        cp -r -v ../build-list/* ../export/build-default/build-list/*
        cp -r -v ../build-logs ../export/build-default
        cp -r -v ../build-repos ../export/build-default
        cd ..
        tar -czf $name.tar export
        rm -r -v export
        
    ;;

    "import" )
        
        tar xzf $name -C $loc/..
        cp -r -v ../export/build-custom/* ../build-custom/*
        cp -r -v ../export/build-default/build-list/* ../build-list/*
        cp -r -v ../export/build-default/build-logs/* ../build-logs/*
        cp -r -v ../export/build-default/build-repos/* ../build-repos/*
        rm -r -v ../export

    ;;
    
esac

