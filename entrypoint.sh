#!/bin/sh -l

sh -c "composer install --no-scripts --no-progress && composer unused $*"