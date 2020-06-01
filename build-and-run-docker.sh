#!/bin/bash
docker build -t codehub-ui-image-server:latest .
docker run --rm -d -p 8080:80 -e PROXY_PASS='proxy_pass "http://localhost:8085";' codehub-ui-image-server:latest
