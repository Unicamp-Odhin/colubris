#!/bin/bash

git stash
sudo mkdir -p /var/www/html/colubris

cd docs/
. env/bin/activate
mkdocs build

cd ../

sudo rm -rf /var/www/html/colubris/*

sudo cp -r public/* /var/www/html/colubris