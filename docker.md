# Docker & Docker Compose: Essential Commands

## Docker

### Build

Build Docker images from a Dockerfile and a "context":

```sh
docker build
```

### Images

Show all top level images, their repository and tags, and their size:

```sh
docker images
```

Remove one or more images:

```sh
docker rmi <image-id> 
```

Remove all images:

```sh
docker rmi $(docker images -q) 
```

### Containers

List all running containers:

```sh
docker ps
```

List all containers stopped, running:

```sh
docker ps -a
```

Stop the container which is running:

```sh
docker stop <container-id>
```

Stops all running containers:

```sh
docker stop $(docker ps -a -q) 
```

Start the container which is stopped:

```sh
docker start <container-id>
```

Restart the container which is running:

```sh
docker restart <container-id>
```

List port mappings of a specific container:

```sh
docker port <container-id>
```

Remove one or more stopped containers:

```sh
docker rm <container-id> 
```

Remove all stopped containers:

```sh
docker container prune  
```

```sh
docker rm $(docker ps -a -q) 
```

Remove the running container forcefully:

```sh
docker rm -f <container-id>
```

Update and stop a container that is in a crash-loop:

```sh
docker update –restart=no && docker stop 
```

Display the running processes of a container:

```sh
docker top <container-id>
```

### Exec

Connect to linux container and execute commands in container:

```sh
docker exec -it <container-id> /bin/bash
```

Bash shell with root if container is running in a different user context:

```sh
docker exec -itu <container-id> root /bin/bash
```

If bash is not available use `/bin/sh`:

```sh
docker exec -itu <container-id> /bin/sh
```

### Pull

Pull the image from docker hub repository:

```sh
docker pull <image-info>
```

### Hub

Logout from docker hub:

```sh
docker logout
```

Login to docker hub

```sh
docker login -u username -p password
```

### Stats

Display a live stream of container(s) resource usage statistics:

```sh
docker stats
```

### Version

Show the Docker version information:

```sh
docker version
```

## Docker Compose

WIP

## Resources

* https://docs.docker.com/engine/reference/commandline/docker/
* https://docs.docker.com/compose/reference/
* https://www.stacksimplify.com/aws-eks/docker-basics/docker-commands/
* https://codenotary.com/blog/extremely-useful-docker-commands