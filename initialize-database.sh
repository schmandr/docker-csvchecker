#!/usr/bin/env bash

sleep 3 && \
/opt/wait-for-it.sh $PGHOST:5432 -- psql -f setup.sql && \
exec "$@"
