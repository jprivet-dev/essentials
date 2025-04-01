# Docker & Docker Compose

> ⬅️ [README](README.md)

## Docker

### Images

#### List

Show all top level images, their repository and tags, and their size:

```shell
docker images
```

Show the history of an image:

```shell
docker history
```

#### Remove

Remove one or more images:

```shell
docker rmi IMAGE_ID 
```

Remove all images:

```shell
docker rmi $(docker images -q) 
```

| Option        | Short | Description         |
|---------------|-------|---------------------|
| `--quiet`     | `-q`  | Only show image IDs |

#### Build

Build Docker images from a Dockerfile and a "context":

```shell
docker build
```

```shell
docker build -t php_soap:7.0.31
```

### Containers

#### List

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

List port mappings of a specific container:

```shell
docker port CONTAINER_ID
```

#### Stop

Stop the container which is running:

```shell
docker stop CONTAINER_ID
```

Stops all running containers:


```shell
docker stop $(docker ps -a -q)
```

| Option    | Short | Description                                      |
|-----------|-------|--------------------------------------------------|
| `--all`   | `-a`  | Show all containers (default shows just running) |
| `--quiet` | `-q`  | Only show image IDs                              |

#### Start / Restart

Start the container which is stopped:

```shell
docker start CONTAINER_ID|NAME
```

Start the container in interactive mode:

```shell
docker start -ai CONTAINER_ID|NAME
```

| Option          | Short | Description                              |
|-----------------|-------|------------------------------------------|
| `--attach`      | `-a`  | Attach STDOUT/STDERR and forward signals |
| `--interactive` | `-i`  | Attach container's STDIN                 |

Restart the container which is running:

```shell
docker restart CONTAINER_ID|NAME
```

#### Remove

Remove one or more stopped containers:

```shell
docker rm CONTAINER_ID|NAME
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
docker rm -f CONTAINER_ID|NAME
```

#### Various

Update and stop a container that is in a crash-loop:

```shell
docker update –-restart=no && docker stop 
```

Display the running processes of a container:

```shell
docker top CONTAINER_ID|NAME
```

### Exec

Connect to linux container and execute commands in container:

```shell
docker exec -it CONTAINER_ID|NAME /bin/bash
```
| Option          | Short | Description                          |
|-----------------|-------|--------------------------------------|
| `--interactive` |  `-i` | Keep STDIN open even if not attached |
| `--tty`         |  `-t` | Allocate a pseudo-TTY                |

Bash shell with root if container is running in a different user context:

```shell
docker exec -itu CONTAINER_ID|NAME root /bin/bash
```
| Option   | Short | Description                                           |
|----------|-------|-------------------------------------------------------|
| `--user` | `-u`  | Username or UID (format: <name\|uid>[:<group \|gid>]) |

If bash is not available use `/bin/sh`:

```shell
docker exec -itu CONTAINER_ID|NAME /bin/sh
```

### Run

#### Run a command

Run a command in a new container, pulling the image if needed and starting the container:

```shell
docker run --rm bash echo Hello!
```

| Option  | Short | Description                                      |
|---------|-------|--------------------------------------------------|
| `--rm`  |       | Automatically remove the container when it exits |

#### Run in interactive mode

Start a container in interactive mode:

```shell
docker run -it --rm bash
```

| Option          | Short | Description                          |
|-----------------|-------|--------------------------------------|
| `--interactive` |  `-i` | Keep STDIN open even if not attached |
| `--tty`         |  `-t` | Allocate a pseudo-TTY                |

#### Run and map a port (with [nginx](https://hub.docker.com/_/nginx) for example)

1 - Start a container with a port (in the terminal 1):

```shell
docker run ---rm -p 8080:80 nginx
```

| Option        | Short | Description                               |
|---------------|-------|-------------------------------------------|
| `--publish`   | `-p`  | Publish a container's port(s) to the host |

2 - Find the port (in the terminal 2):

```shell
docker ps
```

```
CONTAINER ID   IMAGE     COMMAND                  CREATED         STATUS         PORTS                                   NAMES
abcdef123456   nginx     "/docker-entrypoint.…"   1 minutes ago   Up 1 minutes   0.0.0.0:8080->80/tcp, :::8080->80/tcp   container_name
```

3 - End go on http://0.0.0.0:8080/ (in this case).

4 - You can also inspect the container to find the `HostIp`:

```shell
docker inspect container_name
```

```
...
        "HostConfig": {
            ...
            "Ports": {
                "80/tcp": [
                    {
                        "HostIp": "0.0.0.0",
                        "HostPort": "8080"
                    },
                    {
                        "HostIp": "::",
                        "HostPort": "8080"
                    }
                ]
            },
            ...
        },
 ...
```

### Network

#### Create a network between two containers

##### In the terminal 1

Clone a bridge:

```shell
docker network create --driver=bridge bridge_clone
```

List the networks:

```shell
docker network list
```

```
NETWORK ID     NAME            DRIVER    SCOPE
b0e195e4bcc2   bridge_clone    bridge    local
```

Run the container 1 (with [bash](https://hub.docker.com/_/bash) for example):

```shell
docker run -it --rm --network=bridge_clone --name=srv1 bash
```

##### In the terminal 2

Run the container 2 (with [bash](https://hub.docker.com/_/bash) for example):

```shell
docker run -it --rm --network=bridge_clone --name=srv2 bash
```

##### In the terminal 1

Yon can ping the `srv2`:

```shell
bash-5.2# ping srv2
PING srv2 (172.19.0.3): 56 data bytes
64 bytes from 172.19.0.3: seq=0 ttl=64 time=0.149 ms
```

##### In the terminal 2

Yon can ping the `srv1`:

```shell
bash-5.2# ping srv2
PING srv2 (172.19.0.3): 56 data bytes
64 bytes from 172.19.0.3: seq=0 ttl=64 time=0.149 ms
```

#### Remove a network

List the networks:

```shell
docker network list
```

```
NETWORK ID     NAME            DRIVER    SCOPE
b0e195e4bcc2   bridge_clone    bridge    local
```

Remove a network:

```shell
docker network rm bridge_clone
```

### Volume

#### Map a volume (with [bash](https://hub.docker.com/_/bash) for example)

1 - Create a new file on your host:

```shell
echo Hello! > my_file
cat my_file
Hello!
```

2 - Start a container with a volume:

```shell
docker run -it --rm -v $(pwd)/my_file:/hello bash
```

3 - In the container, you can read `/hello`:

```shell
cat /hello
Hello!
```

```shell
echo Bonjour >> /hello
cat /hello
Hello!
Bonjour
```

4 - On the host, you have also the last modification:

```shell
cat /my_file
Hello!
Bonjour
```

#### Manage a volume (with [bash](https://hub.docker.com/_/bash) for example)

1 - Create a volume:

```shell
docker volume create my_volume
```

```shell
docker volume ls
```

2 - Start a container with the volume my_volume

```shell
docker run -it --rm -v my_volume:/src bash
```

3 - Create my file in the container:

```shell
bash-5.2# echo Hello! > /src/my_file
bash-5.2# cat src/my_file 
```

4 - Inspect the volume:

```shell
docker volume inspect my_volume
```

``` 
[
      {
        "CreatedAt": "2023-11-10T15:57:42+01:00",
        "Driver": "local",
        "Labels": null,
        "Mountpoint": "/var/lib/docker/volumes/my_volume/_data",
        "Name": "my_volume",
        "Options": null,
        "Scope": "local"
    }
]
```

### Pull

Pull the image from docker hub repository:

```shell
docker pull IMAGE_INFO
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

### Create and start containers

```shell
docker compose up
```

Run containers in the background:

```shell
docker compose up -d
```

| Option        | Short | Description                                     |
|---------------|-------|-------------------------------------------------|
| `--detach`    | `-d`  | Detached mode: Run containers in the background |

### Stop services

```shell
docker compose stop
```

### Start services

```shell
docker compose start
```

### Stop and remove containers, networks

```shell
docker compose down
```

Remove also volumes:

```shell
docker compose down -v
```

| Option         | Short | Description                                                                                                              |
|----------------|-------|--------------------------------------------------------------------------------------------------------------------------|
| `--volumes`    | `-v`  | Remove named volumes declared in the "volumes" section of the Compose file\<br/>and anonymous volumes attached to containers. |

### Remove image

```shell
docker compose rm
```

## Others

### Error: `listen tcp4 0.0.0.0:80: bind: address already in use`

See the network statistics:

```shell
sudo netstat -pna | grep :80
```

```
tcp6       0      0 :::80        :::*        LISTEN        1487/apache2
```

Stop Apache server:

```shell
sudo service apache2 stop
```

Start Apache server:

```shell
sudo service apache2 start
```

## Group

```shell
sudo usermod -aG docker $USER
sudo reboot
```

## Resources

* https://docs.docker.com/engine/reference/commandline/docker/
* https://docs.docker.com/compose/reference/
* https://www.stacksimplify.com/aws-eks/docker-basics/docker-commands/
* https://codenotary.com/blog/extremely-useful-docker-commands

> ⬅️ [README](README.md)