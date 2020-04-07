#!/bin/bash

# Update nginx to match worker_processes to no. of cpu's
procs=$(cat /proc/cpuinfo |grep processor | wc -l)
sed -i -e "s/worker_processes  auto/worker_processes $procs/" /etc/nginx/nginx.conf

# Always chown webroot for better mounting
mkdir -p /usr/share/nginx/stats
chown -Rf www-data:www-data /usr/share/nginx


# Add Config Goaccess for Nginx Log
echo 'time-format %T
date-format %d/%b/%Y
log-format %h - %^ [%d:%t %^]  "%r" %s %b "%R" "%u" %T "%^"' >> /etc/goaccess.conf


# Start supervisord and services
/usr/local/bin/supervisord -c /etc/supervisor.conf
