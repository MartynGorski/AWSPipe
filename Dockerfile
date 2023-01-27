FROM nginx:alpine
COPY ./app-funnydogs /usr/share/nginx/html
COPY ./config-files/default.conf /etc/nginx/conf.d/
EXPOSE 9000