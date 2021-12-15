#!/bin/bash
set -e
echo 'Importing data into db $POSTGRES_DB'
psql --username $POSTGRES_USER -d $POSTGRES_DB < /docker-entrypoint-initdb.d/data/01_pagila-schema.sql
echo 'Importing schema finished successfully'
psql --username $POSTGRES_USER -d $POSTGRES_DB < /docker-entrypoint-initdb.d/data/02_pagila-data.sql
echo 'Importing data finished successfully'

echo 'Data import finished successfully'