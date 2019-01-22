BallRena.exe -batchmode -nographics


FROM ubuntu:16.04

WORKDIR /server

COPY ./server

RUN apt-get install wget -y && apt-get install zip -y 
RUN wget https://ballrena.ml/build.zip
RUN unzip build.zip
RUN cd LinuxServer

EXPOSE *

CMD["./build/BallRenaLinux.x86_64 -batchmode -nographics"]



 