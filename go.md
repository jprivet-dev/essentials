# PHP: Essential Commands

## Install Linux

- Follow https://go.dev/doc/install
- Download from https://go.dev/dl/

```shell
cd download/directory
tar -C /usr/local -xzf go1.21.4.linux-amd64.tar.gz
```

```shell
cd
vim .profile
```

Copy/past `export PATH=$PATH:/usr/local/go/bin` and save (`Ctrl+C` & `:x`).

```shell
source .profile
go version
```

```shell
cd 
mkdir -p go/src
vim .bash_profile
```

Copy/past `export GOPATH=$HOME/go` and save (`Ctrl+C` & `:x`).

```shell
source .bash_profile
echo $GOPTAH
```

## Run / Build

```shell
go run main.go
Hello!
```

```shell
go build main.go
./main
Hello!
```

## Resources

- https://go.dev/