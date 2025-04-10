### Serializer

⬅️ [Symfony](../symfony.md)

#### Deserialize (decode + denormalize)

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
