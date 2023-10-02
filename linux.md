# Linux: Essentials Commands

## Print version of Ubuntu

```shell
cat /etc/issue
```

## Insert line in ahead

```shell
line="const msg='Hello!'"
sed  -i "1i ${line}" ./index.ts
```
