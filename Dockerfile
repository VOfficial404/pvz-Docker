FROM vofficialuwu/debian-novnc-wine:latest

LABEL authors="user"

RUN apt install p7zip p7zip-full

COPY ./start.sh /bin/pvz

RUN chmod +x /bin/pvz

RUN wget https://github.com/V-Official-233/pvz-Docker/releases/download/v2.2/v2.2.zip &&\
    mv v2.2.zip /root/.wine/drive_c/v2.2.zip

RUN cd /root/.wine/drive_c &&\ 
    mkdir pvz &&\ 
    mv v2.2.zip pvz &&\
    cd pvz &&\
    unzip v2.2.zip &&\
    rm v2.2.zip
