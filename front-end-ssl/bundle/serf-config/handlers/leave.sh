#!/bin/bash
while read line; do

    ROLE=`echo $line | awk '{print \$3 }'`
    if [ "x${ROLE}" != "xbe" ]; then
        continue
    fi

    SERVICE_NAME=`echo $line | awk '{print \$4 }' | \
        sed -e 's/.*servicename=\([a-zA-Z0-9.\-]*\).*/\1/'`

    FILE=/etc/nginx/sites-enabled/$SERVICE_NAME

    rm -f $FILE

done

/usr/sbin/nginx -s reload
