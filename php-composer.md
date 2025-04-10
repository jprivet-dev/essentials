# PHP & Composer

⬅️ [README](README.md)

## PHP

### Global installation

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

### Launch internal server

```shell
php -S localhost:3000 -t public
```

## Composer

### Global installation (Ubuntu)

> Update following commands with https://getcomposer.org/download/

- Download the installer to the current directory:

```shell
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
```

- Verify the installer SHA-384, which you can also cross-check here:

```shell
php -r "if (hash_file('sha384', 'composer-setup.php') === 'dac665fdc30fdd8ec78b38b9800061b4150413ff2e3b6f88543c636f7cd84f6db9189d43a81e5503cda447da73c7e5b6') { echo 'Installer verified'.PHP_EOL; } else { echo 'Installer corrupt'.PHP_EOL; unlink('composer-setup.php'); exit(1); }"
```

- Run the installer:

```shell
php composer-setup.php

All settings correct for using Composer
Downloading...

Composer (version 2.8.6) successfully installed to: /home/user/composer.phar
Use it: php composer.phar
```

If you get the following error...:

```shell
Unable to write keys.dev.pub to: /home/user/.composer
```

... then delete the `.composer` directory and run again the installer:

```shell
rm -rf ~/.composer
php composer-setup.php
```

- Remove the installer:

```shell
php -r "unlink('composer-setup.php');"
```

- Call `composer` from anywhere:

```shell
sudo mv composer.phar /usr/bin/composer
```

```shell
composer --version
Composer version 2.8.6
PHP version 8.2.16
```

## Deployer

### Global installation

```shell
composer global require deployer/deployer
```

Add Composer's global bin directory is in your `PATH`:

```shell
export PATH="~/.config/composer/vendor/bin:$PATH"
```

After adding this line, reload your shell configuration:

```shell
source ~/.bashrc
```

```shell
dep --version
Deployer 7.5.12
```

⬅️ [README](README.md)