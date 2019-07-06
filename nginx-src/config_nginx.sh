#!/bin/sh -x

file="/etc/nginx/conf.d/default.template"
ngix_conf="/etc/nginx/conf.d/default.conf"

for var in "$@"
do
	cp $file ${file}_current
    key=$(echo $var | awk -F = '{print $1}')
	value=$(echo $var | sed -e "s|$key=||g")

	sed -i "s|{{proxy_url}}|$key|g" ${file}_current
	sed -i "s|{{proxy_pass_url}}|$value|g" ${file}_current

	cat ${file}_current >> $ngix_conf
done