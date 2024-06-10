# PHP

[onlinephp.io](https://onlinephp.io?s=s7EvyCjg5VJJMVSwVchLLVdwSSxJDcnMTdVQNzIwsNAFIWMFQxMrUyMrQwN1TWuQWiMcag3Bag2tQAiitiyxKD6lNLdAA2yBrQJQr6a1goK-vkJaYk5xKpoCRWQFJUWl6PK2cBNwGoCkAIsBdjDzccjbIMtDLaBW4GCqxR04WJymSCjwqBs42AzADB0A&v=8.3.7)

```php
<?php
$d1 = new DateTime('2008-08-03 14:52:10');
$d2 = new DateTime('2008-01-03 11:11:10');
var_dump($d1 == $d2);  // false
var_dump($d1 != $d2);  // true
var_dump($d1 === $d2); // false
var_dump($d1 !== $d2); // true
var_dump($d1 > $d2);   // true
var_dump($d1 < $d2);   // false

$d1 = new DateTime('2008-08-03 14:52:10');
$d2 = new DateTime('2008-08-03 14:52:10');
var_dump($d1 == $d2);  // true
var_dump($d1 != $d2);  // false
var_dump($d1 === $d2); // false
var_dump($d1 !== $d2); // true
var_dump($d1 > $d2);   // false
var_dump($d1 < $d2);   // false
```

[onlinephp.io](https://onlinephp.io?s=s7EvyCjg5VLJrXTOSSwuVrBVSE8tiU8GsTXyUssVICxNhWpeLs7k_LziEgU3f3-gKvW0_Hx1a16uWk0gwctVllgUn1KaW6ABM8jKCqhO01pBX18BqBIA&v=8.3.7)

```php
<?php
$myClass = get_class(new class() {
	const FOO = 'foo';
});

var_dump($myClass::FOO); // foo
```
