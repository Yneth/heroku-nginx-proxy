FROM nginx

COPY nginx.conf /etc/nginx/conf.d/default.conf

CMD sed -i -e 's|$PORT|'"$PORT"'|g; s|$PROXY_HOST|'"$PROXY_HOST"'|g' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
