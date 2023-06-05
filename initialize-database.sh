#!/usr/bin/env bash

/opt/wait-for-it.sh $PGHOST:5432 -- psql -f setup.sql && \
exec "$@"
