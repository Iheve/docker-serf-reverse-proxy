#!/bin/bash

# Set the service name = url served
/bin/sed -i "s/SERVICE_NAME/${SERVICE_NAME}/" /etc/serf/tags.json

# Add the ssh daemon to supervisord if $(SSH) is set
if ${SSH}; then
cat >> /etc/supervisor/conf.d/supervisord.conf << EOF

[program:sshd]
command=/usr/sbin/sshd -D
EOF
fi

#RUN supervisord
/usr/bin/supervisord
