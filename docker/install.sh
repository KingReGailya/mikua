#!/bin/bash 

echo "Warning this program comes with no warrenty to any extent y / n ?"

loc=`echo $PWD`

function install(){

        rm -r -v /bin/mikua
        bash -c 'echo "#!/bin/bash" >> /bin/mikua'
        bash -c 'echo loc='$loc' >> /bin/mikua'
        bash -c 'echo cd '$loc/build-info/build-tools' >> /bin/mikua'
        bash -c 'echo >> /bin/mikua'
        bash -c 'echo "$PWD/build-info/build-tools/mikua" '$loc'/build-info/build-tools "$""*" >> /bin/mikua'
        chmod u+x /bin/mikua
        chmod 777 /bin/mikua 
        chmod u+x build-info/build-tools/*
        echo "Os" >> $PWD/build-info/installed-version
        curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
        chmod a+rx /usr/local/bin/yt-dlp
        
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