#!/bin/bash
envsubst '${PROXY_PASS},${PROXY_PASS_SIMAGES}' < /etc/nginx/nginx.template.conf > /etc/nginx/nginx.conf
echo "----------------------"
cat /etc/nginx/nginx.conf
echo "----------------------"
nginx -g 'daemon off;error_log /dev/stdout debug;'
