# warriormachines/warriormachines-nginx

FROM nginx:1.9.10

MAINTAINER "Austin Maddox" <austin@maddoxbox.com>

WORKDIR /usr/share/nginx/html

# Override "user" and "sendfile" with custom nginx.conf.
COPY ./etc/nginx/nginx.conf /etc/nginx/nginx.conf

COPY ./etc/nginx/conf.d/ /etc/nginx/conf.d/
