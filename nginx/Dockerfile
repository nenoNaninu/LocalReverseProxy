FROM nginx

WORKDIR /root
COPY ./nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf
RUN mkdir -p /etc/nginx/ssl/
COPY ./nginx/ssl/* /etc/nginx/ssl/
RUN chmod 600 /etc/nginx/ssl/nginx.key

# COPY ./out/ /var/spa/

EXPOSE 80
EXPOSE 443