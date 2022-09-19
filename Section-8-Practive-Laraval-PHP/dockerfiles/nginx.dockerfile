FROM nginx:stable-alpine

WORKDIR /etc/nginx/conf.d

# Copy nginx conf and src code to container.
COPY nginx/nginx.conf .

# Change name.
RUN mv nginx.conf default.conf

WORKDIR /var/www/html

COPY src .