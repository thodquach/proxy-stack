#!/bin/sh -x

/etc/nginx/conf.d/config_nginx.sh $ENTRYPOINT_ARG

nginx -g "daemon off;"