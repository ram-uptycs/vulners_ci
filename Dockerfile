#Pull base image
FROM debian:latest

# Install nginx and adjust nginx config to stay in foreground
RUN apt-get update && apt-get install --no-install-recommends -y nginx; \
 echo "daemon off;" >> /etc/nginx/nginx.conf
 
# Start nginx
/usr/sbin/nginx
