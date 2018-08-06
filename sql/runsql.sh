#!/usr/bin/env bash

# CREATE THE DATABASE
/home/db2inst1/sqllib/bin/db2 create database docker

# Connect to the database
/home/db2inst1/sqllib/bin/db2 connect to DOCKER

# Run all the sql files
echo "Looping thru sqlserver"
for file in ~/sql/*.sql;
do
  echo "$file"
  /home/db2inst1/sqllib/bin/db2 -vtf "$file"
done  >  ~/sql/results.out

cat ~/sql/results.out