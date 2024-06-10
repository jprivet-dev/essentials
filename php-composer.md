# PHP & Composer

> Return to [README](README.md).

## Install PHP (global)

```shell
sudo apt update
sudo apt install php php-curl
```

or

```shell
sudo apt update
sudo add-apt-repository ppa:ondrej/php

sudo apt update
sudo apt install php8.2 php8.2-{cli,bz2,curl,mbstring,intl,simplexml}
```

```shell
php --version
```

## Install Composer (global)

```shell
sudo apt install composer
```

```shell
composer --version
```

## Launch internal server

```shell
php -S localhost:3000 -t public
```

## Resources

- https://getcomposer.org/download/

> Return to [README](README.md).

