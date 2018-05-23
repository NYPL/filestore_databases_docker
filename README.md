# Filestore Databases Docker

The source to build a Docker image, based off [the official mySQL Docker image](https://hub.docker.com/_/mysql/).
This creates 4 database, a 'test' and 'development' version of our still image, and ami filestore dbs.

**Connect as username / password: root / mysqlpassword**

Hey look, the username and password in plaintext - that means **this is for development only, not production use**. Use it locally if to test services that connect to this db.

## Database Names

* ami_filestore_development
* ami_filestore_test
* image_filestore_development
* image_filestore_test
