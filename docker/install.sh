#!/bin/bash 

echo "Warning this program comes with no warrenty to any extent y / n ?"

loc=`echo $PWD`



function install(){

        sudo rm -r -v /bin/mikua

        sudo bash -c 'echo "#!/bin/bash" >> /bin/mikua'
        sudo bash -c 'echo loc='$loc' >> /bin/mikua'

        sudo bash -c 'echo cd '$loc/build-info/build-tools' >> /bin/mikua'
        
        sudo bash -c 'sudo echo >> /bin/mikua'
        
        sudo bash -c 'sudo echo "$PWD/build-info/build-tools/mikua" '$loc'/build-info/build-tools "$""*" >> /bin/mikua'

        sudo chmod u+x /bin/mikua
        sudo chmod 777 /bin/mikua 



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