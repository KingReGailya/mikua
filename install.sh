#!/bin/bash 

echo "Warning this add a file to the /bin directoy do you want to continue y / n ?"

loc=`echo $PWD`



function install(){

        sudo rm -r -v /bin/mikub
        sudo echo "loc=$loc"
        sudo bash -c echo 'loc='$loc' >> /bin/mikub'
        sudo echo "#!/bin/bash"
        sudo bash -c 'echo "#!/bin/bash" >> /bin/mikub'
        sudo echo 
        sudo bash -c 'sudo echo >> /bin/mikub'
        sudo echo "$PWD/mikub" "$""*"
        sudo bash -c 'sudo echo "$PWD/build-info/build-tools/mikub" "$""*" >> /bin/mikub'

        sudo chmod u+x /bin/mikub
        sudo chmod 777 /bin/mikub 



}




function yesnt(){
        
        read answer     
       
        
        case $answer in
                "y" )
                    install ;;

             
                "n" )
                    exit ;;

                *  )
                    echo "y/n" 
                    yesnt ;;

        esac
}


yesnt