#!/bin/bash
envsubst '${PROXY_PASS},${S3_BUCKET}' < /etc/nginx/nginx.template.conf > /etc/nginx/nginx.conf
nginx -g 'daemon off;'
