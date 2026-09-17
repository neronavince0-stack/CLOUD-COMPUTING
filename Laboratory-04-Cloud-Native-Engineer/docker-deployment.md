## Checkpoint 5 - Container Lifecycle

### 1. List Running Containers

```bash
docker ps
```

This command lists all currently running Docker containers.

### 2. Stop the Running Container

```bash
docker stop nginx-server
```

This command stops the running Nginx container named `nginx-server`.

### 3. Verify It Is Stopped

```bash
docker ps -a
```

This command lists all containers, including stopped containers, allowing the stopped Nginx container to be verified.

### 4. Remove the Container Completely

```bash
docker rm nginx-server
```

This command permanently removes the stopped `nginx-server` container.

### Screenshot

![Container Lifecycle](screenshots/container-lifecycle.png)
