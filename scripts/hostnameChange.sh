#!/bin/bash
cd ~
EXTERNAL_IP=$(dig TXT +short o-o.myaddr.l.google.com @ns1.google.com | awk -F'"' '{ print $2}')
value="https://"
value1="${value}${EXTERNAL_IP}"
echo value1 >> myfile.txt

