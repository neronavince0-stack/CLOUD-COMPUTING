# Docker Compose Guide

## What Does the `services:` Block Do?

The `services:` block defines the containers that make up the application. In this project, it contains two services: `database` and `app`. The `database` service runs MariaDB while the `app` service runs the Nextcloud application.

## Database Service

The database service uses the `mariadb:10.6` Docker image.

```yaml
database:
  image: mariadb:10.6
```

It also uses environment variables to configure the MariaDB database:

```yaml
- MYSQL_ROOT_PASSWORD=cloudnova_root
- MYSQL_PASSWORD=cloudnova_pass
- MYSQL_DATABASE=nextcloud_db
- MYSQL_USER=nextcloud_user
```

These variables configure the root password, database password, database name, and database user.

## Nextcloud Application Service

The `app` service uses the official Nextcloud image:

```yaml
app:
  image: nextcloud
```

It also maps port 8080 on the host to port 80 inside the container:

```yaml
ports:
  - 8080:80
```

This allows users to access the Nextcloud web interface through port 8080.

## How Does Nextcloud Find the Database?

The Nextcloud application finds the MariaDB container using the `MYSQL_HOST` environment variable:

```yaml
- MYSQL_HOST=database
```

The value `database` matches the name of the database service in the Compose file. Docker Compose creates a network for the services, allowing the Nextcloud container to communicate with the database container using the service name.

## `docker run` vs `docker-compose up -d`

The `docker run` command is normally used to create and start an individual Docker container. When an application requires multiple containers, commands would have to be entered separately for each container.

`docker-compose up -d` reads the `docker-compose.yml` file and creates all the required services together. The `-d` option runs the containers in detached mode, allowing them to continue running in the background while the terminal remains available.

## Infrastructure as Code

The Docker Compose file acts as Infrastructure as Code because the infrastructure configuration is written in a reusable YAML file. Instead of manually configuring every container, an engineer can use the same configuration to recreate the environment consistently.

