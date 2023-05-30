#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE USER $RATING_DB_USER WITH PASSWORD '$RATING_DB_PASSWORD';
    CREATE DATABASE $RATING_DB_NAME;
    GRANT ALL PRIVILEGES ON DATABASE $RATING_DB_NAME TO $RATING_DB_USER;
    ALTER DATABASE $RATING_DB_NAME SET TIMEZONE='Europe/Amsterdam';
EOSQL