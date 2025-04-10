# Linux

⬅️ [README](README.md)

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

## List all installed packages

```shell
apt list --installed
```

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

## Install deb Files

```shell
sudo dpkg -i file.deb
```

## Checksums

```shell
sha256sum file.tar.gz > sha256sums.txt
```

```shell
sha512sum file.tar.gz > sha512sums.txt
```

## Citrix

### Pre-requisite check

```shell
/opt/Citrix/ICAClient/util/workspacecheck.sh
```

## Tree

```shell
tree -A -L 2 -F --dirsfirst
```

```
  -A            Print ANSI lines graphic indentation lines.
  -L level      Descend only level directories deep.
  -F            Appends '/', '=', '*', '@', '|' or '>' as per ls -F.
  --dirsfirst   List directories before files (-U disables).
```

```
./
├── app/
│   ├── ...
│   └── ...
├── docker/
│   ├── ...
│   └── ...
├── scripts/
│   ├── ...
│   └── ...
├── aliases
├── LICENSE
├── Makefile
└── README.md
```

## History

```
history 10
history | grep git | tail -n100
```

## Resources

- https://kinsta.com/blog/linux-commands/

⬅️ [README](README.md)