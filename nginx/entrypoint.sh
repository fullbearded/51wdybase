#!/bin/bash

if [ "$1" = "nginx" ]; then
	exec "$1"
fi
exec "$@"
exit 0
