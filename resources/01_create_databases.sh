#!/bin/bash

# Create databases
mysql -u root -pmysqlpassword -e "create database ami_filestore_development"
mysql -u root -pmysqlpassword -e "create database ami_filestore_test"
mysql -u root -pmysqlpassword -e "create database image_filestore_development"
mysql -u root -pmysqlpassword -e "create database image_filestore_test"

# Load Schemas
mysql -u root -pmysqlpassword ami_filestore_development < /docker-entrypoint-initdb.d/ami_filestore_schema.sql.norun
mysql -u root -pmysqlpassword ami_filestore_test < /docker-entrypoint-initdb.d/ami_filestore_schema.sql.norun

mysql -u root -pmysqlpassword image_filestore_development < /docker-entrypoint-initdb.d/image_filestore_schema.sql.norun
mysql -u root -pmysqlpassword image_filestore_test < /docker-entrypoint-initdb.d/image_filestore_schema.sql.norun
