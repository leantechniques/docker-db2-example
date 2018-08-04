#!/usr/bin/env bash


#/home/db2inst1/sqllib/bin/db2 create database docker

/home/db2inst1/sqllib/bin/db2 connect to DOCKER

for file in *.sql
do
#  echo "$file"
  /home/db2inst1/sqllib/bin/db2 -vtf "$file"
done # > results.out