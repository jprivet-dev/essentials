# PHP

## Dates & Time

### DateTime

```php
$d1 = new DateTime('2008-08-03 14:52:10');
$d2 = new DateTime('2008-01-03 11:11:10');

var_dump(
    $d1 == $d2,  
    $d1 != $d2, 
    $d1 === $d2, 
    $d1 !== $d2,
    $d1 > $d2,  
    $d1 < $d2,
);
```

```
bool(false)
bool(true)
bool(false)
bool(true)
bool(true)
bool(false)
```

```php
<?php

$d1 = new DateTime('2008-08-03 14:52:10');
$d2 = new DateTime('2008-08-03 14:52:10');

var_dump(
    $d1 == $d2, 
    $d1 != $d2,  
    $d1 === $d2, 
    $d1 !== $d2,
    $d1 > $d2,   
    $d1 < $d2,
);
```

```
bool(true)
bool(false)
bool(false)
bool(true)
bool(false)
bool(false)
```

## Classes & Objets

### get_class

```php
$myClass = get_class(new class() {
	const FOO = 'foo';
});

var_dump($myClass::FOO);
```

```
string(3) "foo"
```

## Arrays

### Keys & Values

#### array_combine

```php
$keys = ["sky", "grass", "orange"];
$values = ["blue", "green", "orange"];

var_dump(array_combine($keys, $values));
```

```
array(3) {
  ["sky"]    => string(4) "blue"
  ["grass"]  => string(5) "green"
  ["orange"] => string(6) "orange"
}
```

#### array_keys

```php
$array = [
    "sky" => "blue",
    "grass" => "green",
    "orange" => "orange",
];

var_dump(array_keys($array));
```

```
array(3) {
  [0] => string(3) "sky"
  [1] => string(5) "grass"
  [2] => string(6) "orange"
}
```

#### array_values

```php
$array = [
    "sky" => "blue",
    "grass" => "green",
    "orange" => "orange",
];

var_dump(array_values($array));
```

```
array(3) {
  [0] => string(4) "blue"
  [1] => string(5) "green"
  [2] => string(6) "orange"
}
```

### Search

#### in_array

```php
$array = ["Apples", "Bananas", "Mangoes", 100, "200"];

var_dump(
    in_array(100, $array),
    in_array(200, $array),
    in_array("100", $array),
    in_array("200", $array),
    in_array("Bananas", $array), 
    in_array("Pineapples", $array), 
    in_array("bananas", $array), 
    in_array("pineapples", $array),
);
```

```
bool(true)
bool(true)
bool(true)
bool(true)
bool(true)
bool(false)
bool(false)
bool(false)
```

```php
$array = ["Apples", "Bananas", "Mangoes", 100, "200"];

var_dump(
    in_array(100, $array, true), 
    in_array(200, $array, true), 
    in_array("100", $array, true), 
    in_array("200", $array, true), 
    in_array("Bananas", $array, true), 
    in_array("Pineapples", $array, true), 
    in_array("bananas", $array, true), 
    in_array("pineapples", $array, true),
);
```

```
bool(true)
bool(false)
bool(false)
bool(true)
bool(true)
bool(false)
bool(false)
bool(false)
```

#### array_search

```php
$array = ["Apples", "Bananas", "Mangoes", 100, "200"];

var_dump(
    array_search(100, $array), 
    array_search(200, $array), 
    array_search("100", $array), 
    array_search("200", $array), 
    array_search("Bananas", $array), 
    array_search("Pineapples", $array), 
    array_search("bananas", $array), 
    array_search("pineapples", $array),
);
```

```
int(3)
int(4)
int(3)
int(4)
int(1)
bool(false)
bool(false)
bool(false)
```

```php
$array = ["Apples", "Bananas", "Mangoes", 100, "200"];

var_dump(
    array_search(100, $array, true), 
    array_search(200, $array, true), 
    array_search("100", $array, true), 
    array_search("200", $array, true), 
    array_search("Bananas", $array, true), 
    array_search("Pineapples", $array, true), 
    array_search("bananas", $array, true), 
    array_search("pineapples", $array, true),
);
```

```
int(3)
bool(false)
bool(false)
int(4)
int(1)
bool(false)
bool(false)
bool(false)
```

### Extract & Compact

#### list

```php
$array = ["coffee", "brown", "caffeine"];
list($drink, $color, $power) = $array;

var_dump(
    $drink,
    $color,
    $power,
);
```

```
string(6) "coffee"
string(5) "brown"
string(8) "caffeine"
```

```php
list($a, list($b, $c)) = array(1, array(2, 3));

var_dump(
    $a,
    $b,
    $c,
);
```

```
int(1)
int(2)
int(3)
```

```php
list(1 => $second, 3 => $fourth) = [1, 2, 3, 4];

var_dump(
    $second,
    $fourth,
);
```

```
int(2)
int(4)
```

```php
list($hello, $wild, $world) = explode("|", "hello|wild|world");

var_dump(
    $hello,
    $wild,
    $world,
);
```

```
string(5) "hello"
string(4) "wild"
string(5) "world"
```

#### extract

```php
$array = [
    "clothes" => "t-shirt",
    "size"    => "medium",
    "color"   => "blue",
];

extract($array);

var_dump(
    $clothes,
    $size,
    $color,
);
```

```
string(7) "t-shirt"
string(6) "medium"
string(4) "blue"
```

#### compact

```php
$clothes = "t-shirt";
$size = "medium";
$color = "blue";

$array = compact("clothes", "size", "color");

var_dump($array);
```

```
array(3) {
  ["clothes"] => string(7) "t-shirt"
  ["size"]    => string(6) "medium"
  ["color"]   => string(4) "blue"
}
```

### Filtering

#### array_filter

```php
$numbers = [20, -3, 50, -99, 55];

$positive = array_filter($numbers, function($n) {
    return $n > 0;
});

var_dump($positive);
```

```
array(3) {
  [0] => int(20)
  [2] => int(50)
  [4] => int(55)
}
```

```php
$numbers = [20, -3, 50, -99, 55];

$positive = array_filter($numbers, fn($n) => $n > 0);

var_dump($positive);
```

```
array(3) {
  [0] => int(20)
  [2] => int(50)
  [4] => int(55)
}
```

```php
// Remove 0, null, false, "0"
$array = [-1, 0, 1, null, true, false, "-1", "0", "1", "null", "true", "false"];
$notEmpty = array_filter($array);

var_dump($notEmpty);
```

```
array(8) {
  [0]  => int(-1)
  [2]  => int(1)
  [4]  => bool(true)
  [6]  => string(2) "-1"
  [8]  => string(1) "1"
  [9]  => string(4) "null"
  [10] => string(4) "true"
  [11] => string(5) "false"
}
```

## Resources

- https://code.tutsplus.com/working-with-php-arrays-in-the-right-way--cms-28606t

> Return to [README](README.md).
