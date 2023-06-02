#!/usr/bin/env bash

/opt/wait-for-it.sh db:5432 -- psql -f setup.sql && \
exec "$@"
