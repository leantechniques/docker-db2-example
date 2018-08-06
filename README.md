# Running IBM DB2 on Docker (An Example)

## Overview
DB2 is typically used at large enterprises that is difficult to support ephemeral environments. This solution leverages
Docker to run a Docker container that will create the database with the database objects created.

## Requirements
 - Docker
 - Docker Compose
 
## Usage
This solution is based on the [`ibmcom/db2express-c`](https://hub.docker.com/r/ibmcom/db2express-c/) container.

To start the container, run `do/local-docker.sh` from the root of the project. When started the docker container
will run all the `.sql` scripts in the `/sql` directory. Feel free to add new files to that directory. ** Note: this
solution doesn't support ordering...but could be added if needed.

Once started you can connect using the port `50000` to you local machine.

