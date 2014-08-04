## docker-serf-fe

This docker is an http nginx front-end.

It uses serf to keep an up-to-date nginx configuration.

To build this docker, use
docker build -t iheve/serf-fe .

To run this docker, use
docher run -d -p 80:80 iheve/serf-fe

You will be able to browse http://localhost/

After you run the backend serving for instance test.d2-si.eu you will be able
to browse http://test.d2-si.eu/

You might need to keep your /etc/hosts file up to date.

if you need to connect through ssh, you might want to set the root pw by adding
to your Dockerfile :
RUN echo "root:yourpwd"|chpasswd
