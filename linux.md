# Linux: Essentials Commands

<!-- TOC -->
* [Linux: Essentials Commands](#linux-essentials-commands)
  * [Print version of Ubuntu](#print-version-of-ubuntu)
  * [Insert line in ahead](#insert-line-in-ahead)
  * [Update](#update)
  * [Print working directory](#print-working-directory)
  * [Copy](#copy)
    * [File](#file)
    * [Directories](#directories)
  * [Remove](#remove)
    * [File](#file-1)
    * [Directories](#directories-1)
  * [Move](#move)
    * [File](#file-2)
    * [Directories](#directories-2)
  * [Create](#create)
    * [File](#file-3)
    * [Directories](#directories-3)
  * [View file](#view-file)
  * [Manual page of a command](#manual-page-of-a-command)
  * [Process](#process)
    * [Print](#print)
    * [Kill](#kill)
  * [Permissions](#permissions)
  * [Unzip](#unzip)
  * [Print user](#print-user)
  * [Test network](#test-network)
  * [Word count](#word-count)
  * [Resources](#resources)
<!-- TOC -->

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

## Permissions

```shell
chmod +x script
./script
```

Basic permissions:

- `r`: read
- `w`: write
- `x`: execute

## Unzip

```shell
unzip images.zip
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

## Resources

- https://kinsta.com/blog/linux-commands/