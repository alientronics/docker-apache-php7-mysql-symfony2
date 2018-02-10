#!/usr/bin/env bash

# Prepare Fleetany Project
chmod 777 -R storage/
chmod 777 -R bootstrap/

source /etc/apache2/envvars
exec apache2 -D FOREGROUND