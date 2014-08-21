# docker-serf-reverse-proxy

This docker container is an http nginx reverse-proxy.
It uses serf to keep an up-to-date nginx configuration.

To build this docker, use
docker build -t iheve/serf-reverse-proxy .

To run this docker, use
docker run -d -p 80:80 iheve/serf-reverse-proxy

You will be able to browse http://localhost/

## Back end
You can find the base back-end image in the back-end folder.

## Back end demo
You can find a demo back-end image in the back-end-demo folder.

## Walkthrough
Start the front-end :
docker run -d -p 80:80 iheve/serf-reverse-proxy

Start a demo-back-end :
docker run -d -e "SERVICE_NAME=example.org"  iheve/serf-reverse-proxy-be-demo

Update your /etc/hosts :
echo "127.0.0.1 example.org" >> /etc/hosts

Access http://example.org/ in your web browser

## Tips
if you need to connect through ssh, you might want to set the root pw by adding
to your Dockerfile :
RUN echo "root:yourpwd"|chpasswd
