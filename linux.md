# Linux: Essentials Commands

## Forcing the X server to close connections to clients

```shell
xkill
```

... and click on a window.

## Print version of Ubuntu

```shell
cat /etc/issue
```

## Insert line in ahead

```shell
line="const msg='Hello!'"
sed  -i "1i ${line}" ./index.ts
```

## Update

```shell
sudo apt clean
```

```shell
sudo apt autoremove
```
