# Linux

## Print version of Ubuntu

```shell
cat /etc/issue
```

## Update

```shell
sudo apt clean
```

```shell
sudo apt autoremove
```

## Manual page of a command

```shell
man mkdir
```

## Process

### Print

```shell
ps
```

### Kill

Forcing the X server to close connections to clients:

```shell
xkill
```

... and click on a window.

## netstat

```shell
netstat -tulpn | grep LISTEN
```

## VScode install

- Download from https://code.visualstudio.com/

```shell
sudo apt install
sudo dpkg -i code_1.xx.x-1234567890_amd64.deb
```

## Resources

- https://kinsta.com/blog/linux-commands/