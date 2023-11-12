FROM ubuntu:latest
RUN  apt-get -y update && apt-get -y install nginx
COPY ./default /etc/nginx/sites-available/default
COPY ./ /usr/share/nginx/html/
EXPOSE 80
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
