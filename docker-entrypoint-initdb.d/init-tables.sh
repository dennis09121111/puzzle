#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username dbusr --dbname webserver <<-EOSQL
        CREATE TABLE  weblogs (
               day      date,
               status   varchar(3),
               source   varchar(7)
               );
EOSQL
