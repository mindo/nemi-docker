# Set the base image to Ubuntu LTS
FROM ubuntu:trusty

# File Author / Maintainer
MAINTAINER 'Armindo Silva <ams@nemi.me>'

# Base install + serf
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y unzip
ADD https://dl.bintray.com/mitchellh/serf/0.6.3_linux_amd64.zip serf.zip
RUN unzip serf.zip
RUN rm *.zip
RUN mv serf /usr/local/bin/

# Cleanup
RUN rm -rf /var/lib/apt/lists/*
RUN apt-get clean

# Set the default command to execute when creating a new container
CMD ["bash"]

