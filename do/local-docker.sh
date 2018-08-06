#!/usr/bin/env bash

# Delete the db2 image
docker-compose rm -f db2
docker-compose up --build --force-recreate

#docker run -it -p 50000:50000 -e DB2INST1_PASSWORD=db2inst1-pwd -e LICENSE=accept ibmcom/db2express-c:latest bash