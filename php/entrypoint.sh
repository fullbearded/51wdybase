#!/bin/bash

if [ "$1" = "php5-fpm" ]; then
	exec "$1"
fi
exec "$@"
exit 0
