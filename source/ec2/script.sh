#!/bin/bash

#Date Created: 20th October 2023
#Author:Nana Akosua Konadu Owusu-Ansah


# this script will install nginx and some other config

#update system
sudo apt-get update
sudo apt-get upgrade 

#install nginx
sudo apt-get install nginx -y

echo -e '<h1>Congrats! You have installed Nginx</h1>
<h3>You have successfully configured a proxy server as well</h3>
<h4>Your configurations include a VPC, 3 subnets, route tables, security groups, target group, EC2, and a shell script</h4>


<h5>Great job!</h5>' > /var/www/html/index.html


#start nginx
sudo systemctl enable nginx
sudo systemctl start nginx

#create proxy server to listen on port 80
sudo tee /etc/nginx/sites-available/practice.conf <<-EOF
server {
  listen 80;

  location / {
    proxy_http_version 1.1;
    proxy_set_header Upgrade \$http_upgrade;
    proxy_set_header Connection 'upgrade';
    proxy_set_header Host \$host;
    proxy_cache_bypass http_upgrade;
    ProxyPass http://localhost:80/;
  }
}

ln -s /etc/nginx/sites-available/practice.conf /etc/nginx/sites-enabled/






