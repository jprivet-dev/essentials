# Symfony

⬅️ [README](../README.md)

## Install Symfony CLI (Global)

```shell
curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.deb.sh' | sudo -E bash
```

```shell
sudo apt install symfony-cli
```

```shell
symfony -v
```

## New project (root)

> https://symfony.com/doc/current/setup.html

```shell
symfony new app --no-git
mv app/{.,}* .
rm -rf app
```

## Components

* [Serializer](component/serializer.md)

## Resources

- TODO

⬅️ [README](../README.md)