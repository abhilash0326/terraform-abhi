#!/bin/bash

sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo echo '<h1> this is abhilash <h1>' | sudo tee /var/www/html/index.html
sudo echo '<h1> this is abhilash <h1> <h2> version 1 <h2>' | sudo tee /var/www/html/app1/index.html
