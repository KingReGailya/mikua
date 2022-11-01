FROM ubuntu
RUN apt update
#install dependises 
RUN apt install apt-utils
RUN apt -y install nano curl python3 ffmpeg zip
RUN apt-get update && apt-get install -y git
#installs YT-DLP
RUN curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
RUN chmod a+rx /usr/local/bin/yt-dlp
RUN mkdir /downloads

RUN git clone http://192.168.2.175:3000/KingReGailya/Miku-yta.git /git 
COPY mikua /bin/mikua
RUN mkdir /downloads