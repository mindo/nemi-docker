#
# Percona Server Dockerfile
#
# https://github.com/dockerfile/percona
#

# Pull base image.
FROM ubuntu:trusty

# File Author / Maintainer
MAINTAINER 'Armindo Silva <ams@nemi.me>'

# Install Percona Server.
RUN \
  apt-key adv --keyserver keys.gnupg.net --recv-keys 1C4CBDCDCD2EFD2A && \
  echo "deb http://repo.percona.com/apt `lsb_release -cs` main" > /etc/apt/sources.list.d/percona.list && \
  apt-get update && \
  apt-get install -y percona-server-server-5.6 && \
  rm -rf /var/lib/apt/lists/*


# Define mountable directories.
VOLUME ["/var/lib/mysql"]

# Define default command.
ADD ./startup.sh /opt/startup.sh

USER mysql
CMD ["/bin/bash", "/opt/startup.sh"]


