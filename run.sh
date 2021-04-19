#!/bin/bash
echo "STARTING CONTAINER ... 🐳"
echo "INIT FILE" > /var/www/html/init.html
apachectl -DFOREGROUND