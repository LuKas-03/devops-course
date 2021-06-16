#!/bin/bash
echo NGINX
cp /app/nginx/espor-app.conf /etc/nginx/sites-available/espor-app.conf
ln -s /etc/nginx/sites-available/espor-app.conf /etc/nginx/sites-enabled
service nginx restart