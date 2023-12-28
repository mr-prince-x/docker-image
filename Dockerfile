FROM ubuntu:18.04
MAINTAINER mr_Prince_X
RUN apt update && \
apt install -y iputils-ping iproute2
RUN apt install -y nginx
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
