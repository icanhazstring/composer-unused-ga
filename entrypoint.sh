#!/bin/sh -l

sh -c "composer global require icanhazstring/composer-unused && composer install --no-scripts --no-progress && sh -c composer unused"