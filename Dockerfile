# warriormachines/warriormachines-nginx

FROM nginx:1.10

MAINTAINER "Austin Maddox" <austin@maddoxbox.com>

WORKDIR /usr/share/nginx/html

# Overwrite the default nginx.conf with a custom NGiNX configuration file.
COPY ./etc/nginx/nginx.conf /etc/nginx/nginx.conf

# Copy common configuration directives (included in one or more virtual servers) into the container.
COPY ./etc/nginx/common.conf /etc/nginx/common.conf

# Copy all the files in the `conf.d` directory into the container.
COPY ./etc/nginx/conf.d/ /etc/nginx/conf.d/
