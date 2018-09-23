FROM ubuntu
MAINTAINER pbinks@gmail.com

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get -y install ffmpeg cifs-utils curl bzip2

RUN cd /
RUN curl http://download.roonlabs.com/builds/RoonServer_linuxx64.tar.bz2 --output /RoonServer_linuxx64.tar.bz2
RUN tar xvjf /RoonServer_linuxx64.tar.bz2

ENV ROON_DATAROOT=/RoonServer/data
RUN mkdir $ROON_DATAROOT

ENTRYPOINT /RoonServer/start.sh

