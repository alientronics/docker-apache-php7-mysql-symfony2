#!/usr/bin/env bash

# Prepare Fleetany Project
chmod 777 -R storage/
chmod 777 -R bootstrap/
php artisan migrate:refresh --force
php artisan db:seed

source /etc/apache2/envvars
exec apache2 -D FOREGROUND