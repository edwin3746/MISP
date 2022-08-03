#!/bin/sh
EXTERNAL_IP=$(dig TXT +short o-o.myaddr.l.google.com @ns1.google.com | awk -F'"' '{ print $2}')
value="https://"
export value1="${value}${EXTERNAL_IP}"
exec docker-compose $@
