#!/usr/bin/env bash

# Prepare Fleetany Project
php -e artisan vendor:publish --provider=Kodeine\\Acl\\AclServiceProvider; \
php -e artisan vendor:publish --provider=Alientronics\\FleetanyWebGeofence\\FleetanyWebGeofenceServiceProvider; \
php -e artisan vendor:publish --provider=Alientronics\\FleetanyWebDriver\\FleetanyWebDriverServiceProvider; \
php -e artisan vendor:publish --provider=Alientronics\\FleetanyWebAttributes\\FleetanyWebAttributesServiceProvider; \
php -e artisan vendor:publish --provider=Alientronics\\FleetanyWebAdmin\\FleetanyWebAdminServiceProvider; \
php -e artisan vendor:publish --provider=Alientronics\\FleetanyWebReports\\FleetanyWebReportsServiceProvider; \
php -e artisan clear-compiled; \
php -e artisan optimize; 

chmod 777 -R storage

source /etc/apache2/envvars
exec apache2 -D FOREGROUND