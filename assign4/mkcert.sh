#!/usr/bin/env sh
#
#
# Invocation: 
#
#        mkcert.sh <sitename>
#
#

if [ $# -lt 1 ]; then
    echo "Need an argument" 1>&2
    exit 1
fi

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout $1.key -out $1.crt
