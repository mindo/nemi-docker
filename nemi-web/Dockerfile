# Set the base image to nemi:trusty
FROM nemi:trusty

# File Author / Maintainer
MAINTAINER 'Armindo Silva <ams@nemi.me>'

# Base install (supervisord + serf)
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y supervisor

# Install Nginx
RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:nginx/stable
RUN apt-get update
RUN apt-get install -y nginx
RUN chown -R www-data:www-data /var/lib/nginx
RUN mkdir -p /var/lib/nginx/body

# Install php5-fpm
ENV DEBIAN_FRONTEND noninteractive
RUN echo "UTC" > /etc/timezone
RUN dpkg-reconfigure tzdata
RUN apt-get install -y php5-fpm php5-mysql php5-curl php5-gd

# Configure FPM
RUN sed -i '/^;catch_workers_output/ccatch_workers_output = yes' /etc/php5/fpm/pool.d/www.conf

# Cleanup
RUN rm -rf /var/lib/apt/lists/*
RUN apt-get clean

# Define mountable directories.
ADD ./supervisord.conf /etc/supervisor/conf.d/supervisord-nginx-phpfpm.conf
VOLUME ["/etc/nginx", "/var/log", "/var/www"]


# Set the default command to execute when creating a new container
CMD ["/usr/bin/supervisord", "-n"]

