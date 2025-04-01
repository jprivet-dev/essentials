# Bash

> ⬅️ [README](README.md)

## Insert line in ahead

```shell
line="const msg='Hello!'"
sed  -i "1i ${line}" ./index.ts
```

## Insert line in the end

```shell
echo "New line" >> file.txt
```

## Replace in file

```shell
sed -i 's/APP_ENV=prod/APP_ENV=dev/g' .env"
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

```shell
cp -r origin/. target
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
sudo chmod +x script
./script
```

Get the chmod numerical value for a file:

```shell
stat --format '%a' <file>
```

Basic permissions:

- `r`: read
- `w`: write
- `x`: execute

```shell
sudo cho²wn -R $(id -u):$(id -g) .
```

## Zip

```shell
zip -r myarchive.zip mydir -x mydir/excludedDir1\*  mydir/excludedDir2\*
```

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
id -u
id -g
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

## Now

```shell
now=$(date +"%Y%m%d-%H%M%S")
day=$(date +"%Y-%m-%d")
```

## Show folder size

```shell
du -hs myfolder
du -h --max-depth=1 myfolder
```

## Path

```shell
pwd
echo ${PWD}
echo ${PWD##*/}
```

> ⬅️ [README](README.md)
