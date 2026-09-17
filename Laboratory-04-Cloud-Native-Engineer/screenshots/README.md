# Laboratory 04 - Cloud-Native Engineer

## Mission Overview

This laboratory activity focuses on cloud-native engineering and containerization. In this activity, I learned the differences between Virtual Machines and Containers and used Docker in the KillerCoda Playground. I deployed an Nginx web server inside a Docker container and practiced managing its container lifecycle.

## Objectives

* Differentiate Virtual Machines from Containers.
* Access a Docker-enabled cloud environment using KillerCoda.
* Execute basic Docker CLI commands.
* Pull and run an Nginx container.
* Map a host port to a container port.
* Test a containerized web server using `curl`.
* Stop and remove a Docker container.
* Document Docker operations using Markdown.

## Docker Commands Executed

### Checkpoint 3 - Verify Docker

```bash
docker --version
```

This command checks the installed Docker version.

```bash
docker info
```

This command displays information about the Docker environment.

### Checkpoint 4 - Deploy Nginx

```bash
docker pull nginx
```

This command downloads the official Nginx image from Docker Hub.

```bash
docker run -d --name nginx-server -p 8080:80 nginx
```

This command creates and runs the Nginx container in detached mode and maps port 8080 on the host to port 80 inside the container.

```bash
docker ps
```

This command lists the currently running Docker containers.

```bash
curl http://localhost:8080
```

This command sends an HTTP request to the Nginx web server and verifies that it is working.

### Checkpoint 5 - Container Lifecycle

```bash
docker ps
```

This command lists the running containers.

```bash
docker stop nginx-server
```

This command stops the Nginx container.

```bash
docker ps
```

This command verifies that the Nginx container is no longer running.

```bash
docker ps -a
```

This command lists all containers, including stopped containers.

```bash
docker rm nginx-server
```

This command removes the stopped Nginx container completely.

```bash
docker ps -a
```

This command verifies that the Nginx container has been removed.

## Skills Learned

I learned how to use basic Docker commands to manage containerized applications. I learned how to pull a Docker image, create and run a container, map network ports, and test a web server. I also learned how to stop, verify, and remove containers. In addition, I improved my technical documentation and GitHub portfolio management skills.

## Challenges Encountered

One challenge I encountered was understanding the difference between a Virtual Machine and a Container. I also needed to become familiar with Docker commands and understand how port mapping works using `8080:80`. Another challenge was understanding the difference between stopping and removing a container. By following the commands step-by-step and observing the terminal output, I was able to understand the Docker container lifecycle better.

