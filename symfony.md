# Symfony

> Return to [README](README.md).

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

### Serializer

#### decode / denormalize

```php
class BookController {
    public function books(SerializerInterface $serializer) {
        $booksJson = file_get_contents('https//my.books.com/api');
        $booksArray = $serializer->decode($booksJson, 'json');
        $books = $serializer->denormalize($booksArray, 'App\Entity\Book[]');
        
        return $this->render('books/index.html.twig', [
            'books' => $books
        ]);
    }
}
```

#### deserialize

> deserialize = decode + denormalize

```php
class BookController {
    public function books(SerializerInterface $serializer) {
        $booksJson = file_get_contents('https//my.books.com/api');
        $books = $serializer->deserialize($booksJson, 'App\Entity\Book[]', 'json');
        
        return $this->render('books/index.html.twig', [
            'books' => $books
        ]);
    }
}
```

## Resources

- TODO

> Return to [README](README.md).
