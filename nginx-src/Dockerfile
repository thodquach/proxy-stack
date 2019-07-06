FROM nginx:1.17.0-alpine
WORKDIR /usr/share/nginx/html

#COPY nginx.template /etc/nginx/conf.d/default.template
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY config_nginx.sh /etc/nginx/conf.d/config_nginx.sh

EXPOSE 80
COPY entrypoint.sh /app/entrypoint.sh
CMD ["sh", "/app/entrypoint.sh"]