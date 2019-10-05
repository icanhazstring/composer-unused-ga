#!/bin/sh -l

sh -c "composer global require icanhazstring/composer-unused"
sh -c "composer install --no-scripts --no-progress"
sh -c "composer unused"