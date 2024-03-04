# Bash

## Insert line in ahead

```shell
line="const msg='Hello!'"
sed  -i "1i ${line}" ./index.ts
```

## Print working directory

```shell
pwd
```

### Stream the contents of a text file

```shell
tail -f filename
```

## Copy

### File

```shell
cp oldFile.txt newFile.txt
```

### Directories

```shell
cp -r oldFolder/ newFolder/
```

## Remove

### File

```shell
rm file.txt
```

### Directories

```shell
rm -r folder/
```

With force:

```shell
rm -rf folder/
```

## Move

### File

```shell
mv sourceFile.txt destinationFolder/
```

### Directories

```shell
mv sourceFolder/ destinationFolder/
```

## Create

### File

```shell
touch file.txt
```

Change modification date to the current time:

```shell
touch -m file.txt
```

### Directories

```shell
mkdir folder/
```

```shell
mkdir -p folder/subdir/
```

## View file

```shell
cat file.text
```

## Permissions

```shell
chmod +x script
./script
```

Basic permissions:

- `r`: read
- `w`: write
- `x`: execute

## Unzip (.zip)

```shell
unzip file.zip
```

## Gunzip (.gz)

```shell
gunzip file.sql.gz
```

## Print user

```shell
echo "$USER"
```

## Test network

```shell
ping google.com
```

## Word count

```shell
wc file.text
```

```
37 207 1000 file.txt
```

- `37`: lines
- `207`: words
- `1000`: byte-size