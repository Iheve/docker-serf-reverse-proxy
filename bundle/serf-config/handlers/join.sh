#!/bin/bash
while read line; do

    ROLE=`echo $line | awk '{print \$3 }'`
    if [ "x${ROLE}" != "xbe" ]; then
        continue
    fi

    IP=`echo $line | awk '{print \$2 }'`

    SERVICE_NAME=`echo $line | awk '{print \$4 }' | \
        sed -e 's/.*servicename=\([a-zA-Z0-9.\-]*\).*/\1/'`

    FILE=/etc/nginx/sites-enabled/$SERVICE_NAME

    echo "server {" > $FILE
    echo "listen *:80;" >> $FILE
    echo "server_name $SERVICE_NAME;" >> $FILE
    echo "location / {" >> $FILE
    echo "proxy_pass http://$IP;" >> $FILE
    echo "}" >> $FILE
    echo "}" >> $FILE

done

/usr/sbin/nginx -s reload
