FROM iheve/docker-serf-be
MAINTAINER thibaut.coutelou@d2-si.eu

RUN apt-get update
RUN apt-get install -qqy apache2

RUN echo '[program:apache2]' >> /etc/supervisor/conf.d/supervisord.conf
RUN echo 'command=/bin/bash -c "source /etc/apache2/envvars && exec /usr/sbin/apache2 -DFOREGROUND"' >> /etc/supervisor/conf.d/supervisord.conf
