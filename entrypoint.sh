#!/bin/bash
echo "----------------------"
echo $PROXY_PASS
echo ${PROXY_PASS}
echo "----------------------"
envsubst '${PROXY_PASS}' < /etc/nginx/nginx.template.conf > /etc/nginx/nginx.conf
echo "----------------------"
cat /etc/nginx/nginx.conf
echo "----------------------"
nginx -g 'daemon off;'
