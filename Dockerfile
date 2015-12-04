# warriormachines/warriormachines-nginx

FROM nginx:1.9.7

MAINTAINER "Austin Maddox" <austin@maddoxbox.com>

WORKDIR /usr/share/nginx/html

# The `nginx.conf` that comes with NGiNX is sufficient so this is commented out.
#COPY ./etc/nginx/nginx.conf /etc/nginx/nginx.conf

# Change user to `www-data`.
RUN sed -i 's/^user.*/user www-data;/' /etc/nginx/nginx.conf

COPY ./etc/nginx/conf.d/ /etc/nginx/conf.d/
