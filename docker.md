# Docker & Docker Compose: Essential Commands

## Docker

### Build

Build Docker images from a Dockerfile and a "context":

```shell
docker build
```

### Images

Show all top level images, their repository and tags, and their size:

```shell
docker images
```

Remove one or more images:

```shell
docker rmi <image-id> 
```

Remove all images:

```shell
docker rmi $(docker images -q) 
```

| Option        | Short | Description         |
|---------------|-------|---------------------|
| `--quiet`     | `-q`  | Only show image IDs |

### Containers

List all running containers:

```shell
docker ps
```

List all containers stopped, running:

```shell
docker ps -a
```

| Option  | Short | Description                                      |
|---------|-------|--------------------------------------------------|
| `--all` | `-a`  | Show all containers (default shows just running) |

Stop the container which is running:

```shell
docker stop <container-id>
```

Stops all running containers:

```shell
docker stop $(docker ps -a -q) 
```

| Option    | Short | Description                                      |
|-----------|-------|--------------------------------------------------|
| `--all`   | `-a`  | Show all containers (default shows just running) |
| `--quiet` | `-q`  | Only show image IDs                              |

Start the container which is stopped:

```shell
docker start <container-id>
```

Restart the container which is running:

```shell
docker restart <container-id>
```

List port mappings of a specific container:

```shell
docker port <container-id>
```

Remove one or more stopped containers:

```shell
docker rm <container-id> 
```

Remove all stopped containers:

```shell
docker container prune  
```

```shell
docker rm $(docker ps -a -q) 
```

| Option    | Short | Description                                      |
|-----------|-------|--------------------------------------------------|
| `--all`   | `-a`  | Show all containers (default shows just running) |
| `--quiet` | `-q`  | Only show image IDs                              |

Remove the running container forcefully:

```shell
docker rm -f <container-id>
```

Update and stop a container that is in a crash-loop:

```shell
docker update –-restart=no && docker stop 
```

Display the running processes of a container:

```shell
docker top <container-id>
```

### Exec

Connect to linux container and execute commands in container:

```shell
docker exec -it <container-id> /bin/bash
```
| Option          | Short | Description                          |
|-----------------|-------|--------------------------------------|
| `--interactive` |  `-i` | Keep STDIN open even if not attached |
| `--tty`         |  `-t` | Allocate a pseudo-TTY                |

Bash shell with root if container is running in a different user context:

```shell
docker exec -itu <container-id> root /bin/bash
```
| Option   | Short | Description                                           |
|----------|-------|-------------------------------------------------------|
| `--user` | `-u`  | Username or UID (format: <name\|uid>[:<group \|gid>]) |

If bash is not available use `/bin/sh`:

```shell
docker exec -itu <container-id> /bin/sh
```

### Run

Runs a command in a new container, pulling the image if needed and starting the container:

```shell
docker run --rm bash echo Hello!
```

| Option  | Short | Description                                      |
|---------|-------|--------------------------------------------------|
| `--rm`  |       | Automatically remove the container when it exits |

```shell
docker run -it --rm bash
```
| Option          | Short | Description                          |
|-----------------|-------|--------------------------------------|
| `--interactive` |  `-i` | Keep STDIN open even if not attached |
| `--tty`         |  `-t` | Allocate a pseudo-TTY                |

### Pull

Pull the image from docker hub repository:

```shell
docker pull <image-info>
```

### Hub

Logout from docker hub:

```shell
docker logout
```

Login to docker hub

```shell
docker login -u username -p password
```
| Option       | Short | Description |
|--------------|-------|-------------|
| `--user`     | `-u`  | Username    |
| `--password` | `-p`  | Password    |

### Stats

Display a live stream of container(s) resource usage statistics:

```shell
docker stats
```

### Version

Show the Docker version information:

```shell
docker version
```

## Docker Compose

WIP

## Resources

* https://docs.docker.com/engine/reference/commandline/docker/
* https://docs.docker.com/compose/reference/
* https://www.stacksimplify.com/aws-eks/docker-basics/docker-commands/
* https://codenotary.com/blog/extremely-useful-docker-commands